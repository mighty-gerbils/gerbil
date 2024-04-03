(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-2[1]#_g21003_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21004_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21005_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21041_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21042_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21043_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21050_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21051_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21052_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21053_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21054_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21055_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21056_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21057_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21058_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21059_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-2[:0:]#lambda|
      (lambda (_%stx5367%_)
        (letrec ((_%simple-lambda?5370%_
                  (lambda (_%hd8776%_)
                    (gx#stx-andmap gx#identifier? _%hd8776%_)))
                 (_%opt-lambda?5372%_
                  (lambda (_%hd8628%_)
                    (let _%lp8631%_ ((_%rest8634%_ _%hd8628%_)
                                     (_%opt?8636%_ '#f))
                      (let* ((_%__stx1922519226%_ _%rest8634%_)
                             (_%g86398651%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1922519226%_))))
                        (let ((_%__kont1922819229%_
                               (lambda (_%L8683%_ _%L8685%_)
                                 (let* ((_%__stx1920119202%_ _%L8685%_)
                                        (_%g87018715%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1920119202%_))))
                                   (let ((_%__kont1920419205%_
                                          (lambda (_%L8753%_)
                                            (_%lp8631%_ _%L8683%_ '#t)))
                                         (_%__kont1920619207%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8685%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (not _%opt?8636%_))
                                                    (_%lp8631%_ _%L8683%_ '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((_%__match1922219223%_
                                            (lambda (_%e87068733%_
                                                     _%hd87058737%_
                                                     _%tl87048740%_
                                                     _%e87098743%_
                                                     _%hd87088747%_
                                                     _%tl87078750%_)
                                              (let ((_%L8753%_ _%hd87058737%_))
                                                (if (gx#identifier? _%L8753%_)
                                                    (_%__kont1920419205%_
                                                     _%L8753%_)
                                                    (_%__kont1920619207%_))))))
                                       (if (gx#stx-pair? _%__stx1920119202%_)
                                           (let ((_%e87068733%_
                                                  (gx#syntax-e
                                                   _%__stx1920119202%_)))
                                             (let ((_%tl87048740%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e87068733%_)))
                                                   (_%hd87058737%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e87068733%_))))
                                               (if (gx#stx-pair?
                                                    _%tl87048740%_)
                                                   (let ((_%e87098743%_
                                                          (gx#syntax-e
                                                           _%tl87048740%_)))
                                                     (let ((_%tl87078750%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e87098743%_)))
                                                           (_%hd87088747%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e87098743%_))))
                                                       (if (gx#stx-null?
                                                            _%tl87078750%_)
                                                           (_%__match1922219223%_
                                                            _%e87068733%_
                                                            _%hd87058737%_
                                                            _%tl87048740%_
                                                            _%e87098743%_
                                                            _%hd87088747%_
                                                            _%tl87078750%_)
                                                           (_%__kont1920619207%_))))
                                                   (_%__kont1920619207%_))))
                                           (_%__kont1920619207%_)))))))
                              (_%__kont1923019231%_
                               (lambda ()
                                 (if _%opt?8636%_
                                     (let ((_%$e8662%_
                                            (gx#stx-null? _%rest8634%_)))
                                       (if _%$e8662%_
                                           _%$e8662%_
                                           (gx#identifier? _%rest8634%_)))
                                     '#f))))
                          (if (gx#stx-pair? _%__stx1922519226%_)
                              (let ((_%e86458673%_
                                     (gx#syntax-e _%__stx1922519226%_)))
                                (let ((_%tl86438680%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e86458673%_)))
                                      (_%hd86448677%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e86458673%_))))
                                  (_%__kont1922819229%_
                                   _%tl86438680%_
                                   _%hd86448677%_)))
                              (_%__kont1923019231%_)))))))
                 (_%opt-lambda-split5373%_
                  (lambda (_%hd8480%_)
                    (let _%lp8483%_ ((_%rest8486%_ _%hd8480%_)
                                     (_%pre8488%_ '())
                                     (_%opt8489%_ '()))
                      (let* ((_%__stx1926519266%_ _%rest8486%_)
                             (_%g84928504%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1926519266%_))))
                        (let ((_%__kont1926819269%_
                               (lambda (_%L8532%_ _%L8534%_)
                                 (let* ((_%__stx1924119242%_ _%L8534%_)
                                        (_%g85508565%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1924119242%_))))
                                   (let ((_%__kont1924419245%_
                                          (lambda (_%L8603%_ _%L8605%_)
                                            (_%lp8483%_
                                             _%L8532%_
                                             _%pre8488%_
                                             (cons (cons _%L8605%_ _%L8603%_)
                                                   _%opt8489%_))))
                                         (_%__kont1924619247%_
                                          (lambda ()
                                            (_%lp8483%_
                                             _%L8532%_
                                             (cons _%L8534%_ _%pre8488%_)
                                             _%opt8489%_))))
                                     (if (gx#stx-pair? _%__stx1924119242%_)
                                         (let ((_%e85568583%_
                                                (gx#syntax-e
                                                 _%__stx1924119242%_)))
                                           (let ((_%tl85548590%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e85568583%_)))
                                                 (_%hd85558587%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e85568583%_))))
                                             (if (gx#stx-pair? _%tl85548590%_)
                                                 (let ((_%e85598593%_
                                                        (gx#syntax-e
                                                         _%tl85548590%_)))
                                                   (let ((_%tl85578600%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e85598593%_)))
                                                         (_%hd85588597%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e85598593%_))))
                                                     (if (gx#stx-null?
                                                          _%tl85578600%_)
                                                         (_%__kont1924419245%_
                                                          _%hd85588597%_
                                                          _%hd85558587%_)
                                                         (_%__kont1924619247%_))))
                                                 (_%__kont1924619247%_))))
                                         (_%__kont1924619247%_))))))
                              (_%__kont1927019271%_
                               (lambda ()
                                 (values (reverse _%pre8488%_)
                                         (reverse _%opt8489%_)
                                         _%rest8486%_))))
                          (if (gx#stx-pair? _%__stx1926519266%_)
                              (let ((_%e84988522%_
                                     (gx#syntax-e _%__stx1926519266%_)))
                                (let ((_%tl84968529%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e84988522%_)))
                                      (_%hd84978526%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e84988522%_))))
                                  (_%__kont1926819269%_
                                   _%tl84968529%_
                                   _%hd84978526%_)))
                              (_%__kont1927019271%_)))))))
                 (_%kw-lambda?5374%_
                  (lambda (_%hd8148%_)
                    (let _%lp8151%_ ((_%rest8154%_ _%hd8148%_)
                                     (_%opt?8156%_ '#f)
                                     (_%key?8157%_ '#f))
                      (let* ((_%__stx1932919330%_ _%rest8154%_)
                             (_%g81628192%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1932919330%_))))
                        (let ((_%__kont1933219333%_
                               (lambda (_%L8387%_ _%L8389%_ _%L8390%_)
                                 (let* ((_%__stx1930519306%_ _%L8389%_)
                                        (_%g84058419%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1930519306%_))))
                                   (let ((_%__kont1930819309%_
                                          (lambda (_%L8457%_)
                                            (if (gx#identifier? _%L8457%_)
                                                (_%lp8151%_
                                                 _%L8387%_
                                                 _%opt?8156%_
                                                 '#t)
                                                '#f)))
                                         (_%__kont1931019311%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8389%_)
                                                (_%lp8151%_
                                                 _%L8387%_
                                                 _%opt?8156%_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1930519306%_)
                                         (let ((_%e84108437%_
                                                (gx#syntax-e
                                                 _%__stx1930519306%_)))
                                           (let ((_%tl84088444%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e84108437%_)))
                                                 (_%hd84098441%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e84108437%_))))
                                             (if (gx#stx-pair? _%tl84088444%_)
                                                 (let ((_%e84138447%_
                                                        (gx#syntax-e
                                                         _%tl84088444%_)))
                                                   (let ((_%tl84118454%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e84138447%_)))
                                                         (_%hd84128451%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e84138447%_))))
                                                     (if (gx#stx-null?
                                                          _%tl84118454%_)
                                                         (_%__kont1930819309%_
                                                          _%hd84098441%_)
                                                         (_%__kont1931019311%_))))
                                                 (_%__kont1931019311%_))))
                                         (_%__kont1931019311%_))))))
                              (_%__kont1933419335%_
                               (lambda (_%L8344%_ _%L8346%_)
                                 (if (gx#identifier? _%L8346%_)
                                     (_%lp8151%_ _%L8344%_ _%opt?8156%_ '#t)
                                     '#f)))
                              (_%__kont1933619337%_
                               (lambda (_%L8224%_ _%L8226%_)
                                 (let* ((_%__stx1928119282%_ _%L8226%_)
                                        (_%g82428256%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1928119282%_))))
                                   (let ((_%__kont1928419285%_
                                          (lambda (_%L8294%_)
                                            (if (gx#identifier? _%L8294%_)
                                                (_%lp8151%_
                                                 _%L8224%_
                                                 '#t
                                                 _%key?8157%_)
                                                '#f)))
                                         (_%__kont1928619287%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8226%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (not _%opt?8156%_))
                                                    (_%lp8151%_
                                                     _%L8224%_
                                                     '#f
                                                     _%key?8157%_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1928119282%_)
                                         (let ((_%e82478274%_
                                                (gx#syntax-e
                                                 _%__stx1928119282%_)))
                                           (let ((_%tl82458281%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e82478274%_)))
                                                 (_%hd82468278%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e82478274%_))))
                                             (if (gx#stx-pair? _%tl82458281%_)
                                                 (let ((_%e82508284%_
                                                        (gx#syntax-e
                                                         _%tl82458281%_)))
                                                   (let ((_%tl82488291%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e82508284%_)))
                                                         (_%hd82498288%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e82508284%_))))
                                                     (if (gx#stx-null?
                                                          _%tl82488291%_)
                                                         (_%__kont1928419285%_
                                                          _%hd82468278%_)
                                                         (_%__kont1928619287%_))))
                                                 (_%__kont1928619287%_))))
                                         (_%__kont1928619287%_))))))
                              (_%__kont1933819339%_
                               (lambda ()
                                 (if _%key?8157%_
                                     (let ((_%$e8203%_
                                            (gx#stx-null? _%rest8154%_)))
                                       (if _%$e8203%_
                                           _%$e8203%_
                                           (gx#identifier? _%rest8154%_)))
                                     '#f))))
                          (let ((_%__match1935219353%_
                                 (lambda (_%e81698367%_
                                          _%hd81688371%_
                                          _%tl81678374%_
                                          _%e81728377%_
                                          _%hd81718381%_
                                          _%tl81708384%_)
                                   (let ((_%L8387%_ _%tl81708384%_)
                                         (_%L8389%_ _%hd81718381%_)
                                         (_%L8390%_ _%hd81688371%_))
                                     (if (gx#stx-keyword? _%L8390%_)
                                         (_%__kont1933219333%_
                                          _%L8387%_
                                          _%L8389%_
                                          _%L8390%_)
                                         (if (gx#stx-datum? _%hd81688371%_)
                                             (let ((_%e81788330%_
                                                    (gx#stx-e _%hd81688371%_)))
                                               (if (equal? _%e81788330%_
                                                           '#!key)
                                                   (_%__kont1933419335%_
                                                    _%tl81708384%_
                                                    _%hd81718381%_)
                                                   (_%__kont1933619337%_
                                                    _%tl81678374%_
                                                    _%hd81688371%_)))
                                             (_%__kont1933619337%_
                                              _%tl81678374%_
                                              _%hd81688371%_)))))))
                            (if (gx#stx-pair? _%__stx1932919330%_)
                                (let ((_%e81698367%_
                                       (gx#syntax-e _%__stx1932919330%_)))
                                  (let ((_%tl81678374%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e81698367%_)))
                                        (_%hd81688371%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e81698367%_))))
                                    (if (gx#stx-pair? _%tl81678374%_)
                                        (let ((_%e81728377%_
                                               (gx#syntax-e _%tl81678374%_)))
                                          (let ((_%tl81708384%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e81728377%_)))
                                                (_%hd81718381%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e81728377%_))))
                                            (_%__match1935219353%_
                                             _%e81698367%_
                                             _%hd81688371%_
                                             _%tl81678374%_
                                             _%e81728377%_
                                             _%hd81718381%_
                                             _%tl81708384%_)))
                                        (if (gx#stx-datum? _%hd81688371%_)
                                            (let ((_%e81788330%_
                                                   (gx#stx-e _%hd81688371%_)))
                                              (_%__kont1933619337%_
                                               _%tl81678374%_
                                               _%hd81688371%_))
                                            (_%__kont1933619337%_
                                             _%tl81678374%_
                                             _%hd81688371%_)))))
                                (_%__kont1933819339%_))))))))
                 (_%kw-lambda-split5375%_
                  (lambda (_%hd7881%_)
                    (let _%lp7884%_ ((_%rest7887%_ _%hd7881%_)
                                     (_%kwvar7889%_ '#f)
                                     (_%kwargs7890%_ '())
                                     (_%args7891%_ '()))
                      (let* ((_%__stx1940319404%_ _%rest7887%_)
                             (_%g78967926%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1940319404%_))))
                        (let ((_%__kont1940619407%_
                               (lambda (_%L8045%_ _%L8047%_ _%L8048%_)
                                 (let ((_%key8062%_ (gx#stx-e _%L8048%_)))
                                   (if (find (lambda (_%kwarg8065%_)
                                               (eq? _%key8062%_
                                                    (car _%kwarg8065%_)))
                                             _%kwargs7890%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad syntax; duplicate keyword argument"
                                        _%stx5367%_
                                        _%hd7881%_
                                        _%key8062%_)
                                       (let* ((_%__stx1937919380%_ _%L8047%_)
                                              (_%g80698084%_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx1937919380%_))))
                                         (let ((_%__kont1938219383%_
                                                (lambda (_%L8122%_ _%L8124%_)
                                                  (_%lp7884%_
                                                   _%L8045%_
                                                   _%kwvar7889%_
                                                   (cons (list _%key8062%_
                                                               _%L8124%_
                                                               _%L8122%_)
                                                         _%kwargs7890%_)
                                                   _%args7891%_)))
                                               (_%__kont1938419385%_
                                                (lambda ()
                                                  (_%lp7884%_
                                                   _%L8045%_
                                                   _%kwvar7889%_
                                                   (cons (list _%key8062%_
                                                               _%L8047%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'error)
                             (cons '"Missing required keyword argument"
                                   (cons _%L8048%_ '()))))
                 _%kwargs7890%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%args7891%_))))
                                           (if (gx#stx-pair?
                                                _%__stx1937919380%_)
                                               (let ((_%e80758102%_
                                                      (gx#syntax-e
                                                       _%__stx1937919380%_)))
                                                 (let ((_%tl80738109%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e80758102%_)))
                                                       (_%hd80748106%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e80758102%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl80738109%_)
                                                       (let ((_%e80788112%_
                                                              (gx#syntax-e
                                                               _%tl80738109%_)))
                                                         (let ((_%tl80768119%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e80788112%_)))
                       (_%hd80778116%_
                        (let () (declare (not safe)) (##car _%e80788112%_))))
                   (if (gx#stx-null? _%tl80768119%_)
                       (_%__kont1938219383%_ _%hd80778116%_ _%hd80748106%_)
                       (_%__kont1938419385%_))))
               (_%__kont1938419385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont1938419385%_))))))))
                              (_%__kont1940819409%_
                               (lambda (_%L8002%_ _%L8004%_)
                                 (if _%kwvar7889%_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"bad syntax; duplicate #!key argument"
                                      _%stx5367%_
                                      _%hd7881%_
                                      _%L8004%_)
                                     (_%lp7884%_
                                      _%L8002%_
                                      _%L8004%_
                                      _%kwargs7890%_
                                      _%args7891%_))))
                              (_%__kont1941019411%_
                               (lambda (_%L7954%_ _%L7956%_)
                                 (_%lp7884%_
                                  _%L7954%_
                                  _%kwvar7889%_
                                  _%kwargs7890%_
                                  (cons _%L7956%_ _%args7891%_))))
                              (_%__kont1941219413%_
                               (lambda ()
                                 (values _%kwvar7889%_
                                         (reverse _%kwargs7890%_)
                                         (foldl cons
                                                _%rest7887%_
                                                _%args7891%_)))))
                          (let ((_%__match1942619427%_
                                 (lambda (_%e79038025%_
                                          _%hd79028029%_
                                          _%tl79018032%_
                                          _%e79068035%_
                                          _%hd79058039%_
                                          _%tl79048042%_)
                                   (let ((_%L8045%_ _%tl79048042%_)
                                         (_%L8047%_ _%hd79058039%_)
                                         (_%L8048%_ _%hd79028029%_))
                                     (if (gx#stx-keyword? _%L8048%_)
                                         (_%__kont1940619407%_
                                          _%L8045%_
                                          _%L8047%_
                                          _%L8048%_)
                                         (if (gx#stx-datum? _%hd79028029%_)
                                             (let ((_%e79127988%_
                                                    (gx#stx-e _%hd79028029%_)))
                                               (if (equal? _%e79127988%_
                                                           '#!key)
                                                   (_%__kont1940819409%_
                                                    _%tl79048042%_
                                                    _%hd79058039%_)
                                                   (_%__kont1941019411%_
                                                    _%tl79018032%_
                                                    _%hd79028029%_)))
                                             (_%__kont1941019411%_
                                              _%tl79018032%_
                                              _%hd79028029%_)))))))
                            (if (gx#stx-pair? _%__stx1940319404%_)
                                (let ((_%e79038025%_
                                       (gx#syntax-e _%__stx1940319404%_)))
                                  (let ((_%tl79018032%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e79038025%_)))
                                        (_%hd79028029%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e79038025%_))))
                                    (if (gx#stx-pair? _%tl79018032%_)
                                        (let ((_%e79068035%_
                                               (gx#syntax-e _%tl79018032%_)))
                                          (let ((_%tl79048042%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e79068035%_)))
                                                (_%hd79058039%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e79068035%_))))
                                            (_%__match1942619427%_
                                             _%e79038025%_
                                             _%hd79028029%_
                                             _%tl79018032%_
                                             _%e79068035%_
                                             _%hd79058039%_
                                             _%tl79048042%_)))
                                        (if (gx#stx-datum? _%hd79028029%_)
                                            (let ((_%e79127988%_
                                                   (gx#stx-e _%hd79028029%_)))
                                              (_%__kont1941019411%_
                                               _%tl79018032%_
                                               _%hd79028029%_))
                                            (_%__kont1941019411%_
                                             _%tl79018032%_
                                             _%hd79028029%_)))))
                                (_%__kont1941219413%_))))))))
                 (_%check-duplicate-bindings5376%_
                  (lambda (_%hd7573%_)
                    (let _%lp7576%_ ((_%rest7579%_ _%hd7573%_)
                                     (_%ids7581%_ '()))
                      (let* ((_%__stx1947719478%_ _%rest7579%_)
                             (_%g75847596%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1947719478%_))))
                        (let ((_%__kont1948019481%_
                               (lambda (_%L7624%_ _%L7626%_)
                                 (if (gx#identifier? _%L7626%_)
                                     (let ()
                                       (_%lp7576%_
                                        _%L7624%_
                                        (cons _%L7626%_ _%ids7581%_)))
                                     (if (gx#stx-pair? _%L7626%_)
                                         (let ()
                                           (let* ((_%g76457659%_
                                                   (lambda (_%g76467655%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g76467655%_)))
                                                  (_%g76447701%_
                                                   (lambda (_%g76467663%_)
                                                     (if (gx#stx-pair?
                                                          _%g76467663%_)
                                                         (let ((_%e76507666%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g76467663%_)))
                   (let ((_%hd76497670%_
                          (let () (declare (not safe)) (##car _%e76507666%_)))
                         (_%tl76487673%_
                          (let () (declare (not safe)) (##cdr _%e76507666%_))))
                     (if (gx#stx-pair? _%tl76487673%_)
                         (let ((_%e76537676%_ (gx#syntax-e _%tl76487673%_)))
                           (let ((_%hd76527680%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e76537676%_)))
                                 (_%tl76517683%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e76537676%_))))
                             (if (gx#stx-null? _%tl76517683%_)
                                 ((lambda (_%L7686%_)
                                    (_%lp7576%_
                                     _%L7624%_
                                     (cons _%L7686%_ _%ids7581%_)))
                                  _%hd76497670%_)
                                 (_%g76457659%_ _%g76467663%_))))
                         (_%g76457659%_ _%g76467663%_))))
                 (_%g76457659%_ _%g76467663%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g76447701%_ _%L7626%_)))
                                         (if (gx#stx-keyword? _%L7626%_)
                                             (let ()
                                               (let* ((_%g77077719%_
                                                       (lambda (_%g77087715%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g77087715%_)))
                                                      (_%g77067822%_
                                                       (lambda (_%g77087723%_)
                                                         (if (gx#stx-pair?
                                                              _%g77087723%_)
                                                             (let ((_%e77137726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%g77087723%_)))
                       (let ((_%hd77127730%_
                              (let ()
                                (declare (not safe))
                                (##car _%e77137726%_)))
                             (_%tl77117733%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e77137726%_))))
                         ((lambda (_%L7736%_ _%L7738%_)
                            (let* ((_%__stx1945319454%_ _%L7738%_)
                                   (_%g77517765%_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx1945319454%_))))
                              (let ((_%__kont1945619457%_
                                     (lambda (_%L7803%_)
                                       (_%lp7576%_
                                        _%L7736%_
                                        (cons _%L7803%_ _%ids7581%_))))
                                    (_%__kont1945819459%_
                                     (lambda ()
                                       (_%lp7576%_
                                        _%L7736%_
                                        (cons _%L7738%_ _%ids7581%_)))))
                                (if (gx#stx-pair? _%__stx1945319454%_)
                                    (let ((_%e77567783%_
                                           (gx#syntax-e _%__stx1945319454%_)))
                                      (let ((_%tl77547790%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e77567783%_)))
                                            (_%hd77557787%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e77567783%_))))
                                        (if (gx#stx-pair? _%tl77547790%_)
                                            (let ((_%e77597793%_
                                                   (gx#syntax-e
                                                    _%tl77547790%_)))
                                              (let ((_%tl77577800%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e77597793%_)))
                                                    (_%hd77587797%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e77597793%_))))
                                                (if (gx#stx-null?
                                                     _%tl77577800%_)
                                                    (_%__kont1945619457%_
                                                     _%hd77557787%_)
                                                    (_%__kont1945819459%_))))
                                            (_%__kont1945819459%_))))
                                    (_%__kont1945819459%_)))))
                          _%tl77117733%_
                          _%hd77127730%_)))
                     (_%g77077719%_ _%g77087723%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g77067822%_ _%L7624%_)))
                                             (if (eq? (gx#stx-e _%L7626%_)
                                                      '#!key)
                                                 (let ()
                                                   (let* ((_%g78287840%_
                                                           (lambda (_%g78297836%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g78297836%_)))
                                                          (_%g78277871%_
                                                           (lambda (_%g78297844%_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g78297844%_)
                         (let ((_%e78347847%_ (gx#syntax-e _%g78297844%_)))
                           (let ((_%hd78337851%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e78347847%_)))
                                 (_%tl78327854%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e78347847%_))))
                             ((lambda (_%L7857%_ _%L7859%_)
                                (_%lp7576%_
                                 _%L7857%_
                                 (cons _%L7859%_ _%ids7581%_)))
                              _%tl78327854%_
                              _%hd78337851%_)))
                         (_%g78287840%_ _%g78297844%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g78277871%_
                                                      _%L7624%_)))
                                                 (let ()
                                                   (error '"BUG: check-duplicate-bindings"
                                                          _%stx5367%_
                                                          _%rest7579%_))))))))
                              (_%__kont1948219483%_
                               (lambda ()
                                 (gx#check-duplicate-identifiers
                                  (if (gx#stx-null? _%rest7579%_)
                                      _%ids7581%_
                                      (cons _%rest7579%_ _%ids7581%_))
                                  _%stx5367%_))))
                          (if (gx#stx-pair? _%__stx1947719478%_)
                              (let ((_%e75907614%_
                                     (gx#syntax-e _%__stx1947719478%_)))
                                (let ((_%tl75887621%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e75907614%_)))
                                      (_%hd75897618%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e75907614%_))))
                                  (_%__kont1948019481%_
                                   _%tl75887621%_
                                   _%hd75897618%_)))
                              (_%__kont1948219483%_)))))))
                 (_%generate-opt-primary5377%_
                  (lambda (_%pre7365%_ _%opt7367%_ _%tail7368%_ _%body7369%_)
                    (let* ((_%g73717412%_
                            (lambda (_%g73727408%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g73727408%_)))
                           (_%g73707569%_
                            (lambda (_%g73727416%_)
                              (if (gx#stx-pair? _%g73727416%_)
                                  (let ((_%e73797419%_
                                         (gx#syntax-e _%g73727416%_)))
                                    (let ((_%hd73787423%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e73797419%_)))
                                          (_%tl73777426%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e73797419%_))))
                                      (if (gx#stx-pair/null? _%hd73787423%_)
                                          (let ((_g20966_
                                                 (gx#syntax-split-splice
                                                  _%hd73787423%_
                                                  '0)))
                                            (begin
                                              (let ((_g20967_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20966_)
                                                           (##vector-length
                                                            _g20966_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20967_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20967_)))
                                              (let ((_%target73807429%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20966_
                                                        0)))
                                                    (_%tl73827432%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20966_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl73827432%_)
                                                    (letrec ((_%loop73837435%_
                                                              (lambda (_%hd73817439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%pre73877442%_)
                        (if (gx#stx-pair? _%hd73817439%_)
                            (let ((_%e73847445%_ (gx#syntax-e _%hd73817439%_)))
                              (let ((_%lp-hd73857449%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e73847445%_)))
                                    (_%lp-tl73867452%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e73847445%_))))
                                (_%loop73837435%_
                                 _%lp-tl73867452%_
                                 (cons _%lp-hd73857449%_ _%pre73877442%_))))
                            (let ((_%pre73887455%_ (reverse _%pre73877442%_)))
                              (if (gx#stx-pair? _%tl73777426%_)
                                  (let ((_%e73917459%_
                                         (gx#syntax-e _%tl73777426%_)))
                                    (let ((_%hd73907463%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e73917459%_)))
                                          (_%tl73897466%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e73917459%_))))
                                      (if (gx#stx-pair/null? _%hd73907463%_)
                                          (let ((_g20968_
                                                 (gx#syntax-split-splice
                                                  _%hd73907463%_
                                                  '0)))
                                            (begin
                                              (let ((_g20969_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20968_)
                                                           (##vector-length
                                                            _g20968_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20969_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20969_)))
                                              (let ((_%target73927469%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20968_
                                                        0)))
                                                    (_%tl73947472%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20968_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl73947472%_)
                                                    (letrec ((_%loop73957475%_
                                                              (lambda (_%hd73937479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%opt73997482%_)
                        (if (gx#stx-pair? _%hd73937479%_)
                            (let ((_%e73967485%_ (gx#syntax-e _%hd73937479%_)))
                              (let ((_%lp-hd73977489%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e73967485%_)))
                                    (_%lp-tl73987492%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e73967485%_))))
                                (_%loop73957475%_
                                 _%lp-tl73987492%_
                                 (cons _%lp-hd73977489%_ _%opt73997482%_))))
                            (let ((_%opt74007495%_ (reverse _%opt73997482%_)))
                              (if (gx#stx-pair? _%tl73897466%_)
                                  (let ((_%e74037499%_
                                         (gx#syntax-e _%tl73897466%_)))
                                    (let ((_%hd74027503%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e74037499%_)))
                                          (_%tl74017506%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e74037499%_))))
                                      (if (gx#stx-pair? _%tl74017506%_)
                                          (let ((_%e74067509%_
                                                 (gx#syntax-e _%tl74017506%_)))
                                            (let ((_%hd74057513%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e74067509%_)))
                                                  (_%tl74047516%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e74067509%_))))
                                              (if (gx#stx-null? _%tl74047516%_)
                                                  ((lambda (_%L7519%_
                                                            _%L7521%_
                                                            _%L7522%_
                                                            _%L7523%_)
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda%)
                                                             (cons (foldr (lambda (_%g75527557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%g75537560%_)
                                    (cons _%g75527557%_ _%g75537560%_))
                                  (foldr (lambda (_%g75547563%_ _%g75557566%_)
                                           (cons _%g75547563%_ _%g75557566%_))
                                         _%L7521%_
                                         _%L7522%_)
                                  _%L7523%_)
                           _%L7519%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%hd74057513%_
                                                   _%hd74027503%_
                                                   _%opt74007495%_
                                                   _%pre73887455%_)
                                                  (_%g73717412%_
                                                   _%g73727416%_))))
                                          (_%g73717412%_ _%g73727416%_))))
                                  (_%g73717412%_ _%g73727416%_)))))))
              (_%loop73957475%_ _%target73927469%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g73717412%_
                                                     _%g73727416%_)))))
                                          (_%g73717412%_ _%g73727416%_))))
                                  (_%g73717412%_ _%g73727416%_)))))))
              (_%loop73837435%_ _%target73807429%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g73717412%_
                                                     _%g73727416%_)))))
                                          (_%g73717412%_ _%g73727416%_))))
                                  (_%g73717412%_ _%g73727416%_)))))
                      (_%g73707569%_
                       (list _%pre7365%_
                             (map car _%opt7367%_)
                             _%tail7368%_
                             _%body7369%_)))))
                 (_%generate-opt-dispatch5378%_
                  (lambda (_%primary7359%_
                           _%pre7361%_
                           _%opt7362%_
                           _%tail7363%_)
                    (cons (list _%pre7361%_
                                (_%generate-opt-clause5380%_
                                 _%primary7359%_
                                 _%pre7361%_
                                 _%opt7362%_))
                          (_%generate-opt-dispatch*5379%_
                           _%primary7359%_
                           _%pre7361%_
                           _%opt7362%_
                           _%tail7363%_))))
                 (_%generate-opt-dispatch*5379%_
                  (lambda (_%primary6908%_
                           _%pre6910%_
                           _%opt6911%_
                           _%tail6912%_)
                    (let _%recur6914%_ ((_%opt-rest6917%_ _%opt6911%_)
                                        (_%right6919%_ '()))
                      (if (let ()
                            (declare (not safe))
                            (pair? _%opt-rest6917%_))
                          (let ()
                            (let* ((_%hd6923%_ (caar _%opt-rest6917%_))
                                   (_%rest6926%_ (cdr _%opt-rest6917%_))
                                   (_%right*6929%_
                                    (cons _%hd6923%_ _%right6919%_))
                                   (_%g69326949%_
                                    (lambda (_%g69336945%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g69336945%_)))
                                   (_%g69317133%_
                                    (lambda (_%g69336953%_)
                                      (if (gx#stx-pair/null? _%g69336953%_)
                                          (let ((_g20970_
                                                 (gx#syntax-split-splice
                                                  _%g69336953%_
                                                  '0)))
                                            (begin
                                              (let ((_g20971_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20970_)
                                                           (##vector-length
                                                            _g20970_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20971_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20971_)))
                                              (let ((_%target69356956%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20970_
                                                        0)))
                                                    (_%tl69376959%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20970_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl69376959%_)
                                                    (letrec ((_%loop69386962%_
                                                              (lambda (_%hd69366966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%pre-bind69426969%_)
                        (if (gx#stx-pair? _%hd69366966%_)
                            (let ((_%e69396972%_ (gx#syntax-e _%hd69366966%_)))
                              (let ((_%lp-hd69406976%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e69396972%_)))
                                    (_%lp-tl69416979%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e69396972%_))))
                                (_%loop69386962%_
                                 _%lp-tl69416979%_
                                 (cons _%lp-hd69406976%_
                                       _%pre-bind69426969%_))))
                            (let ((_%pre-bind69436982%_
                                   (reverse _%pre-bind69426969%_)))
                              ((lambda (_%L6986%_)
                                 (let ()
                                   (let* ((_%g70087025%_
                                           (lambda (_%g70097021%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g70097021%_)))
                                          (_%g70077129%_
                                           (lambda (_%g70097029%_)
                                             (if (gx#stx-pair/null?
                                                  _%g70097029%_)
                                                 (let ((_g20972_
                                                        (gx#syntax-split-splice
                                                         _%g70097029%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g20973_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g20972_)
                          (##vector-length _g20972_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g20973_ 2)))
                   (error "Context expects 2 values" _g20973_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target70117032%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g20972_
                                                               0)))
                                                           (_%tl70137035%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g20972_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl70137035%_)
                                                           (letrec ((_%loop70147038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd70127042%_ _%opt-bind70187045%_)
                               (if (gx#stx-pair? _%hd70127042%_)
                                   (let ((_%e70157048%_
                                          (gx#syntax-e _%hd70127042%_)))
                                     (let ((_%lp-hd70167052%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e70157048%_)))
                                           (_%lp-tl70177055%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e70157048%_))))
                                       (_%loop70147038%_
                                        _%lp-tl70177055%_
                                        (cons _%lp-hd70167052%_
                                              _%opt-bind70187045%_))))
                                   (let ((_%opt-bind70197058%_
                                          (reverse _%opt-bind70187045%_)))
                                     ((lambda (_%L7062%_)
                                        (let ()
                                          (let* ((_%g70797087%_
                                                  (lambda (_%g70807083%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g70807083%_)))
                                                 (_%g70787125%_
                                                  (lambda (_%g70807091%_)
                                                    ((lambda (_%L7094%_)
                                                       (let ()
                                                         (cons (list (foldr (lambda (_%g71087113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _%g71097116%_)
                                      (cons _%g71087113%_ _%g71097116%_))
                                    (foldr (lambda (_%g71107119%_
                                                    _%g71117122%_)
                                             (cons _%g71107119%_
                                                   _%g71117122%_))
                                           (cons _%L7094%_ '())
                                           _%L7062%_)
                                    _%L6986%_)
                             (_%generate-opt-clause5380%_
                              _%primary6908%_
                              (foldr cons (reverse _%right*6929%_) _%pre6910%_)
                              _%rest6926%_))
                       (_%recur6914%_ _%rest6926%_ _%right*6929%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g70807091%_))))
                                            (_%g70787125%_ _%hd6923%_))))
                                      _%opt-bind70197058%_))))))
                     (_%loop70147038%_ _%target70117032%_ '()))
                   (_%g70087025%_ _%g70097029%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g70087025%_
                                                  _%g70097029%_)))))
                                     (_%g70077129%_ (reverse _%right6919%_)))))
                               _%pre-bind69436982%_))))))
              (_%loop69386962%_ _%target69356956%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g69326949%_
                                                     _%g69336953%_)))))
                                          (_%g69326949%_ _%g69336953%_)))))
                              (_%g69317133%_ _%pre6910%_)))
                          (if (gx#stx-null? _%tail6912%_)
                              (let () '())
                              (let ()
                                (let* ((_%g71417182%_
                                        (lambda (_%g71427178%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g71427178%_)))
                                       (_%g71407355%_
                                        (lambda (_%g71427186%_)
                                          (if (gx#stx-pair? _%g71427186%_)
                                              (let ((_%e71497189%_
                                                     (gx#syntax-e
                                                      _%g71427186%_)))
                                                (let ((_%hd71487193%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e71497189%_)))
                                                      (_%tl71477196%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e71497189%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%hd71487193%_)
                                                      (let ((_g20974_
                                                             (gx#syntax-split-splice
                                                              _%hd71487193%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g20975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g20974_)
                               (##vector-length _g20974_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g20975_ 2)))
                        (error "Context expects 2 values" _g20975_)))
                  (let ((_%target71507199%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g20974_ 0)))
                        (_%tl71527202%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g20974_ 1))))
                    (if (gx#stx-null? _%tl71527202%_)
                        (letrec ((_%loop71537205%_
                                  (lambda (_%hd71517209%_ _%pre71577212%_)
                                    (if (gx#stx-pair? _%hd71517209%_)
                                        (let ((_%e71547215%_
                                               (gx#syntax-e _%hd71517209%_)))
                                          (let ((_%lp-hd71557219%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e71547215%_)))
                                                (_%lp-tl71567222%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e71547215%_))))
                                            (_%loop71537205%_
                                             _%lp-tl71567222%_
                                             (cons _%lp-hd71557219%_
                                                   _%pre71577212%_))))
                                        (let ((_%pre71587225%_
                                               (reverse _%pre71577212%_)))
                                          (if (gx#stx-pair? _%tl71477196%_)
                                              (let ((_%e71617229%_
                                                     (gx#syntax-e
                                                      _%tl71477196%_)))
                                                (let ((_%hd71607233%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e71617229%_)))
                                                      (_%tl71597236%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e71617229%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%hd71607233%_)
                                                      (let ((_g20976_
                                                             (gx#syntax-split-splice
                                                              _%hd71607233%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g20977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g20976_)
                               (##vector-length _g20976_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g20977_ 2)))
                        (error "Context expects 2 values" _g20977_)))
                  (let ((_%target71627239%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g20976_ 0)))
                        (_%tl71647242%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g20976_ 1))))
                    (if (gx#stx-null? _%tl71647242%_)
                        (letrec ((_%loop71657245%_
                                  (lambda (_%hd71637249%_ _%opt71697252%_)
                                    (if (gx#stx-pair? _%hd71637249%_)
                                        (let ((_%e71667255%_
                                               (gx#syntax-e _%hd71637249%_)))
                                          (let ((_%lp-hd71677259%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e71667255%_)))
                                                (_%lp-tl71687262%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e71667255%_))))
                                            (_%loop71657245%_
                                             _%lp-tl71687262%_
                                             (cons _%lp-hd71677259%_
                                                   _%opt71697252%_))))
                                        (let ((_%opt71707265%_
                                               (reverse _%opt71697252%_)))
                                          (if (gx#stx-pair? _%tl71597236%_)
                                              (let ((_%e71737269%_
                                                     (gx#syntax-e
                                                      _%tl71597236%_)))
                                                (let ((_%hd71727273%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e71737269%_)))
                                                      (_%tl71717276%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e71737269%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl71717276%_)
                                                      (let ((_%e71767279%_
                                                             (gx#syntax-e
                                                              _%tl71717276%_)))
                                                        (let ((_%hd71757283%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e71767279%_)))
                      (_%tl71747286%_
                       (let () (declare (not safe)) (##cdr _%e71767279%_))))
                  (if (gx#stx-null? _%tl71747286%_)
                      ((lambda (_%L7289%_ _%L7291%_ _%L7292%_ _%L7293%_)
                         (let ()
                           (list (list (foldr (lambda (_%g73227327%_
                                                       _%g73237330%_)
                                                (cons _%g73227327%_
                                                      _%g73237330%_))
                                              (foldr (lambda (_%g73247333%_
                                                              _%g73257336%_)
                                                       (cons _%g73247333%_
                                                             _%g73257336%_))
                                                     _%L7291%_
                                                     _%L7292%_)
                                              _%L7293%_)
                                       (gx#stx-wrap-source
                                        (cons (gx#datum->syntax '#f 'apply)
                                              (cons _%L7289%_
                                                    (foldr (lambda (_%g73387343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g73397346%_)
                     (cons _%g73387343%_ _%g73397346%_))
                   (foldr (lambda (_%g73407349%_ _%g73417352%_)
                            (cons _%g73407349%_ _%g73417352%_))
                          (cons _%L7291%_ '())
                          _%L7292%_)
                   _%L7293%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (gx#stx-source _%stx5367%_))))))
                       _%hd71757283%_
                       _%hd71727273%_
                       _%opt71707265%_
                       _%pre71587225%_)
                      (_%g71417182%_ _%g71427186%_))))
              (_%g71417182%_ _%g71427186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g71417182%_
                                               _%g71427186%_)))))))
                          (_%loop71657245%_ _%target71627239%_ '()))
                        (_%g71417182%_ _%g71427186%_)))))
              (_%g71417182%_ _%g71427186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g71417182%_
                                               _%g71427186%_)))))))
                          (_%loop71537205%_ _%target71507199%_ '()))
                        (_%g71417182%_ _%g71427186%_)))))
              (_%g71417182%_ _%g71427186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g71417182%_ _%g71427186%_)))))
                                  (_%g71407355%_
                                   (list _%pre6910%_
                                         (reverse _%right6919%_)
                                         _%tail6912%_
                                         _%primary6908%_)))))))))
                 (_%generate-opt-clause5380%_
                  (lambda (_%primary6606%_ _%pre6608%_ _%opt6609%_)
                    (let _%recur6611%_ ((_%opt-rest6614%_ _%opt6609%_)
                                        (_%right6616%_ '()))
                      (if (let ()
                            (declare (not safe))
                            (pair? _%opt-rest6614%_))
                          (let* ((_%hd6618%_ (car _%opt-rest6614%_))
                                 (_%rest6621%_ (cdr _%opt-rest6614%_))
                                 (_%g66246632%_
                                  (lambda (_%g66256628%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g66256628%_)))
                                 (_%g66236721%_
                                  (lambda (_%g66256636%_)
                                    ((lambda (_%L6639%_)
                                       (let ()
                                         (let* ((_%g66556663%_
                                                 (lambda (_%g66566659%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g66566659%_)))
                                                (_%g66546717%_
                                                 (lambda (_%g66566667%_)
                                                   ((lambda (_%L6670%_)
                                                      (let ()
                                                        (let* ((_%g66836691%_
                                                                (lambda (_%g66846687%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g66846687%_)))
                       (_%g66826713%_
                        (lambda (_%g66846695%_)
                          ((lambda (_%L6698%_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let-values)
                                     (cons (cons (cons (cons _%L6639%_ '())
                                                       (cons _%L6670%_ '()))
                                                 '())
                                           (cons _%L6698%_ '())))))
                           _%g66846695%_))))
                  (_%g66826713%_
                   (_%recur6611%_
                    _%rest6621%_
                    (cons _%L6639%_ _%right6616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g66566667%_))))
                                           (_%g66546717%_ (cdr _%hd6618%_)))))
                                     _%g66256636%_))))
                            (_%g66236721%_ (car _%hd6618%_)))
                          (let* ((_%g67256762%_
                                  (lambda (_%g67266758%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g67266758%_)))
                                 (_%g67246904%_
                                  (lambda (_%g67266766%_)
                                    (if (gx#stx-pair? _%g67266766%_)
                                        (let ((_%e67326769%_
                                               (gx#syntax-e _%g67266766%_)))
                                          (let ((_%hd67316773%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67326769%_)))
                                                (_%tl67306776%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67326769%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd67316773%_)
                                                (let ((_g20978_
                                                       (gx#syntax-split-splice
                                                        _%hd67316773%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20979_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20978_)
                         (##vector-length _g20978_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20979_ 2)))
                  (error "Context expects 2 values" _g20979_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target67336779%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20978_
                                                              0)))
                                                          (_%tl67356782%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20978_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl67356782%_)
                                                          (letrec ((_%loop67366785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd67346789%_ _%pre67406792%_)
                              (if (gx#stx-pair? _%hd67346789%_)
                                  (let ((_%e67376795%_
                                         (gx#syntax-e _%hd67346789%_)))
                                    (let ((_%lp-hd67386799%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e67376795%_)))
                                          (_%lp-tl67396802%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e67376795%_))))
                                      (_%loop67366785%_
                                       _%lp-tl67396802%_
                                       (cons _%lp-hd67386799%_
                                             _%pre67406792%_))))
                                  (let ((_%pre67416805%_
                                         (reverse _%pre67406792%_)))
                                    (if (gx#stx-pair? _%tl67306776%_)
                                        (let ((_%e67446809%_
                                               (gx#syntax-e _%tl67306776%_)))
                                          (let ((_%hd67436813%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67446809%_)))
                                                (_%tl67426816%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67446809%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd67436813%_)
                                                (let ((_g20980_
                                                       (gx#syntax-split-splice
                                                        _%hd67436813%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20981_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20980_)
                         (##vector-length _g20980_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20981_ 2)))
                  (error "Context expects 2 values" _g20981_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target67456819%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20980_
                                                              0)))
                                                          (_%tl67476822%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20980_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl67476822%_)
                                                          (letrec ((_%loop67486825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd67466829%_ _%opt67526832%_)
                              (if (gx#stx-pair? _%hd67466829%_)
                                  (let ((_%e67496835%_
                                         (gx#syntax-e _%hd67466829%_)))
                                    (let ((_%lp-hd67506839%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e67496835%_)))
                                          (_%lp-tl67516842%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e67496835%_))))
                                      (_%loop67486825%_
                                       _%lp-tl67516842%_
                                       (cons _%lp-hd67506839%_
                                             _%opt67526832%_))))
                                  (let ((_%opt67536845%_
                                         (reverse _%opt67526832%_)))
                                    (if (gx#stx-pair? _%tl67426816%_)
                                        (let ((_%e67566849%_
                                               (gx#syntax-e _%tl67426816%_)))
                                          (let ((_%hd67556853%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67566849%_)))
                                                (_%tl67546856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67566849%_))))
                                            (if (gx#stx-null? _%tl67546856%_)
                                                ((lambda (_%L6859%_
                                                          _%L6861%_
                                                          _%L6862%_)
                                                   (let ()
                                                     (gx#stx-wrap-source
                                                      (cons _%L6859%_
                                                            (foldr (lambda (_%g68876892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g68886895%_)
                             (cons _%g68876892%_ _%g68886895%_))
                           (foldr (lambda (_%g68896898%_ _%g68906901%_)
                                    (cons _%g68896898%_ _%g68906901%_))
                                  '()
                                  _%L6861%_)
                           _%L6862%_))
              (gx#stx-source _%stx5367%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd67556853%_
                                                 _%opt67536845%_
                                                 _%pre67416805%_)
                                                (_%g67256762%_
                                                 _%g67266766%_))))
                                        (_%g67256762%_ _%g67266766%_)))))))
                    (_%loop67486825%_ _%target67456819%_ '()))
                  (_%g67256762%_ _%g67266766%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g67256762%_
                                                 _%g67266766%_))))
                                        (_%g67256762%_ _%g67266766%_)))))))
                    (_%loop67366785%_ _%target67336779%_ '()))
                  (_%g67256762%_ _%g67266766%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g67256762%_
                                                 _%g67266766%_))))
                                        (_%g67256762%_ _%g67266766%_)))))
                            (_%g67246904%_
                             (list _%pre6608%_
                                   (reverse _%right6616%_)
                                   _%primary6606%_)))))))
                 (_%generate-kw-primary5381%_
                  (lambda (_%key5982%_
                           _%kwargs5984%_
                           _%args5985%_
                           _%body5986%_)
                    (letrec ((_%make-body5988%_
                              (lambda (_%kwargs6475%_ _%kwvals6477%_)
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _%kwargs6475%_))
                                    (let* ((_%kwarg6479%_ (car _%kwargs6475%_))
                                           (_%var6482%_ (cadr _%kwarg6479%_))
                                           (_%default6485%_
                                            (caddr _%kwarg6479%_))
                                           (_%kwval6488%_ (car _%kwvals6477%_))
                                           (_%rest-kwargs6491%_
                                            (cdr _%kwargs6475%_))
                                           (_%rest-kwvals6494%_
                                            (cdr _%kwvals6477%_)))
                                      (let* ((_%g64996522%_
                                              (lambda (_%g65006518%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g65006518%_)))
                                             (_%g64986602%_
                                              (lambda (_%g65006526%_)
                                                (if (gx#stx-pair?
                                                     _%g65006526%_)
                                                    (let ((_%e65076529%_
                                                           (gx#syntax-e
                                                            _%g65006526%_)))
                                                      (let ((_%hd65066533%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e65076529%_)))
                    (_%tl65056536%_
                     (let () (declare (not safe)) (##cdr _%e65076529%_))))
                (if (gx#stx-pair? _%tl65056536%_)
                    (let ((_%e65106539%_ (gx#syntax-e _%tl65056536%_)))
                      (let ((_%hd65096543%_
                             (let ()
                               (declare (not safe))
                               (##car _%e65106539%_)))
                            (_%tl65086546%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e65106539%_))))
                        (if (gx#stx-pair? _%tl65086546%_)
                            (let ((_%e65136549%_ (gx#syntax-e _%tl65086546%_)))
                              (let ((_%hd65126553%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e65136549%_)))
                                    (_%tl65116556%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e65136549%_))))
                                (if (gx#stx-pair? _%tl65116556%_)
                                    (let ((_%e65166559%_
                                           (gx#syntax-e _%tl65116556%_)))
                                      (let ((_%hd65156563%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e65166559%_)))
                                            (_%tl65146566%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e65166559%_))))
                                        (if (gx#stx-null? _%tl65146566%_)
                                            ((lambda (_%L6569%_
                                                      _%L6571%_
                                                      _%L6572%_
                                                      _%L6573%_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let-values)
                                                       (cons (cons (cons (cons _%L6573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'eq?)
                                                         (cons _%L6572%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'absent-value)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%L6571%_
                                                         (cons _%L6572%_
                                                               '()))))
                                       '()))
                           '())
                     (cons _%L6569%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd65156563%_
                                             _%hd65126553%_
                                             _%hd65096543%_
                                             _%hd65066533%_)
                                            (_%g64996522%_ _%g65006526%_))))
                                    (_%g64996522%_ _%g65006526%_))))
                            (_%g64996522%_ _%g65006526%_))))
                    (_%g64996522%_ _%g65006526%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g64996522%_
                                                     _%g65006526%_)))))
                                        (_%g64986602%_
                                         (list _%var6482%_
                                               _%kwval6488%_
                                               _%default6485%_
                                               (_%make-body5988%_
                                                _%rest-kwargs6491%_
                                                _%rest-kwvals6494%_)))))
                                    (cons 'begin _%body5986%_))))
                             (_%make-main5990%_
                              (lambda ()
                                (let* ((_%g62836291%_
                                        (lambda (_%g62846287%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g62846287%_)))
                                       (_%g62826467%_
                                        (lambda (_%g62846295%_)
                                          ((lambda (_%L6298%_)
                                             (let ()
                                               (let* ((_%g63106327%_
                                                       (lambda (_%g63116323%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g63116323%_)))
                                                      (_%g63096463%_
                                                       (lambda (_%g63116331%_)
                                                         (if (gx#stx-pair/null?
                                                              _%g63116331%_)
                                                             (let ((_g20982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _%g63116331%_ '0)))
                       (begin
                         (let ((_g20983_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g20982_)
                                      (##vector-length _g20982_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g20983_ 2)))
                               (error "Context expects 2 values" _g20983_)))
                         (let ((_%target63136334%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g20982_ 0)))
                               (_%tl63156337%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g20982_ 1))))
                           (if (gx#stx-null? _%tl63156337%_)
                               (letrec ((_%loop63166340%_
                                         (lambda (_%hd63146344%_
                                                  _%kwval63206347%_)
                                           (if (gx#stx-pair? _%hd63146344%_)
                                               (let ((_%e63176350%_
                                                      (gx#syntax-e
                                                       _%hd63146344%_)))
                                                 (let ((_%lp-hd63186354%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e63176350%_)))
                                                       (_%lp-tl63196357%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e63176350%_))))
                                                   (_%loop63166340%_
                                                    _%lp-tl63196357%_
                                                    (cons _%lp-hd63186354%_
                                                          _%kwval63206347%_))))
                                               (let ((_%kwval63216360%_
                                                      (reverse _%kwval63206347%_)))
                                                 ((lambda (_%L6364%_)
                                                    (let ()
                                                      (let* ((_%g63816389%_
                                                              (lambda (_%g63826385%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g63826385%_)))
                     (_%g63806459%_
                      (lambda (_%g63826393%_)
                        ((lambda (_%L6396%_)
                           (let ()
                             (let* ((_%g64096417%_
                                     (lambda (_%g64106413%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g64106413%_)))
                                    (_%g64086447%_
                                     (lambda (_%g64106421%_)
                                       ((lambda (_%L6424%_)
                                          (let ()
                                            (gx#stx-wrap-source
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%L6298%_
                                                               (foldr (lambda (_%g64386441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%g64396444%_)
                                (cons _%g64386441%_ _%g64396444%_))
                              _%L6396%_
                              _%L6364%_))
                 (cons _%L6424%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (gx#stx-source _%stx5367%_))))
                                        _%g64106421%_))))
                               (_%g64086447%_
                                (_%make-body5988%_
                                 _%kwargs5984%_
                                 (foldr (lambda (_%g64506453%_ _%g64516456%_)
                                          (cons _%g64506453%_ _%g64516456%_))
                                        '()
                                        _%L6364%_))))))
                         _%g63826393%_))))
                (_%g63806459%_ _%args5985%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%kwval63216360%_))))))
                                 (_%loop63166340%_ _%target63136334%_ '()))
                               (_%g63106327%_ _%g63116331%_)))))
                     (_%g63106327%_ _%g63116331%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g63096463%_
                                                  (gx#gentemps
                                                   (map cadr
                                                        _%kwargs5984%_))))))
                                           _%g62846295%_))))
                                  (_%g62826467%_
                                   (let ((_%$e6471%_ _%key5982%_))
                                     (if _%$e6471%_ _%$e6471%_ '_))))))
                             (_%make-dispatch5991%_
                              (lambda (_%main6091%_)
                                (let* ((_%g60946102%_
                                        (lambda (_%g60956098%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g60956098%_)))
                                       (_%g60936273%_
                                        (lambda (_%g60956106%_)
                                          ((lambda (_%L6109%_)
                                             (let ()
                                               (let* ((_%g61216138%_
                                                       (lambda (_%g61226134%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g61226134%_)))
                                                      (_%g61206234%_
                                                       (lambda (_%g61226142%_)
                                                         (if (gx#stx-pair/null?
                                                              _%g61226142%_)
                                                             (let ((_g20984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _%g61226142%_ '0)))
                       (begin
                         (let ((_g20985_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g20984_)
                                      (##vector-length _g20984_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g20985_ 2)))
                               (error "Context expects 2 values" _g20985_)))
                         (let ((_%target61246145%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g20984_ 0)))
                               (_%tl61266148%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g20984_ 1))))
                           (if (gx#stx-null? _%tl61266148%_)
                               (letrec ((_%loop61276151%_
                                         (lambda (_%hd61256155%_
                                                  _%get-kw61316158%_)
                                           (if (gx#stx-pair? _%hd61256155%_)
                                               (let ((_%e61286161%_
                                                      (gx#syntax-e
                                                       _%hd61256155%_)))
                                                 (let ((_%lp-hd61296165%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e61286161%_)))
                                                       (_%lp-tl61306168%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e61286161%_))))
                                                   (_%loop61276151%_
                                                    _%lp-tl61306168%_
                                                    (cons _%lp-hd61296165%_
                                                          _%get-kw61316158%_))))
                                               (let ((_%get-kw61326171%_
                                                      (reverse _%get-kw61316158%_)))
                                                 ((lambda (_%L6175%_)
                                                    (let ()
                                                      (let* ((_%g61926200%_
                                                              (lambda (_%g61936196%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g61936196%_)))
                     (_%g61916230%_
                      (lambda (_%g61936204%_)
                        ((lambda (_%L6207%_)
                           (let ()
                             (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons _%L6109%_
                                                (gx#datum->syntax '#f 'args))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons _%L6207%_
                                                            (cons _%L6109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr (lambda (_%g62216224%_ _%g62226227%_)
                                   (cons _%g62216224%_ _%g62226227%_))
                                 (cons (gx#datum->syntax '#f 'args) '())
                                 _%L6175%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (gx#stx-source _%stx5367%_))))
                         _%g61936204%_))))
                (_%g61916230%_ _%main6091%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%get-kw61326171%_))))))
                                 (_%loop61276151%_ _%target61246145%_ '()))
                               (_%g61216138%_ _%g61226142%_)))))
                     (_%g61216138%_ _%g61226142%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g61206234%_
                                                  (map (lambda (_%kwarg6238%_)
                                                         (let* ((_%g62416249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g62426245%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g62426245%_)))
                        (_%g62406269%_
                         (lambda (_%g62426253%_)
                           ((lambda (_%L6256%_)
                              (let ()
                                (cons (gx#datum->syntax
                                       '#f
                                       'symbolic-table-ref)
                                      (cons _%L6109%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _%L6256%_ '()))
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'absent-value)
                                                        '()))))))
                            _%g62426253%_))))
                   (_%g62406269%_ (car _%kwarg6238%_))))
               _%kwargs5984%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g60956106%_))))
                                  (_%g60936273%_
                                   (let ((_%$e6277%_ _%key5982%_))
                                     (if _%$e6277%_
                                         _%$e6277%_
                                         (gx#syntax-local-introduce
                                          '@@keywords))))))))
                      (let* ((_%g59936001%_
                              (lambda (_%g59945997%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g59945997%_)))
                             (_%g59926087%_
                              (lambda (_%g59946005%_)
                                ((lambda (_%L6008%_)
                                   (let ()
                                     (let* ((_%g60216029%_
                                             (lambda (_%g60226025%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g60226025%_)))
                                            (_%g60206083%_
                                             (lambda (_%g60226033%_)
                                               ((lambda (_%L6036%_)
                                                  (let ()
                                                    (let* ((_%g60496057%_
                                                            (lambda (_%g60506053%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g60506053%_)))
                                                           (_%g60486079%_
                                                            (lambda (_%g60506061%_)
                                                              ((lambda (_%L6064%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons (gx#datum->syntax '#f 'let-values)
                                 (cons (cons (cons (cons _%L6008%_ '())
                                                   (cons _%L6064%_ '()))
                                             '())
                                       (cons _%L6036%_ '())))))
                       _%g60506061%_))))
              (_%g60486079%_ (_%make-main5990%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%g60226033%_))))
                                       (_%g60206083%_
                                        (_%make-dispatch5991%_ _%L6008%_)))))
                                 _%g59946005%_))))
                        (_%g59926087%_ (gx#genident 'kw-lambda-main))))))
                 (_%generate-kw-dispatch5382%_
                  (lambda (_%primary5895%_ _%kwargs5897%_ _%strict?5898%_)
                    (let* ((_%g59005919%_
                            (lambda (_%g59015915%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g59015915%_)))
                           (_%g58995978%_
                            (lambda (_%g59015923%_)
                              (if (gx#stx-pair? _%g59015923%_)
                                  (let ((_%e59075926%_
                                         (gx#syntax-e _%g59015923%_)))
                                    (let ((_%hd59065930%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e59075926%_)))
                                          (_%tl59055933%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e59075926%_))))
                                      (if (gx#stx-pair? _%tl59055933%_)
                                          (let ((_%e59105936%_
                                                 (gx#syntax-e _%tl59055933%_)))
                                            (let ((_%hd59095940%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e59105936%_)))
                                                  (_%tl59085943%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e59105936%_))))
                                              (if (gx#stx-pair? _%tl59085943%_)
                                                  (let ((_%e59135946%_
                                                         (gx#syntax-e
                                                          _%tl59085943%_)))
                                                    (let ((_%hd59125950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e59135946%_)))
                                                          (_%tl59115953%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e59135946%_))))
                                                      (if (gx#stx-null?
                                                           _%tl59115953%_)
                                                          ((lambda (_%L5956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L5958%_
                            _%L5959%_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'lambda%)
                             (cons _%L5956%_
                                   (cons (cons (gx#datum->syntax '#f 'apply)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'keyword-dispatch)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%L5959%_ '()))
                   (cons _%L5958%_ (cons _%L5956%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                   _%hd59125950%_
                   _%hd59095940%_
                   _%hd59065930%_)
                  (_%g59005919%_ _%g59015923%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g59005919%_
                                                   _%g59015923%_))))
                                          (_%g59005919%_ _%g59015923%_))))
                                  (_%g59005919%_ _%g59015923%_)))))
                      (_%g58995978%_
                       (list (if _%strict?5898%_
                                 (_%generate-kw-table5383%_
                                  (map car _%kwargs5897%_))
                                 '#f)
                             _%primary5895%_
                             (gx#genident 'args))))))
                 (_%generate-kw-table5383%_
                  (lambda (_%kws5869%_)
                    (let _%rehash5872%_ ((_%pht5875%_
                                          (let ((__tmp20990
                                                 (length _%kws5869%_)))
                                            (declare (not safe))
                                            (##make-vector __tmp20990 '#f))))
                      (let _%lp5878%_ ((_%rest5881%_ _%kws5869%_))
                        (if (let () (declare (not safe)) (pair? _%rest5881%_))
                            (let* ((_%key5884%_ (car _%rest5881%_))
                                   (_%rest5887%_ (cdr _%rest5881%_))
                                   (_%pos5890%_
                                    (let ((__tmp20987
                                           (keyword-hash _%key5884%_))
                                          (__tmp20986
                                           (vector-length _%pht5875%_)))
                                      (declare (not safe))
                                      (##fxmodulo __tmp20987 __tmp20986))))
                              (if (vector-ref _%pht5875%_ _%pos5890%_)
                                  (if (let ((__tmp20988
                                             (vector-length _%pht5875%_)))
                                        (declare (not safe))
                                        (##fx< __tmp20988 '8192))
                                      (_%rehash5872%_
                                       (make-vector
                                        (quotient
                                         (let ((__tmp20989
                                                (vector-length _%pht5875%_)))
                                           (declare (not safe))
                                           (##fx* '3 __tmp20989))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _%kws5869%_))
                                  (begin
                                    (vector-set!
                                     _%pht5875%_
                                     _%pos5890%_
                                     _%key5884%_)
                                    (_%lp5878%_ _%rest5887%_))))
                            _%pht5875%_))))))
          (let* ((_%__stx1949319494%_ _%stx5367%_)
                 (_%g53875418%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1949319494%_))))
            (let ((_%__kont1949619497%_
                   (lambda (_%L5850%_ _%L5852%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%L5852%_ _%L5850%_))))
                  (_%__kont1949819499%_
                   (lambda (_%L5622%_ _%L5624%_)
                     (let ((_g20991_ (_%opt-lambda-split5373%_ _%L5624%_)))
                       (begin
                         (let ((_g20992_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g20991_)
                                      (##vector-length _g20991_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g20992_ 3)))
                               (error "Context expects 3 values" _g20992_)))
                         (let ((_%pre5637%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g20991_ 0)))
                               (_%opt5639%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g20991_ 1)))
                               (_%tail5640%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g20991_ 2))))
                           (let* ((_%g56425650%_
                                   (lambda (_%g56435646%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g56435646%_)))
                                  (_%g56415819%_
                                   (lambda (_%g56435654%_)
                                     ((lambda (_%L5657%_)
                                        (let ()
                                          (let* ((_%g56705678%_
                                                  (lambda (_%g56715674%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g56715674%_)))
                                                 (_%g56695815%_
                                                  (lambda (_%g56715682%_)
                                                    ((lambda (_%L5685%_)
                                                       (let ()
                                                         (let* ((_%g56985715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g56995711%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g56995711%_)))
                        (_%g56975811%_
                         (lambda (_%g56995719%_)
                           (if (gx#stx-pair/null? _%g56995719%_)
                               (let ((_g20993_
                                      (gx#syntax-split-splice
                                       _%g56995719%_
                                       '0)))
                                 (begin
                                   (let ((_g20994_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g20993_)
                                                (##vector-length _g20993_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g20994_ 2)))
                                         (error "Context expects 2 values"
                                                _g20994_)))
                                   (let ((_%target57015722%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g20993_ 0)))
                                         (_%tl57035725%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g20993_ 1))))
                                     (if (gx#stx-null? _%tl57035725%_)
                                         (letrec ((_%loop57045728%_
                                                   (lambda (_%hd57025732%_
                                                            _%clause57085735%_)
                                                     (if (gx#stx-pair?
                                                          _%hd57025732%_)
                                                         (let ((_%e57055738%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd57025732%_)))
                   (let ((_%lp-hd57065742%_
                          (let () (declare (not safe)) (##car _%e57055738%_)))
                         (_%lp-tl57075745%_
                          (let () (declare (not safe)) (##cdr _%e57055738%_))))
                     (_%loop57045728%_
                      _%lp-tl57075745%_
                      (cons _%lp-hd57065742%_ _%clause57085735%_))))
                 (let ((_%clause57095748%_ (reverse _%clause57085735%_)))
                   ((lambda (_%L5752%_)
                      (let ()
                        (let* ((_%g57695777%_
                                (lambda (_%g57705773%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g57705773%_)))
                               (_%g57685799%_
                                (lambda (_%g57705781%_)
                                  ((lambda (_%L5784%_)
                                     (let ()
                                       (cons (gx#datum->syntax '#f 'let-values)
                                             (cons (cons (cons (cons _%L5657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _%L5685%_ '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%L5784%_ '())))))
                                   _%g57705781%_))))
                          (_%g57685799%_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'case-lambda)
                                  (foldr (lambda (_%g58025805%_ _%g58035808%_)
                                           (cons _%g58025805%_ _%g58035808%_))
                                         '()
                                         _%L5752%_))
                            (gx#stx-source _%stx5367%_))))))
                    _%clause57095748%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%loop57045728%_
                                            _%target57015722%_
                                            '()))
                                         (_%g56985715%_ _%g56995719%_)))))
                               (_%g56985715%_ _%g56995719%_)))))
                   (_%g56975811%_
                    (_%generate-opt-dispatch5378%_
                     _%L5657%_
                     _%pre5637%_
                     _%opt5639%_
                     _%tail5640%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g56715682%_))))
                                            (_%g56695815%_
                                             (gx#stx-wrap-source
                                              (_%generate-opt-primary5377%_
                                               _%pre5637%_
                                               _%opt5639%_
                                               _%tail5640%_
                                               _%L5622%_)
                                              (gx#stx-source _%stx5367%_))))))
                                      _%g56435654%_))))
                             (_%g56415819%_ (gx#genident 'opt-lambda))))))))
                  (_%__kont1950019501%_
                   (lambda (_%L5445%_ _%L5447%_)
                     (let* ((_%g54635470%_
                             (lambda (_%g54645466%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g54645466%_)))
                            (_%g54625591%_
                             (lambda (_%g54645474%_)
                               ((lambda ()
                                  (let ((_g20995_
                                         (_%kw-lambda-split5375%_ _%L5447%_)))
                                    (begin
                                      (let ((_g20996_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g20995_)
                                                   (##vector-length _g20995_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g20996_ 3)))
                                            (error "Context expects 3 values"
                                                   _g20996_)))
                                      (let ((_%key5483%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g20995_ 0)))
                                            (_%kwargs5485%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g20995_ 1)))
                                            (_%args5486%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g20995_ 2))))
                                        (let* ((_%g54885496%_
                                                (lambda (_%g54895492%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g54895492%_)))
                                               (_%g54875587%_
                                                (lambda (_%g54895500%_)
                                                  ((lambda (_%L5503%_)
                                                     (let ()
                                                       (let* ((_%g55215529%_
                                                               (lambda (_%g55225525%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g55225525%_)))
                      (_%g55205583%_
                       (lambda (_%g55225533%_)
                         ((lambda (_%L5536%_)
                            (let ()
                              (let* ((_%g55495557%_
                                      (lambda (_%g55505553%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g55505553%_)))
                                     (_%g55485579%_
                                      (lambda (_%g55505561%_)
                                        ((lambda (_%L5564%_)
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'let-values)
                                                   (cons (cons (cons (cons _%L5503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons _%L5536%_ '()))
                       '())
                 (cons _%L5564%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g55505561%_))))
                                (_%g55485579%_
                                 (gx#stx-wrap-source
                                  (_%generate-kw-dispatch5382%_
                                   _%L5503%_
                                   _%kwargs5485%_
                                   (let ()
                                     (declare (not safe))
                                     (not _%key5483%_)))
                                  (gx#stx-source _%stx5367%_))))))
                          _%g55225533%_))))
                 (_%g55205583%_
                  (gx#stx-wrap-source
                   (_%generate-kw-primary5381%_
                    _%key5483%_
                    _%kwargs5485%_
                    _%args5486%_
                    _%L5445%_)
                   (gx#stx-source _%stx5367%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g54895500%_))))
                                          (_%g54875587%_
                                           (gx#genident 'kw-lambda)))))))))))
                       (_%g54625591%_
                        (_%check-duplicate-bindings5376%_ _%L5447%_))))))
              (let* ((_%__match1953819539%_
                      (lambda (_%e54095425%_
                               _%hd54085429%_
                               _%tl54075432%_
                               _%e54125435%_
                               _%hd54115439%_
                               _%tl54105442%_)
                        (let ((_%L5445%_ _%tl54105442%_)
                              (_%L5447%_ _%hd54115439%_))
                          (if (_%kw-lambda?5374%_ _%L5447%_)
                              (_%__kont1950019501%_ _%L5445%_ _%L5447%_)
                              (let () (declare (not safe)) (_%g53875418%_))))))
                     (_%__match1952619527%_
                      (lambda (_%e54015602%_
                               _%hd54005606%_
                               _%tl53995609%_
                               _%e54045612%_
                               _%hd54035616%_
                               _%tl54025619%_)
                        (let ((_%L5622%_ _%tl54025619%_)
                              (_%L5624%_ _%hd54035616%_))
                          (if (_%opt-lambda?5372%_ _%L5624%_)
                              (_%__kont1949819499%_ _%L5622%_ _%L5624%_)
                              (_%__match1953819539%_
                               _%e54015602%_
                               _%hd54005606%_
                               _%tl53995609%_
                               _%e54045612%_
                               _%hd54035616%_
                               _%tl54025619%_)))))
                     (_%__match1951419515%_
                      (lambda (_%e53935830%_
                               _%hd53925834%_
                               _%tl53915837%_
                               _%e53965840%_
                               _%hd53955844%_
                               _%tl53945847%_)
                        (let ((_%L5850%_ _%tl53945847%_)
                              (_%L5852%_ _%hd53955844%_))
                          (if (_%simple-lambda?5370%_ _%L5852%_)
                              (_%__kont1949619497%_ _%L5850%_ _%L5852%_)
                              (_%__match1952619527%_
                               _%e53935830%_
                               _%hd53925834%_
                               _%tl53915837%_
                               _%e53965840%_
                               _%hd53955844%_
                               _%tl53945847%_))))))
                (if (gx#stx-pair? _%__stx1949319494%_)
                    (let ((_%e53935830%_ (gx#syntax-e _%__stx1949319494%_)))
                      (let ((_%tl53915837%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e53935830%_)))
                            (_%hd53925834%_
                             (let ()
                               (declare (not safe))
                               (##car _%e53935830%_))))
                        (if (gx#stx-pair? _%tl53915837%_)
                            (let ((_%e53965840%_ (gx#syntax-e _%tl53915837%_)))
                              (let ((_%tl53945847%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e53965840%_)))
                                    (_%hd53955844%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e53965840%_))))
                                (_%__match1951419515%_
                                 _%e53935830%_
                                 _%hd53925834%_
                                 _%tl53915837%_
                                 _%e53965840%_
                                 _%hd53955844%_
                                 _%tl53945847%_)))
                            (let () (declare (not safe)) (_%g53875418%_)))))
                    (let () (declare (not safe)) (_%g53875418%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def|
      (lambda (_%$stx8792%_)
        (let* ((_%__stx1954119542%_ _%$stx8792%_)
               (_%g87988862%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1954119542%_))))
          (let ((_%__kont1954419545%_
                 (lambda (_%L9092%_ _%L9094%_ _%L9095%_ _%L9096%_)
                   (cons (gx#datum->syntax '#f 'def)
                         (cons (cons _%L9096%_ _%L9095%_)
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L9094%_
                                                 (foldr (lambda (_%g91189121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g91199124%_)
                  (cons _%g91189121%_ _%g91199124%_))
                '()
                _%L9092%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1954819549%_
                 (lambda (_%L8984%_ _%L8986%_ _%L8987%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L8987%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L8986%_
                                                 (foldr (lambda (_%g90069009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g90079012%_)
                  (cons _%g90069009%_ _%g90079012%_))
                '()
                _%L8984%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1955219553%_
                 (lambda (_%L8899%_ _%L8901%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L8901%_ '()) (cons _%L8899%_ '()))))))
            (let* ((_%__match1963219633%_
                    (lambda (_%e88508869%_
                             _%hd88498873%_
                             _%tl88488876%_
                             _%e88538879%_
                             _%hd88528883%_
                             _%tl88518886%_
                             _%e88568889%_
                             _%hd88558893%_
                             _%tl88548896%_)
                      (let ((_%L8899%_ _%hd88558893%_)
                            (_%L8901%_ _%hd88528883%_))
                        (if (gx#identifier? _%L8901%_)
                            (_%__kont1955219553%_ _%L8899%_ _%L8901%_)
                            (let () (declare (not safe)) (_%g87988862%_))))))
                   (_%__match1962419625%_
                    (lambda (_%e88508869%_
                             _%hd88498873%_
                             _%tl88488876%_
                             _%e88538879%_
                             _%hd88528883%_
                             _%tl88518886%_)
                      (if (gx#stx-pair? _%tl88518886%_)
                          (let ((_%e88568889%_ (gx#syntax-e _%tl88518886%_)))
                            (let ((_%tl88548896%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e88568889%_)))
                                  (_%hd88558893%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e88568889%_))))
                              (if (gx#stx-null? _%tl88548896%_)
                                  (_%__match1963219633%_
                                   _%e88508869%_
                                   _%hd88498873%_
                                   _%tl88488876%_
                                   _%e88538879%_
                                   _%hd88528883%_
                                   _%tl88518886%_
                                   _%e88568889%_
                                   _%hd88558893%_
                                   _%tl88548896%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g87988862%_)))))
                          (let () (declare (not safe)) (_%g87988862%_)))))
                   (_%__match1961219613%_
                    (lambda (_%e88308924%_
                             _%hd88298928%_
                             _%tl88288931%_
                             _%e88338934%_
                             _%hd88328938%_
                             _%tl88318941%_
                             _%e88368944%_
                             _%hd88358948%_
                             _%tl88348951%_
                             _%__splice1955019551%_
                             _%target88378954%_
                             _%tl88398957%_)
                      (letrec ((_%loop88408960%_
                                (lambda (_%hd88388964%_ _%body88448967%_)
                                  (if (gx#stx-pair? _%hd88388964%_)
                                      (let ((_%e88418970%_
                                             (gx#syntax-e _%hd88388964%_)))
                                        (let ((_%lp-tl88438977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88418970%_)))
                                              (_%lp-hd88428974%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88418970%_))))
                                          (_%loop88408960%_
                                           _%lp-tl88438977%_
                                           (cons _%lp-hd88428974%_
                                                 _%body88448967%_))))
                                      (let ((_%body88458980%_
                                             (reverse _%body88448967%_)))
                                        (let ((_%L8984%_ _%body88458980%_)
                                              (_%L8986%_ _%tl88348951%_)
                                              (_%L8987%_ _%hd88358948%_))
                                          (if (gx#identifier? _%L8987%_)
                                              (_%__kont1954819549%_
                                               _%L8984%_
                                               _%L8986%_
                                               _%L8987%_)
                                              (_%__match1962419625%_
                                               _%e88308924%_
                                               _%hd88298928%_
                                               _%tl88288931%_
                                               _%e88338934%_
                                               _%hd88328938%_
                                               _%tl88318941%_))))))))
                        (_%loop88408960%_ _%target88378954%_ '()))))
                   (_%__match1958619587%_
                    (lambda (_%e88069022%_
                             _%hd88059026%_
                             _%tl88049029%_
                             _%e88099032%_
                             _%hd88089036%_
                             _%tl88079039%_
                             _%e88129042%_
                             _%hd88119046%_
                             _%tl88109049%_
                             _%e88159052%_
                             _%hd88149056%_
                             _%tl88139059%_
                             _%__splice1954619547%_
                             _%target88169062%_
                             _%tl88189065%_)
                      (letrec ((_%loop88199068%_
                                (lambda (_%hd88179072%_ _%body88239075%_)
                                  (if (gx#stx-pair? _%hd88179072%_)
                                      (let ((_%e88209078%_
                                             (gx#syntax-e _%hd88179072%_)))
                                        (let ((_%lp-tl88229085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88209078%_)))
                                              (_%lp-hd88219082%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88209078%_))))
                                          (_%loop88199068%_
                                           _%lp-tl88229085%_
                                           (cons _%lp-hd88219082%_
                                                 _%body88239075%_))))
                                      (let ((_%body88249088%_
                                             (reverse _%body88239075%_)))
                                        (_%__kont1954419545%_
                                         _%body88249088%_
                                         _%tl88109049%_
                                         _%tl88139059%_
                                         _%hd88149056%_))))))
                        (_%loop88199068%_ _%target88169062%_ '())))))
              (if (gx#stx-pair? _%__stx1954119542%_)
                  (let ((_%e88069022%_ (gx#syntax-e _%__stx1954119542%_)))
                    (let ((_%tl88049029%_
                           (let () (declare (not safe)) (##cdr _%e88069022%_)))
                          (_%hd88059026%_
                           (let ()
                             (declare (not safe))
                             (##car _%e88069022%_))))
                      (if (gx#stx-pair? _%tl88049029%_)
                          (let ((_%e88099032%_ (gx#syntax-e _%tl88049029%_)))
                            (let ((_%tl88079039%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e88099032%_)))
                                  (_%hd88089036%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e88099032%_))))
                              (if (gx#stx-pair? _%hd88089036%_)
                                  (let ((_%e88129042%_
                                         (gx#syntax-e _%hd88089036%_)))
                                    (let ((_%tl88109049%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e88129042%_)))
                                          (_%hd88119046%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e88129042%_))))
                                      (if (gx#stx-pair? _%hd88119046%_)
                                          (let ((_%e88159052%_
                                                 (gx#syntax-e _%hd88119046%_)))
                                            (let ((_%tl88139059%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e88159052%_)))
                                                  (_%hd88149056%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e88159052%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl88079039%_)
                                                  (let ((_%__splice1954619547%_
                                                         (gx#syntax-split-splice
                                                          _%tl88079039%_
                                                          '0)))
                                                    (let ((_%tl88189065%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1954619547%_
                                                              '1)))
                                                          (_%target88169062%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1954619547%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl88189065%_)
                                                          (_%__match1958619587%_
                                                           _%e88069022%_
                                                           _%hd88059026%_
                                                           _%tl88049029%_
                                                           _%e88099032%_
                                                           _%hd88089036%_
                                                           _%tl88079039%_
                                                           _%e88129042%_
                                                           _%hd88119046%_
                                                           _%tl88109049%_
                                                           _%e88159052%_
                                                           _%hd88149056%_
                                                           _%tl88139059%_
                                                           _%__splice1954619547%_
                                                           _%target88169062%_
                                                           _%tl88189065%_)
                                                          (if (gx#stx-pair?
                                                               _%tl88079039%_)
                                                              (let ((_%e88568889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl88079039%_)))
                        (let ((_%tl88548896%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e88568889%_)))
                              (_%hd88558893%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e88568889%_))))
                          (if (gx#stx-null? _%tl88548896%_)
                              (_%__match1963219633%_
                               _%e88069022%_
                               _%hd88059026%_
                               _%tl88049029%_
                               _%e88099032%_
                               _%hd88089036%_
                               _%tl88079039%_
                               _%e88568889%_
                               _%hd88558893%_
                               _%tl88548896%_)
                              (let () (declare (not safe)) (_%g87988862%_)))))
                      (let () (declare (not safe)) (_%g87988862%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl88079039%_)
                                                      (let ((_%e88568889%_
                                                             (gx#syntax-e
                                                              _%tl88079039%_)))
                                                        (let ((_%tl88548896%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e88568889%_)))
                      (_%hd88558893%_
                       (let () (declare (not safe)) (##car _%e88568889%_))))
                  (if (gx#stx-null? _%tl88548896%_)
                      (_%__match1963219633%_
                       _%e88069022%_
                       _%hd88059026%_
                       _%tl88049029%_
                       _%e88099032%_
                       _%hd88089036%_
                       _%tl88079039%_
                       _%e88568889%_
                       _%hd88558893%_
                       _%tl88548896%_)
                      (let () (declare (not safe)) (_%g87988862%_)))))
              (let () (declare (not safe)) (_%g87988862%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl88079039%_)
                                              (let ((_%__splice1955019551%_
                                                     (gx#syntax-split-splice
                                                      _%tl88079039%_
                                                      '0)))
                                                (let ((_%tl88398957%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1955019551%_
                                                          '1)))
                                                      (_%target88378954%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1955019551%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl88398957%_)
                                                      (_%__match1961219613%_
                                                       _%e88069022%_
                                                       _%hd88059026%_
                                                       _%tl88049029%_
                                                       _%e88099032%_
                                                       _%hd88089036%_
                                                       _%tl88079039%_
                                                       _%e88129042%_
                                                       _%hd88119046%_
                                                       _%tl88109049%_
                                                       _%__splice1955019551%_
                                                       _%target88378954%_
                                                       _%tl88398957%_)
                                                      (if (gx#stx-pair?
                                                           _%tl88079039%_)
                                                          (let ((_%e88568889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl88079039%_)))
                    (let ((_%tl88548896%_
                           (let () (declare (not safe)) (##cdr _%e88568889%_)))
                          (_%hd88558893%_
                           (let ()
                             (declare (not safe))
                             (##car _%e88568889%_))))
                      (if (gx#stx-null? _%tl88548896%_)
                          (_%__match1963219633%_
                           _%e88069022%_
                           _%hd88059026%_
                           _%tl88049029%_
                           _%e88099032%_
                           _%hd88089036%_
                           _%tl88079039%_
                           _%e88568889%_
                           _%hd88558893%_
                           _%tl88548896%_)
                          (let () (declare (not safe)) (_%g87988862%_)))))
                  (let () (declare (not safe)) (_%g87988862%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _%tl88079039%_)
                                                  (let ((_%e88568889%_
                                                         (gx#syntax-e
                                                          _%tl88079039%_)))
                                                    (let ((_%tl88548896%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e88568889%_)))
                                                          (_%hd88558893%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e88568889%_))))
                                                      (if (gx#stx-null?
                                                           _%tl88548896%_)
                                                          (_%__match1963219633%_
                                                           _%e88069022%_
                                                           _%hd88059026%_
                                                           _%tl88049029%_
                                                           _%e88099032%_
                                                           _%hd88089036%_
                                                           _%tl88079039%_
                                                           _%e88568889%_
                                                           _%hd88558893%_
                                                           _%tl88548896%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g87988862%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g87988862%_)))))))
                                  (if (gx#stx-pair? _%tl88079039%_)
                                      (let ((_%e88568889%_
                                             (gx#syntax-e _%tl88079039%_)))
                                        (let ((_%tl88548896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88568889%_)))
                                              (_%hd88558893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88568889%_))))
                                          (if (gx#stx-null? _%tl88548896%_)
                                              (_%__match1963219633%_
                                               _%e88069022%_
                                               _%hd88059026%_
                                               _%tl88049029%_
                                               _%e88099032%_
                                               _%hd88089036%_
                                               _%tl88079039%_
                                               _%e88568889%_
                                               _%hd88558893%_
                                               _%tl88548896%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g87988862%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g87988862%_))))))
                          (let () (declare (not safe)) (_%g87988862%_)))))
                  (let () (declare (not safe)) (_%g87988862%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def*|
      (lambda (_%$stx9133%_)
        (let* ((_%g91379161%_
                (lambda (_%g91389157%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g91389157%_)))
               (_%g91369246%_
                (lambda (_%g91389165%_)
                  (if (gx#stx-pair? _%g91389165%_)
                      (let ((_%e91439168%_ (gx#syntax-e _%g91389165%_)))
                        (let ((_%hd91429172%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e91439168%_)))
                              (_%tl91419175%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e91439168%_))))
                          (if (gx#stx-pair? _%tl91419175%_)
                              (let ((_%e91469178%_
                                     (gx#syntax-e _%tl91419175%_)))
                                (let ((_%hd91459182%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e91469178%_)))
                                      (_%tl91449185%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e91469178%_))))
                                  (if (gx#stx-pair/null? _%tl91449185%_)
                                      (let ((_g20997_
                                             (gx#syntax-split-splice
                                              _%tl91449185%_
                                              '0)))
                                        (begin
                                          (let ((_g20998_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20997_)
                                                       (##vector-length
                                                        _g20997_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20998_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20998_)))
                                          (let ((_%target91479188%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20997_ 0)))
                                                (_%tl91499191%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20997_ 1))))
                                            (if (gx#stx-null? _%tl91499191%_)
                                                (letrec ((_%loop91509194%_
                                                          (lambda (_%hd91489198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clauses91549201%_)
                    (if (gx#stx-pair? _%hd91489198%_)
                        (let ((_%e91519204%_ (gx#syntax-e _%hd91489198%_)))
                          (let ((_%lp-hd91529208%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e91519204%_)))
                                (_%lp-tl91539211%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e91519204%_))))
                            (_%loop91509194%_
                             _%lp-tl91539211%_
                             (cons _%lp-hd91529208%_ _%clauses91549201%_))))
                        (let ((_%clauses91559214%_
                               (reverse _%clauses91549201%_)))
                          ((lambda (_%L9218%_ _%L9220%_)
                             (if (gx#identifier? _%L9220%_)
                                 (cons (gx#datum->syntax '#f 'define-values)
                                       (cons (cons _%L9220%_ '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'case-lambda)
                                                         (foldr (lambda (_%g92379240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g92389243%_)
                          (cons _%g92379240%_ _%g92389243%_))
                        '()
                        _%L9218%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 (_%g91379161%_ _%g91389165%_)))
                           _%clauses91559214%_
                           _%hd91459182%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop91509194%_
                                                   _%target91479188%_
                                                   '()))
                                                (_%g91379161%_
                                                 _%g91389165%_)))))
                                      (_%g91379161%_ _%g91389165%_))))
                              (_%g91379161%_ _%g91389165%_))))
                      (_%g91379161%_ _%g91389165%_)))))
          (_%g91369246%_ _%$stx9133%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#defvalues|
      (lambda (_%$stx9251%_)
        (let* ((_%g92559273%_
                (lambda (_%g92569269%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g92569269%_)))
               (_%g92549328%_
                (lambda (_%g92569277%_)
                  (if (gx#stx-pair? _%g92569277%_)
                      (let ((_%e92619280%_ (gx#syntax-e _%g92569277%_)))
                        (let ((_%hd92609284%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e92619280%_)))
                              (_%tl92599287%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e92619280%_))))
                          (if (gx#stx-pair? _%tl92599287%_)
                              (let ((_%e92649290%_
                                     (gx#syntax-e _%tl92599287%_)))
                                (let ((_%hd92639294%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e92649290%_)))
                                      (_%tl92629297%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e92649290%_))))
                                  (if (gx#stx-pair? _%tl92629297%_)
                                      (let ((_%e92679300%_
                                             (gx#syntax-e _%tl92629297%_)))
                                        (let ((_%hd92669304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e92679300%_)))
                                              (_%tl92659307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e92679300%_))))
                                          (if (gx#stx-null? _%tl92659307%_)
                                              ((lambda (_%L9310%_ _%L9312%_)
                                                 (if (gx#identifier-list?
                                                      _%L9312%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons _%L9312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L9310%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g92559273%_
                                                      _%g92569277%_)))
                                               _%hd92669304%_
                                               _%hd92639294%_)
                                              (_%g92559273%_ _%g92569277%_))))
                                      (_%g92559273%_ _%g92569277%_))))
                              (_%g92559273%_ _%g92569277%_))))
                      (_%g92559273%_ _%g92569277%_)))))
          (_%g92549328%_ _%$stx9251%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#case|
      (lambda (_%$stx9332%_)
        (let* ((_%g93369360%_
                (lambda (_%g93379356%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g93379356%_)))
               (_%g93359445%_
                (lambda (_%g93379364%_)
                  (if (gx#stx-pair? _%g93379364%_)
                      (let ((_%e93429367%_ (gx#syntax-e _%g93379364%_)))
                        (let ((_%hd93419371%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e93429367%_)))
                              (_%tl93409374%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e93429367%_))))
                          (if (gx#stx-pair? _%tl93409374%_)
                              (let ((_%e93459377%_
                                     (gx#syntax-e _%tl93409374%_)))
                                (let ((_%hd93449381%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e93459377%_)))
                                      (_%tl93439384%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e93459377%_))))
                                  (if (gx#stx-pair/null? _%tl93439384%_)
                                      (let ((_g20999_
                                             (gx#syntax-split-splice
                                              _%tl93439384%_
                                              '0)))
                                        (begin
                                          (let ((_g21000_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20999_)
                                                       (##vector-length
                                                        _g20999_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21000_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21000_)))
                                          (let ((_%target93469387%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20999_ 0)))
                                                (_%tl93489390%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20999_ 1))))
                                            (if (gx#stx-null? _%tl93489390%_)
                                                (letrec ((_%loop93499393%_
                                                          (lambda (_%hd93479397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause93539400%_)
                    (if (gx#stx-pair? _%hd93479397%_)
                        (let ((_%e93509403%_ (gx#syntax-e _%hd93479397%_)))
                          (let ((_%lp-hd93519407%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e93509403%_)))
                                (_%lp-tl93529410%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e93509403%_))))
                            (_%loop93499393%_
                             _%lp-tl93529410%_
                             (cons _%lp-hd93519407%_ _%clause93539400%_))))
                        (let ((_%clause93549413%_
                               (reverse _%clause93539400%_)))
                          ((lambda (_%L9417%_ _%L9419%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (gx#datum->syntax '#f '$e)
                                               (cons _%L9419%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '~case)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$e)
                                                           (foldr (lambda (_%g94369439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g94379442%_)
                            (cons _%g94369439%_ _%g94379442%_))
                          '()
                          _%L9417%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%clause93549413%_
                           _%hd93449381%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop93499393%_
                                                   _%target93469387%_
                                                   '()))
                                                (_%g93369360%_
                                                 _%g93379364%_)))))
                                      (_%g93369360%_ _%g93379364%_))))
                              (_%g93369360%_ _%g93379364%_))))
                      (_%g93369360%_ _%g93379364%_)))))
          (_%g93359445%_ _%$stx9332%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case|
      (lambda (_%stx9450%_)
        (letrec ((_%parse-clauses9453%_
                  (lambda (_%e11928%_ _%clauses11930%_)
                    (let _%lp11932%_ ((_%rest11935%_ _%clauses11930%_)
                                      (_%datums11937%_ '())
                                      (_%dispatch11938%_ '())
                                      (_%default11939%_ '#f))
                      (let* ((_%__stx1973119732%_ _%rest11935%_)
                             (_%g1194211954%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1973119732%_))))
                        (let ((_%__kont1973419735%_
                               (lambda (_%L11986%_ _%L11988%_)
                                 (let* ((_%__stx1963519636%_ _%L11988%_)
                                        (_%g1200612079%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1963519636%_))))
                                   (let ((_%__kont1963819639%_
                                          (lambda (_%L12444%_)
                                            (if (gx#stx-null? _%L11986%_)
                                                (let* ((_%g1245912467%_
                                                        (lambda (_%g1246012463%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1246012463%_)))
                                                       (_%g1245812486%_
                                                        (lambda (_%g1246012471%_)
                                                          ((lambda (_%L12474%_)
                                                             (let ()
                                                               (_%lp11932%_
                                                                '()
                                                                _%datums11937%_
                                                                _%dispatch11938%_
                                                                (cons _%L12444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%L12474%_ '())))))
                   _%g1246012471%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1245812486%_ _%e11928%_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9450%_
                                                 _%L11988%_))))
                                         (_%__kont1964019641%_
                                          (lambda (_%L12384%_)
                                            (if (gx#stx-null? _%L11986%_)
                                                (_%lp11932%_
                                                 '()
                                                 _%datums11937%_
                                                 _%dispatch11938%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1239812401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1239912404%_)
                        (cons _%g1239812401%_ _%g1239912404%_))
                      '()
                      _%L12384%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9450%_
                                                 _%L11988%_))))
                                         (_%__kont1964419645%_
                                          (lambda (_%L12269%_ _%L12271%_)
                                            (if (let ((__tmp21001
                                                       (foldr (lambda (_%g1228912292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1229012295%_)
                        (cons _%g1228912292%_ _%g1229012295%_))
                      '()
                      _%L12271%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (null? __tmp21001))
                                                (_%lp11932%_
                                                 _%L11986%_
                                                 _%datums11937%_
                                                 _%dispatch11938%_
                                                 _%default11939%_)
                                                (let* ((_%g1229812306%_
                                                        (lambda (_%g1229912302%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1229912302%_)))
                                                       (_%g1229712333%_
                                                        (lambda (_%g1229912310%_)
                                                          ((lambda (_%L12313%_)
                                                             (let ()
                                                               (_%lp11932%_
                                                                _%L11986%_
                                                                (cons (map gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (foldr (lambda (_%g1232412327%_
                                                   _%g1232512330%_)
                                            (cons _%g1232412327%_
                                                  _%g1232512330%_))
                                          '()
                                          _%L12271%_))
                              _%datums11937%_)
                        (cons (cons _%L12269%_ (cons _%L12313%_ '()))
                              _%dispatch11938%_)
                        _%default11939%_)))
                   _%g1229912310%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1229712333%_
                                                   _%e11928%_)))))
                                         (_%__kont1964819649%_
                                          (lambda (_%L12156%_ _%L12158%_)
                                            (if (let ((__tmp21002
                                                       (foldr (lambda (_%g1217712180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1217812183%_)
                        (cons _%g1217712180%_ _%g1217812183%_))
                      '()
                      _%L12158%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (null? __tmp21002))
                                                (_%lp11932%_
                                                 _%L11986%_
                                                 _%datums11937%_
                                                 _%dispatch11938%_
                                                 _%default11939%_)
                                                (_%lp11932%_
                                                 _%L11986%_
                                                 (cons (map gx#stx-e
                                                            (foldr (lambda (_%g1218512188%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1218612191%_)
                             (cons _%g1218512188%_ _%g1218612191%_))
                           '()
                           _%L12158%_))
               _%datums11937%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (foldr (lambda (_%g1219312196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1219412199%_)
                              (cons _%g1219312196%_ _%g1219412199%_))
                            '()
                            _%L12156%_))
               _%dispatch11938%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%default11939%_)))))
                                     (let* ((_%__match1972819729%_
                                             (lambda (_%e1205512086%_
                                                      _%hd1205412090%_
                                                      _%tl1205312093%_
                                                      _%__splice1965019651%_
                                                      _%target1205612096%_
                                                      _%tl1205812099%_)
                                               (letrec ((_%loop1205912102%_
                                                         (lambda (_%hd1205712106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1206312109%_)
                   (if (gx#stx-pair? _%hd1205712106%_)
                       (let ((_%e1206012112%_ (gx#syntax-e _%hd1205712106%_)))
                         (let ((_%lp-tl1206212119%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1206012112%_)))
                               (_%lp-hd1206112116%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1206012112%_))))
                           (_%loop1205912102%_
                            _%lp-tl1206212119%_
                            (cons _%lp-hd1206112116%_ _%datum1206312109%_))))
                       (let ((_%datum1206412122%_
                              (reverse _%datum1206312109%_)))
                         (if (gx#stx-pair/null? _%tl1205312093%_)
                             (let ((_%__splice1965219653%_
                                    (gx#syntax-split-splice
                                     _%tl1205312093%_
                                     '0)))
                               (let ((_%tl1206712129%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1965219653%_
                                         '1)))
                                     (_%target1206512126%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1965219653%_
                                         '0))))
                                 (if (gx#stx-null? _%tl1206712129%_)
                                     (letrec ((_%loop1206812132%_
                                               (lambda (_%hd1206612136%_
                                                        _%body1207212139%_)
                                                 (if (gx#stx-pair?
                                                      _%hd1206612136%_)
                                                     (let ((_%e1206912142%_
                                                            (gx#syntax-e
                                                             _%hd1206612136%_)))
                                                       (let ((_%lp-tl1207112149%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e1206912142%_)))
                     (_%lp-hd1207012146%_
                      (let () (declare (not safe)) (##car _%e1206912142%_))))
                 (_%loop1206812132%_
                  _%lp-tl1207112149%_
                  (cons _%lp-hd1207012146%_ _%body1207212139%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%body1207312152%_
                                                            (reverse _%body1207212139%_)))
                                                       (_%__kont1964819649%_
                                                        _%body1207312152%_
                                                        _%datum1206412122%_))))))
                                       (_%loop1206812132%_
                                        _%target1206512126%_
                                        '()))
                                     (let ()
                                       (declare (not safe))
                                       (_%g1200612079%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g1200612079%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1205912102%_
                                                  _%target1205612096%_
                                                  '()))))
                                            (_%__match1971419715%_
                                             (lambda (_%e1203512209%_
                                                      _%hd1203412213%_
                                                      _%tl1203312216%_
                                                      _%__splice1964619647%_
                                                      _%target1203612219%_
                                                      _%tl1203812222%_)
                                               (letrec ((_%loop1203912225%_
                                                         (lambda (_%hd1203712229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1204312232%_)
                   (if (gx#stx-pair? _%hd1203712229%_)
                       (let ((_%e1204012235%_ (gx#syntax-e _%hd1203712229%_)))
                         (let ((_%lp-tl1204212242%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1204012235%_)))
                               (_%lp-hd1204112239%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1204012235%_))))
                           (_%loop1203912225%_
                            _%lp-tl1204212242%_
                            (cons _%lp-hd1204112239%_ _%datum1204312232%_))))
                       (let ((_%datum1204412245%_
                              (reverse _%datum1204312232%_)))
                         (if (gx#stx-pair? _%tl1203312216%_)
                             (let ((_%e1204712249%_
                                    (gx#syntax-e _%tl1203312216%_)))
                               (let ((_%tl1204512256%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1204712249%_)))
                                     (_%hd1204612253%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1204712249%_))))
                                 (if (gx#identifier? _%hd1204612253%_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core/sugar~Sugar-2[1]#_g21003_|
                                          _%hd1204612253%_)
                                         (if (gx#stx-pair? _%tl1204512256%_)
                                             (let ((_%e1205012259%_
                                                    (gx#syntax-e
                                                     _%tl1204512256%_)))
                                               (let ((_%tl1204812266%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1205012259%_)))
                                                     (_%hd1204912263%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1205012259%_))))
                                                 (if (gx#stx-null?
                                                      _%tl1204812266%_)
                                                     (_%__kont1964419645%_
                                                      _%hd1204912263%_
                                                      _%datum1204412245%_)
                                                     (_%__match1972819729%_
                                                      _%e1203512209%_
                                                      _%hd1203412213%_
                                                      _%tl1203312216%_
                                                      _%__splice1964619647%_
                                                      _%target1203612219%_
                                                      _%tl1203812222%_))))
                                             (_%__match1972819729%_
                                              _%e1203512209%_
                                              _%hd1203412213%_
                                              _%tl1203312216%_
                                              _%__splice1964619647%_
                                              _%target1203612219%_
                                              _%tl1203812222%_))
                                         (_%__match1972819729%_
                                          _%e1203512209%_
                                          _%hd1203412213%_
                                          _%tl1203312216%_
                                          _%__splice1964619647%_
                                          _%target1203612219%_
                                          _%tl1203812222%_))
                                     (_%__match1972819729%_
                                      _%e1203512209%_
                                      _%hd1203412213%_
                                      _%tl1203312216%_
                                      _%__splice1964619647%_
                                      _%target1203612219%_
                                      _%tl1203812222%_))))
                             (_%__match1972819729%_
                              _%e1203512209%_
                              _%hd1203412213%_
                              _%tl1203312216%_
                              _%__splice1964619647%_
                              _%target1203612219%_
                              _%tl1203812222%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1203912225%_
                                                  _%target1203612219%_
                                                  '()))))
                                            (_%__match1970019701%_
                                             (lambda (_%e1202112344%_
                                                      _%hd1202012348%_
                                                      _%tl1201912351%_
                                                      _%__splice1964219643%_
                                                      _%target1202212354%_
                                                      _%tl1202412357%_)
                                               (letrec ((_%loop1202512360%_
                                                         (lambda (_%hd1202312364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body1202912367%_)
                   (if (gx#stx-pair? _%hd1202312364%_)
                       (let ((_%e1202612370%_ (gx#syntax-e _%hd1202312364%_)))
                         (let ((_%lp-tl1202812377%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1202612370%_)))
                               (_%lp-hd1202712374%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1202612370%_))))
                           (_%loop1202512360%_
                            _%lp-tl1202812377%_
                            (cons _%lp-hd1202712374%_ _%body1202912367%_))))
                       (let ((_%body1203012380%_ (reverse _%body1202912367%_)))
                         (_%__kont1964019641%_ _%body1203012380%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1202512360%_
                                                  _%target1202212354%_
                                                  '())))))
                                       (if (gx#stx-pair? _%__stx1963519636%_)
                                           (let ((_%e1201112414%_
                                                  (gx#syntax-e
                                                   _%__stx1963519636%_)))
                                             (let ((_%tl1200912421%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e1201112414%_)))
                                                   (_%hd1201012418%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e1201112414%_))))
                                               (if (gx#identifier?
                                                    _%hd1201012418%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/sugar~Sugar-2[1]#_g21004_|
                                                        _%hd1201012418%_)
                                                       (if (gx#stx-pair?
                                                            _%tl1200912421%_)
                                                           (let ((_%e1201412424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl1200912421%_)))
                     (let ((_%tl1201212431%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1201412424%_)))
                           (_%hd1201312428%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1201412424%_))))
                       (if (gx#identifier? _%hd1201312428%_)
                           (if (gx#free-identifier=?
                                |gerbil/core/sugar~Sugar-2[1]#_g21005_|
                                _%hd1201312428%_)
                               (if (gx#stx-pair? _%tl1201212431%_)
                                   (let ((_%e1201712434%_
                                          (gx#syntax-e _%tl1201212431%_)))
                                     (let ((_%tl1201512441%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e1201712434%_)))
                                           (_%hd1201612438%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e1201712434%_))))
                                       (if (gx#stx-null? _%tl1201512441%_)
                                           (_%__kont1963819639%_
                                            _%hd1201612438%_)
                                           (if (gx#stx-pair/null?
                                                _%tl1200912421%_)
                                               (let ((_%__splice1964219643%_
                                                      (gx#syntax-split-splice
                                                       _%tl1200912421%_
                                                       '0)))
                                                 (let ((_%tl1202412357%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1964219643%_
                                                           '1)))
                                                       (_%target1202212354%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1964219643%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1202412357%_)
                                                       (_%__match1970019701%_
                                                        _%e1201112414%_
                                                        _%hd1201012418%_
                                                        _%tl1200912421%_
                                                        _%__splice1964219643%_
                                                        _%target1202212354%_
                                                        _%tl1202412357%_)
                                                       (if (gx#stx-pair/null?
                                                            _%hd1201012418%_)
                                                           (let ((_%__splice1964619647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%hd1201012418%_ '0)))
                     (let ((_%tl1203812222%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1964619647%_ '1)))
                           (_%target1203612219%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1964619647%_ '0))))
                       (if (gx#stx-null? _%tl1203812222%_)
                           (_%__match1971419715%_
                            _%e1201112414%_
                            _%hd1201012418%_
                            _%tl1200912421%_
                            _%__splice1964619647%_
                            _%target1203612219%_
                            _%tl1203812222%_)
                           (let () (declare (not safe)) (_%g1200612079%_)))))
                   (let () (declare (not safe)) (_%g1200612079%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _%hd1201012418%_)
                                                   (let ((_%__splice1964619647%_
                                                          (gx#syntax-split-splice
                                                           _%hd1201012418%_
                                                           '0)))
                                                     (let ((_%tl1203812222%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1964619647%_
                                                               '1)))
                                                           (_%target1203612219%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1964619647%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1203812222%_)
                                                           (_%__match1971419715%_
                                                            _%e1201112414%_
                                                            _%hd1201012418%_
                                                            _%tl1200912421%_
                                                            _%__splice1964619647%_
                                                            _%target1203612219%_
                                                            _%tl1203812222%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1200612079%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1200612079%_)))))))
                                   (if (gx#stx-pair/null? _%tl1200912421%_)
                                       (let ((_%__splice1964219643%_
                                              (gx#syntax-split-splice
                                               _%tl1200912421%_
                                               '0)))
                                         (let ((_%tl1202412357%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1964219643%_
                                                   '1)))
                                               (_%target1202212354%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1964219643%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1202412357%_)
                                               (_%__match1970019701%_
                                                _%e1201112414%_
                                                _%hd1201012418%_
                                                _%tl1200912421%_
                                                _%__splice1964219643%_
                                                _%target1202212354%_
                                                _%tl1202412357%_)
                                               (if (gx#stx-pair/null?
                                                    _%hd1201012418%_)
                                                   (let ((_%__splice1964619647%_
                                                          (gx#syntax-split-splice
                                                           _%hd1201012418%_
                                                           '0)))
                                                     (let ((_%tl1203812222%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1964619647%_
                                                               '1)))
                                                           (_%target1203612219%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1964619647%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1203812222%_)
                                                           (_%__match1971419715%_
                                                            _%e1201112414%_
                                                            _%hd1201012418%_
                                                            _%tl1200912421%_
                                                            _%__splice1964619647%_
                                                            _%target1203612219%_
                                                            _%tl1203812222%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1200612079%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1200612079%_))))))
                                       (if (gx#stx-pair/null? _%hd1201012418%_)
                                           (let ((_%__splice1964619647%_
                                                  (gx#syntax-split-splice
                                                   _%hd1201012418%_
                                                   '0)))
                                             (let ((_%tl1203812222%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1964619647%_
                                                       '1)))
                                                   (_%target1203612219%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1964619647%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1203812222%_)
                                                   (_%__match1971419715%_
                                                    _%e1201112414%_
                                                    _%hd1201012418%_
                                                    _%tl1200912421%_
                                                    _%__splice1964619647%_
                                                    _%target1203612219%_
                                                    _%tl1203812222%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1200612079%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1200612079%_)))))
                               (if (gx#stx-pair/null? _%tl1200912421%_)
                                   (let ((_%__splice1964219643%_
                                          (gx#syntax-split-splice
                                           _%tl1200912421%_
                                           '0)))
                                     (let ((_%tl1202412357%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1964219643%_
                                               '1)))
                                           (_%target1202212354%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1964219643%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1202412357%_)
                                           (_%__match1970019701%_
                                            _%e1201112414%_
                                            _%hd1201012418%_
                                            _%tl1200912421%_
                                            _%__splice1964219643%_
                                            _%target1202212354%_
                                            _%tl1202412357%_)
                                           (if (gx#stx-pair/null?
                                                _%hd1201012418%_)
                                               (let ((_%__splice1964619647%_
                                                      (gx#syntax-split-splice
                                                       _%hd1201012418%_
                                                       '0)))
                                                 (let ((_%tl1203812222%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1964619647%_
                                                           '1)))
                                                       (_%target1203612219%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1964619647%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1203812222%_)
                                                       (_%__match1971419715%_
                                                        _%e1201112414%_
                                                        _%hd1201012418%_
                                                        _%tl1200912421%_
                                                        _%__splice1964619647%_
                                                        _%target1203612219%_
                                                        _%tl1203812222%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g1200612079%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1200612079%_))))))
                                   (if (gx#stx-pair/null? _%hd1201012418%_)
                                       (let ((_%__splice1964619647%_
                                              (gx#syntax-split-splice
                                               _%hd1201012418%_
                                               '0)))
                                         (let ((_%tl1203812222%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1964619647%_
                                                   '1)))
                                               (_%target1203612219%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1964619647%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1203812222%_)
                                               (_%__match1971419715%_
                                                _%e1201112414%_
                                                _%hd1201012418%_
                                                _%tl1200912421%_
                                                _%__splice1964619647%_
                                                _%target1203612219%_
                                                _%tl1203812222%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1200612079%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g1200612079%_)))))
                           (if (gx#stx-pair/null? _%tl1200912421%_)
                               (let ((_%__splice1964219643%_
                                      (gx#syntax-split-splice
                                       _%tl1200912421%_
                                       '0)))
                                 (let ((_%tl1202412357%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1964219643%_
                                           '1)))
                                       (_%target1202212354%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1964219643%_
                                           '0))))
                                   (if (gx#stx-null? _%tl1202412357%_)
                                       (_%__match1970019701%_
                                        _%e1201112414%_
                                        _%hd1201012418%_
                                        _%tl1200912421%_
                                        _%__splice1964219643%_
                                        _%target1202212354%_
                                        _%tl1202412357%_)
                                       (if (gx#stx-pair/null? _%hd1201012418%_)
                                           (let ((_%__splice1964619647%_
                                                  (gx#syntax-split-splice
                                                   _%hd1201012418%_
                                                   '0)))
                                             (let ((_%tl1203812222%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1964619647%_
                                                       '1)))
                                                   (_%target1203612219%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1964619647%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1203812222%_)
                                                   (_%__match1971419715%_
                                                    _%e1201112414%_
                                                    _%hd1201012418%_
                                                    _%tl1200912421%_
                                                    _%__splice1964619647%_
                                                    _%target1203612219%_
                                                    _%tl1203812222%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1200612079%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1200612079%_))))))
                               (if (gx#stx-pair/null? _%hd1201012418%_)
                                   (let ((_%__splice1964619647%_
                                          (gx#syntax-split-splice
                                           _%hd1201012418%_
                                           '0)))
                                     (let ((_%tl1203812222%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1964619647%_
                                               '1)))
                                           (_%target1203612219%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1964619647%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1203812222%_)
                                           (_%__match1971419715%_
                                            _%e1201112414%_
                                            _%hd1201012418%_
                                            _%tl1200912421%_
                                            _%__splice1964619647%_
                                            _%target1203612219%_
                                            _%tl1203812222%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1200612079%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1200612079%_)))))))
                   (if (gx#stx-pair/null? _%tl1200912421%_)
                       (let ((_%__splice1964219643%_
                              (gx#syntax-split-splice _%tl1200912421%_ '0)))
                         (let ((_%tl1202412357%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1964219643%_ '1)))
                               (_%target1202212354%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1964219643%_ '0))))
                           (if (gx#stx-null? _%tl1202412357%_)
                               (_%__match1970019701%_
                                _%e1201112414%_
                                _%hd1201012418%_
                                _%tl1200912421%_
                                _%__splice1964219643%_
                                _%target1202212354%_
                                _%tl1202412357%_)
                               (if (gx#stx-pair/null? _%hd1201012418%_)
                                   (let ((_%__splice1964619647%_
                                          (gx#syntax-split-splice
                                           _%hd1201012418%_
                                           '0)))
                                     (let ((_%tl1203812222%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1964619647%_
                                               '1)))
                                           (_%target1203612219%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1964619647%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1203812222%_)
                                           (_%__match1971419715%_
                                            _%e1201112414%_
                                            _%hd1201012418%_
                                            _%tl1200912421%_
                                            _%__splice1964619647%_
                                            _%target1203612219%_
                                            _%tl1203812222%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1200612079%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1200612079%_))))))
                       (if (gx#stx-pair/null? _%hd1201012418%_)
                           (let ((_%__splice1964619647%_
                                  (gx#syntax-split-splice
                                   _%hd1201012418%_
                                   '0)))
                             (let ((_%tl1203812222%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1964619647%_
                                       '1)))
                                   (_%target1203612219%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1964619647%_
                                       '0))))
                               (if (gx#stx-null? _%tl1203812222%_)
                                   (_%__match1971419715%_
                                    _%e1201112414%_
                                    _%hd1201012418%_
                                    _%tl1200912421%_
                                    _%__splice1964619647%_
                                    _%target1203612219%_
                                    _%tl1203812222%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g1200612079%_)))))
                           (let () (declare (not safe)) (_%g1200612079%_)))))
               (if (gx#stx-pair/null? _%hd1201012418%_)
                   (let ((_%__splice1964619647%_
                          (gx#syntax-split-splice _%hd1201012418%_ '0)))
                     (let ((_%tl1203812222%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1964619647%_ '1)))
                           (_%target1203612219%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1964619647%_ '0))))
                       (if (gx#stx-null? _%tl1203812222%_)
                           (_%__match1971419715%_
                            _%e1201112414%_
                            _%hd1201012418%_
                            _%tl1200912421%_
                            _%__splice1964619647%_
                            _%target1203612219%_
                            _%tl1203812222%_)
                           (let () (declare (not safe)) (_%g1200612079%_)))))
                   (let () (declare (not safe)) (_%g1200612079%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%hd1201012418%_)
                                                       (let ((_%__splice1964619647%_
                                                              (gx#syntax-split-splice
                                                               _%hd1201012418%_
                                                               '0)))
                                                         (let ((_%tl1203812222%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice1964619647%_ '1)))
                       (_%target1203612219%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice1964619647%_ '0))))
                   (if (gx#stx-null? _%tl1203812222%_)
                       (_%__match1971419715%_
                        _%e1201112414%_
                        _%hd1201012418%_
                        _%tl1200912421%_
                        _%__splice1964619647%_
                        _%target1203612219%_
                        _%tl1203812222%_)
                       (let () (declare (not safe)) (_%g1200612079%_)))))
               (let () (declare (not safe)) (_%g1200612079%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_%g1200612079%_))))))))
                              (_%__kont1973619737%_
                               (lambda ()
                                 (_%check-duplicate-datums9455%_
                                  _%datums11937%_)
                                 (values (reverse _%datums11937%_)
                                         (reverse _%dispatch11938%_)
                                         (let ((_%$e11965%_ _%default11939%_))
                                           (if _%$e11965%_
                                               _%$e11965%_
                                               '#!void))))))
                          (let ((_%g1194111969%_
                                 (lambda ()
                                   (if (gx#stx-null? _%__stx1973119732%_)
                                       (_%__kont1973619737%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g1194211954%_))))))
                            (if (gx#stx-pair? _%__stx1973119732%_)
                                (let ((_%e1194811976%_
                                       (gx#syntax-e _%__stx1973119732%_)))
                                  (let ((_%tl1194611983%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1194811976%_)))
                                        (_%hd1194711980%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1194811976%_))))
                                    (_%__kont1973419735%_
                                     _%tl1194611983%_
                                     _%hd1194711980%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g1194111969%_)))))))))
                 (_%check-duplicate-datums9455%_
                  (lambda (_%datums11916%_)
                    (let ((_%ht11919%_ (make-hash-table)))
                      (for-each
                       (lambda (_%lst11922%_)
                         (for-each
                          (lambda (_%datum11925%_)
                            (if (hash-get _%ht11919%_ _%datum11925%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _%stx9450%_
                                 _%datum11925%_)
                                (hash-put! _%ht11919%_ _%datum11925%_ '#t)))
                          _%lst11922%_))
                       _%datums11916%_))))
                 (_%count-datums9456%_
                  (lambda (_%datums11909%_)
                    (foldl (lambda (_%lst11912%_ _%r11914%_)
                             (+ (length _%lst11912%_) _%r11914%_))
                           '0
                           _%datums11909%_)))
                 (_%symbolic-datums?9457%_
                  (lambda (_%datums11903%_)
                    (andmap (lambda (_%lst11906%_)
                              (andmap symbol? _%lst11906%_))
                            _%datums11903%_)))
                 (_%char-datums?9458%_
                  (lambda (_%datums11897%_)
                    (andmap (lambda (_%lst11900%_) (andmap char? _%lst11900%_))
                            _%datums11897%_)))
                 (_%fixnum-datums?9459%_
                  (lambda (_%datums11891%_)
                    (andmap (lambda (_%lst11894%_)
                              (andmap fixnum? _%lst11894%_))
                            _%datums11891%_)))
                 (_%eq-datums?9460%_
                  (lambda (_%datums11874%_)
                    (andmap (lambda (_%lst11877%_)
                              (andmap (lambda (_%x11880%_)
                                        (let ((_%$e11883%_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbol? _%x11880%_))))
                                          (if _%$e11883%_
                                              _%$e11883%_
                                              (let ((_%$e11887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (keyword? _%x11880%_))))
                                                (if _%$e11887%_
                                                    _%$e11887%_
                                                    (immediate?
                                                     _%x11880%_))))))
                                      _%lst11877%_))
                            _%datums11874%_)))
                 (_%generate-simple-case9461%_
                  (lambda (_%e11638%_
                           _%datums11640%_
                           _%dispatch11641%_
                           _%default11642%_)
                    (let* ((_%g1164411652%_
                            (lambda (_%g1164511648%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1164511648%_)))
                           (_%g1164311870%_
                            (lambda (_%g1164511656%_)
                              ((lambda (_%L11659%_)
                                 (let _%recur11671%_ ((_%datums11674%_
                                                       _%datums11640%_)
                                                      (_%dispatch11676%_
                                                       _%dispatch11641%_))
                                   (let* ((_%__stx1974919750%_ _%datums11674%_)
                                          (_%g1167911700%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx1974919750%_))))
                                     (let ((_%__kont1975219753%_
                                            (lambda (_%L11758%_ _%L11760%_)
                                              (let* ((_%g1178011792%_
                                                      (lambda (_%g1178111788%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1178111788%_)))
                                                     (_%g1177911862%_
                                                      (lambda (_%g1178111796%_)
                                                        (if (gx#stx-pair?
                                                             _%g1178111796%_)
                                                            (let ((_%e1178611799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%g1178111796%_)))
                      (let ((_%hd1178511803%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1178611799%_)))
                            (_%tl1178411806%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1178611799%_))))
                        ((lambda (_%L11809%_ _%L11811%_)
                           (let* ((_%g1182311831%_
                                   (lambda (_%g1182411827%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g1182411827%_)))
                                  (_%g1182211858%_
                                   (lambda (_%g1182411835%_)
                                     ((lambda (_%L11838%_)
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'if)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'or)
                                                            (foldr (lambda (_%g1184911852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1185011855%_)
                             (cons (cons (gx#datum->syntax '#f '~case-test)
                                         (cons _%g1184911852%_
                                               (cons _%L11659%_ '())))
                                   _%g1185011855%_))
                           '()
                           _%L11760%_))
              (cons _%L11811%_ (cons _%L11838%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _%g1182411835%_))))
                             (_%g1182211858%_
                              (_%recur11671%_ _%L11758%_ _%L11809%_))))
                         _%tl1178411806%_
                         _%hd1178511803%_)))
                    (_%g1178011792%_ _%g1178111796%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1177911862%_
                                                 _%dispatch11676%_))))
                                           (_%__kont1975619757%_
                                            (lambda () _%default11642%_)))
                                       (let ((_%__match1977219773%_
                                              (lambda (_%e1168511718%_
                                                       _%hd1168411722%_
                                                       _%tl1168311725%_
                                                       _%__splice1975419755%_
                                                       _%target1168611728%_
                                                       _%tl1168811731%_)
                                                (letrec ((_%loop1168911734%_
                                                          (lambda (_%hd1168711738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%datum1169311741%_)
                    (if (gx#stx-pair? _%hd1168711738%_)
                        (let ((_%e1169011744%_ (gx#syntax-e _%hd1168711738%_)))
                          (let ((_%lp-tl1169211751%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1169011744%_)))
                                (_%lp-hd1169111748%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1169011744%_))))
                            (_%loop1168911734%_
                             _%lp-tl1169211751%_
                             (cons _%lp-hd1169111748%_ _%datum1169311741%_))))
                        (let ((_%datum1169411754%_
                               (reverse _%datum1169311741%_)))
                          (_%__kont1975219753%_
                           _%tl1168311725%_
                           _%datum1169411754%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1168911734%_
                                                   _%target1168611728%_
                                                   '())))))
                                         (if (gx#stx-pair? _%__stx1974919750%_)
                                             (let ((_%e1168511718%_
                                                    (gx#syntax-e
                                                     _%__stx1974919750%_)))
                                               (let ((_%tl1168311725%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1168511718%_)))
                                                     (_%hd1168411722%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1168511718%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%hd1168411722%_)
                                                     (let ((_%__splice1975419755%_
                                                            (gx#syntax-split-splice
                                                             _%hd1168411722%_
                                                             '0)))
                                                       (let ((_%tl1168811731%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice1975419755%_ '1)))
                     (_%target1168611728%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice1975419755%_ '0))))
                 (if (gx#stx-null? _%tl1168811731%_)
                     (_%__match1977219773%_
                      _%e1168511718%_
                      _%hd1168411722%_
                      _%tl1168311725%_
                      _%__splice1975419755%_
                      _%target1168611728%_
                      _%tl1168811731%_)
                     (_%__kont1975619757%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont1975619757%_))))
                                             (_%__kont1975619757%_)))))))
                               _%g1164511656%_))))
                      (_%g1164311870%_ _%e11638%_))))
                 (_%datum-dispatch-index9462%_
                  (lambda (_%datums11510%_)
                    (let _%lp11513%_ ((_%rest11516%_ _%datums11510%_)
                                      (_%ix11518%_ '0)
                                      (_%r11519%_ '()))
                      (let* ((_%__stx1977519776%_ _%rest11516%_)
                             (_%g1152211543%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1977519776%_))))
                        (let ((_%__kont1977819779%_
                               (lambda (_%L11601%_ _%L11603%_)
                                 (_%lp11513%_
                                  _%L11601%_
                                  (fx1+ _%ix11518%_)
                                  (foldl (lambda (_%x11622%_ _%r11624%_)
                                           (cons (cons _%x11622%_ _%ix11518%_)
                                                 _%r11624%_))
                                         _%r11519%_
                                         (foldr (lambda (_%g1162511628%_
                                                         _%g1162611631%_)
                                                  (cons _%g1162511628%_
                                                        _%g1162611631%_))
                                                '()
                                                _%L11603%_)))))
                              (_%__kont1978219783%_ (lambda () _%r11519%_)))
                          (let ((_%__match1979819799%_
                                 (lambda (_%e1152811561%_
                                          _%hd1152711565%_
                                          _%tl1152611568%_
                                          _%__splice1978019781%_
                                          _%target1152911571%_
                                          _%tl1153111574%_)
                                   (letrec ((_%loop1153211577%_
                                             (lambda (_%hd1153011581%_
                                                      _%datum1153611584%_)
                                               (if (gx#stx-pair?
                                                    _%hd1153011581%_)
                                                   (let ((_%e1153311587%_
                                                          (gx#syntax-e
                                                           _%hd1153011581%_)))
                                                     (let ((_%lp-tl1153511594%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e1153311587%_)))
                                                           (_%lp-hd1153411591%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e1153311587%_))))
                                                       (_%loop1153211577%_
                                                        _%lp-tl1153511594%_
                                                        (cons _%lp-hd1153411591%_
                                                              _%datum1153611584%_))))
                                                   (let ((_%datum1153711597%_
                                                          (reverse _%datum1153611584%_)))
                                                     (_%__kont1977819779%_
                                                      _%tl1152611568%_
                                                      _%datum1153711597%_))))))
                                     (_%loop1153211577%_
                                      _%target1152911571%_
                                      '())))))
                            (if (gx#stx-pair? _%__stx1977519776%_)
                                (let ((_%e1152811561%_
                                       (gx#syntax-e _%__stx1977519776%_)))
                                  (let ((_%tl1152611568%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1152811561%_)))
                                        (_%hd1152711565%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1152811561%_))))
                                    (if (gx#stx-pair/null? _%hd1152711565%_)
                                        (let ((_%__splice1978019781%_
                                               (gx#syntax-split-splice
                                                _%hd1152711565%_
                                                '0)))
                                          (let ((_%tl1153111574%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1978019781%_
                                                    '1)))
                                                (_%target1152911571%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1978019781%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1153111574%_)
                                                (_%__match1979819799%_
                                                 _%e1152811561%_
                                                 _%hd1152711565%_
                                                 _%tl1152611568%_
                                                 _%__splice1978019781%_
                                                 _%target1152911571%_
                                                 _%tl1153111574%_)
                                                (_%__kont1978219783%_))))
                                        (_%__kont1978219783%_))))
                                (_%__kont1978219783%_))))))))
                 (_%duplicate-indexes?9463%_
                  (lambda (_%xs11491%_)
                    (let ((_%ht11494%_ (make-hash-table-eq)))
                      (let _%lp11497%_ ((_%rest11500%_ _%xs11491%_))
                        (if (let () (declare (not safe)) (pair? _%rest11500%_))
                            (let* ((_%ix11503%_ (car _%rest11500%_))
                                   (_%$e11506%_
                                    (hash-get _%ht11494%_ _%ix11503%_)))
                              (if _%$e11506%_
                                  _%$e11506%_
                                  (begin
                                    (hash-put! _%ht11494%_ _%ix11503%_ '#t)
                                    (_%lp11497%_ (cdr _%rest11500%_)))))
                            '#f)))))
                 (_%generate-hash-dispatch-table9464%_
                  (lambda (_%indexes11460%_ _%hash-e11462%_)
                    (let _%lp11464%_ ((_%len11467%_
                                       (* '2 (length _%indexes11460%_))))
                      (let* ((_%hs11473%_
                              (map (lambda (_%x11470%_)
                                     (_%hash-e11462%_ (car _%x11470%_)))
                                   _%indexes11460%_))
                             (_%xs11479%_
                              (map (lambda (_%h11476%_)
                                     (fxmodulo _%h11476%_ _%len11467%_))
                                   _%hs11473%_)))
                        (if (_%duplicate-indexes?9463%_ _%xs11479%_)
                            (if (< _%len11467%_ '131072)
                                (_%lp11464%_
                                 (quotient
                                  (let ()
                                    (declare (not safe))
                                    (##fx* _%len11467%_ '3))
                                  '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _%stx9450%_
                                 _%indexes11460%_))
                            (let ((_%tab11484%_
                                   (make-vector _%len11467%_ '#f)))
                              (for-each
                               (lambda (_%entry11487%_ _%x11489%_)
                                 (vector-set!
                                  _%tab11484%_
                                  _%x11489%_
                                  _%entry11487%_))
                               _%indexes11460%_
                               _%xs11479%_)
                              _%tab11484%_))))))
                 (_%generate-symbolic-dispatch9465%_
                  (lambda (_%e11063%_
                           _%datums11065%_
                           _%dispatch11066%_
                           _%default11067%_)
                    (let* ((_%indexes11069%_
                            (_%datum-dispatch-index9462%_ _%datums11065%_))
                           (_%tab11072%_
                            (_%generate-hash-dispatch-table9464%_
                             _%indexes11069%_
                             symbol-hash)))
                      (if (= (length _%dispatch11066%_) '1)
                          (let* ((_%tab11080%_
                                  (vector-map
                                   (lambda (_%x11077%_)
                                     (if _%x11077%_ (car _%x11077%_) '#f))
                                   _%tab11072%_))
                                 (_%g1108311121%_
                                  (lambda (_%g1108411117%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1108411117%_)))
                                 (_%g1108211252%_
                                  (lambda (_%g1108411125%_)
                                    (if (gx#stx-pair? _%g1108411125%_)
                                        (let ((_%e1109411128%_
                                               (gx#syntax-e _%g1108411125%_)))
                                          (let ((_%hd1109311132%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1109411128%_)))
                                                (_%tl1109211135%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1109411128%_))))
                                            (if (gx#stx-pair? _%tl1109211135%_)
                                                (let ((_%e1109711138%_
                                                       (gx#syntax-e
                                                        _%tl1109211135%_)))
                                                  (let ((_%hd1109611142%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1109711138%_)))
                                                        (_%tl1109511145%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1109711138%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1109511145%_)
                                                        (let ((_%e1110011148%_
                                                               (gx#syntax-e
                                                                _%tl1109511145%_)))
                                                          (let ((_%hd1109911152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1110011148%_)))
                        (_%tl1109811155%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1110011148%_))))
                    (if (gx#stx-pair? _%tl1109811155%_)
                        (let ((_%e1110311158%_ (gx#syntax-e _%tl1109811155%_)))
                          (let ((_%hd1110211162%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1110311158%_)))
                                (_%tl1110111165%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1110311158%_))))
                            (if (gx#stx-pair? _%hd1110211162%_)
                                (let ((_%e1110611168%_
                                       (gx#syntax-e _%hd1110211162%_)))
                                  (let ((_%hd1110511172%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1110611168%_)))
                                        (_%tl1110411175%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1110611168%_))))
                                    (if (gx#stx-null? _%tl1110411175%_)
                                        (if (gx#stx-pair? _%tl1110111165%_)
                                            (let ((_%e1110911178%_
                                                   (gx#syntax-e
                                                    _%tl1110111165%_)))
                                              (let ((_%hd1110811182%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1110911178%_)))
                                                    (_%tl1110711185%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1110911178%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1110711185%_)
                                                    (let ((_%e1111211188%_
                                                           (gx#syntax-e
                                                            _%tl1110711185%_)))
                                                      (let ((_%hd1111111192%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1111211188%_)))
                    (_%tl1111011195%_
                     (let () (declare (not safe)) (##cdr _%e1111211188%_))))
                (if (gx#stx-pair? _%tl1111011195%_)
                    (let ((_%e1111511198%_ (gx#syntax-e _%tl1111011195%_)))
                      (let ((_%hd1111411202%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1111511198%_)))
                            (_%tl1111311205%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1111511198%_))))
                        (if (gx#stx-null? _%tl1111311205%_)
                            ((lambda (_%L11208%_
                                      _%L11210%_
                                      _%L11211%_
                                      _%L11212%_
                                      _%L11213%_
                                      _%L11214%_
                                      _%L11215%_)
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _%L11214%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '() (cons _%L11211%_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _%L11213%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _%L11210%_ '()))
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
                             (cons _%L11215%_ '()))
                       (cons (cons (gx#datum->syntax '#f 'let*)
                                   (cons (cons (cons (gx#datum->syntax '#f 'h)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##symbol-hash)
                         (cons _%L11215%_ '()))
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
                                     (cons _%L11208%_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'q)
                         (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                     (cons _%L11213%_
                                           (cons (gx#datum->syntax '#f 'ix)
                                                 '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons (gx#datum->syntax '#f 'if)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'eq?)
                         (cons (gx#datum->syntax '#f 'q)
                               (cons _%L11215%_ '())))
                   (cons _%L11212%_ (cons (cons _%L11214%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons (cons _%L11214%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))
                             _%hd1111411202%_
                             _%hd1111111192%_
                             _%hd1110811182%_
                             _%hd1110511172%_
                             _%hd1109911152%_
                             _%hd1109611142%_
                             _%hd1109311132%_)
                            (_%g1108311121%_ _%g1108411125%_))))
                    (_%g1108311121%_ _%g1108411125%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1108311121%_
                                                     _%g1108411125%_))))
                                            (_%g1108311121%_ _%g1108411125%_))
                                        (_%g1108311121%_ _%g1108411125%_))))
                                (_%g1108311121%_ _%g1108411125%_))))
                        (_%g1108311121%_ _%g1108411125%_))))
                (_%g1108311121%_ _%g1108411125%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1108311121%_
                                                 _%g1108411125%_))))
                                        (_%g1108311121%_ _%g1108411125%_)))))
                            (_%g1108211252%_
                             (list _%e11063%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch11066%_
                                   _%default11067%_
                                   _%tab11080%_
                                   (vector-length _%tab11080%_))))
                          (let* ((_%g1125611300%_
                                  (lambda (_%g1125711296%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1125711296%_)))
                                 (_%g1125511456%_
                                  (lambda (_%g1125711304%_)
                                    (if (gx#stx-pair? _%g1125711304%_)
                                        (let ((_%e1126711307%_
                                               (gx#syntax-e _%g1125711304%_)))
                                          (let ((_%hd1126611311%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1126711307%_)))
                                                (_%tl1126511314%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1126711307%_))))
                                            (if (gx#stx-pair? _%tl1126511314%_)
                                                (let ((_%e1127011317%_
                                                       (gx#syntax-e
                                                        _%tl1126511314%_)))
                                                  (let ((_%hd1126911321%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1127011317%_)))
                                                        (_%tl1126811324%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1127011317%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1126811324%_)
                                                        (let ((_%e1127311327%_
                                                               (gx#syntax-e
                                                                _%tl1126811324%_)))
                                                          (let ((_%hd1127211331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1127311327%_)))
                        (_%tl1127111334%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1127311327%_))))
                    (if (gx#stx-pair? _%tl1127111334%_)
                        (let ((_%e1127611337%_ (gx#syntax-e _%tl1127111334%_)))
                          (let ((_%hd1127511341%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1127611337%_)))
                                (_%tl1127411344%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1127611337%_))))
                            (if (gx#stx-pair/null? _%hd1127511341%_)
                                (let ((_g21006_
                                       (gx#syntax-split-splice
                                        _%hd1127511341%_
                                        '0)))
                                  (begin
                                    (let ((_g21007_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g21006_)
                                                 (##vector-length _g21006_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21007_ 2)))
                                          (error "Context expects 2 values"
                                                 _g21007_)))
                                    (let ((_%target1127711347%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g21006_ 0)))
                                          (_%tl1127911350%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g21006_ 1))))
                                      (if (gx#stx-null? _%tl1127911350%_)
                                          (letrec ((_%loop1128011353%_
                                                    (lambda (_%hd1127811357%_
                                                             _%dispatch1128411360%_)
                                                      (if (gx#stx-pair?
                                                           _%hd1127811357%_)
                                                          (let ((_%e1128111363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd1127811357%_)))
                    (let ((_%lp-hd1128211367%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1128111363%_)))
                          (_%lp-tl1128311370%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1128111363%_))))
                      (_%loop1128011353%_
                       _%lp-tl1128311370%_
                       (cons _%lp-hd1128211367%_ _%dispatch1128411360%_))))
                  (let ((_%dispatch1128511373%_
                         (reverse _%dispatch1128411360%_)))
                    (if (gx#stx-pair? _%tl1127411344%_)
                        (let ((_%e1128811377%_ (gx#syntax-e _%tl1127411344%_)))
                          (let ((_%hd1128711381%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1128811377%_)))
                                (_%tl1128611384%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1128811377%_))))
                            (if (gx#stx-pair? _%tl1128611384%_)
                                (let ((_%e1129111387%_
                                       (gx#syntax-e _%tl1128611384%_)))
                                  (let ((_%hd1129011391%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1129111387%_)))
                                        (_%tl1128911394%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1129111387%_))))
                                    (if (gx#stx-pair? _%tl1128911394%_)
                                        (let ((_%e1129411397%_
                                               (gx#syntax-e _%tl1128911394%_)))
                                          (let ((_%hd1129311401%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1129411397%_)))
                                                (_%tl1129211404%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1129411397%_))))
                                            (if (gx#stx-null? _%tl1129211404%_)
                                                ((lambda (_%L11407%_
                                                          _%L11409%_
                                                          _%L11410%_
                                                          _%L11411%_
                                                          _%L11412%_
                                                          _%L11413%_
                                                          _%L11414%_)
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _%L11413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons _%L11410%_ '())))
                                           '()))
                               (cons (cons _%L11412%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _%L11409%_ '()))
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'symbol?)
                                                 (cons _%L11414%_ '()))
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
                                             (cons _%L11414%_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'ix)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fxmodulo)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'h)
                                                         (cons _%L11407%_
                                                               '())))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'q)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _%L11412%_
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
                             (cons _%L11414%_ '())))
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
                                                     (foldr (lambda (_%g1144711450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g1144811453%_)
                      (cons _%g1144711450%_ _%g1144811453%_))
                    '()
                    _%L11411%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _%L11413%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _%L11413%_ '())
                                                   '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L11413%_ '())
                                                       '()))))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd1129311401%_
                                                 _%hd1129011391%_
                                                 _%hd1128711381%_
                                                 _%dispatch1128511373%_
                                                 _%hd1127211331%_
                                                 _%hd1126911321%_
                                                 _%hd1126611311%_)
                                                (_%g1125611300%_
                                                 _%g1125711304%_))))
                                        (_%g1125611300%_ _%g1125711304%_))))
                                (_%g1125611300%_ _%g1125711304%_))))
                        (_%g1125611300%_ _%g1125711304%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop1128011353%_
                                             _%target1127711347%_
                                             '()))
                                          (_%g1125611300%_ _%g1125711304%_)))))
                                (_%g1125611300%_ _%g1125711304%_))))
                        (_%g1125611300%_ _%g1125711304%_))))
                (_%g1125611300%_ _%g1125711304%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1125611300%_
                                                 _%g1125711304%_))))
                                        (_%g1125611300%_ _%g1125711304%_)))))
                            (_%g1125511456%_
                             (list _%e11063%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch11066%_
                                   _%default11067%_
                                   _%tab11072%_
                                   (vector-length _%tab11072%_))))))))
                 (_%max-char9466%_
                  (lambda (_%datums11052%_)
                    (foldl (lambda (_%lst11055%_ _%r11057%_)
                             (foldl (lambda (_%char11059%_ _%r11061%_)
                                      (max (char->integer _%char11059%_)
                                           _%r11061%_))
                                    _%r11057%_
                                    _%lst11055%_))
                           '0
                           _%datums11052%_)))
                 (_%generate-char-dispatch-table9467%_
                  (lambda (_%indexes11031%_)
                    (let* ((_%ixs11037%_
                            (map (lambda (_%x11034%_)
                                   (char->integer (car _%x11034%_)))
                                 _%indexes11031%_))
                           (_%len11040%_ (fx1+ (foldl max '0 _%ixs11037%_)))
                           (_%vec11043%_ (make-vector _%len11040%_ '#f)))
                      (for-each
                       (lambda (_%entry11048%_ _%x11050%_)
                         (vector-set!
                          _%vec11043%_
                          _%x11050%_
                          (cdr _%entry11048%_)))
                       _%indexes11031%_
                       _%ixs11037%_)
                      _%vec11043%_)))
                 (_%simple-char-range?9468%_
                  (lambda (_%tab11007%_)
                    (let ((_%end11010%_ (vector-length _%tab11007%_)))
                      (let _%lp11013%_ ((_%i11016%_ '0))
                        (let ((_%ix11019%_
                               (vector-ref _%tab11007%_ _%i11016%_)))
                          (if _%ix11019%_
                              (let _%lp211022%_ ((_%i11025%_
                                                  (fx1+ _%i11016%_)))
                                (if (fx< _%i11025%_ _%end11010%_)
                                    (let ((_%ix*11028%_
                                           (vector-ref
                                            _%tab11007%_
                                            _%i11025%_)))
                                      (if (eq? _%ix11019%_ _%ix*11028%_)
                                          (_%lp211022%_ (fx1+ _%i11025%_))
                                          '#f))
                                    '#t))
                              (_%lp11013%_ (fx1+ _%i11016%_))))))))
                 (_%char-range-start9469%_
                  (lambda (_%tab10998%_)
                    (let _%lp11001%_ ((_%i11004%_ '0))
                      (if (vector-ref _%tab10998%_ _%i11004%_)
                          _%i11004%_
                          (_%lp11001%_ (fx1+ _%i11004%_))))))
                 (_%generate-char-dispatch9470%_
                  (lambda (_%e10621%_
                           _%datums10623%_
                           _%dispatch10624%_
                           _%default10625%_)
                    (if (< (_%max-char9466%_ _%datums10623%_) '128)
                        (let* ((_%indexes10627%_
                                (_%datum-dispatch-index9462%_ _%datums10623%_))
                               (_%tab10630%_
                                (_%generate-char-dispatch-table9467%_
                                 _%indexes10627%_)))
                          (if (_%simple-char-range?9468%_ _%tab10630%_)
                              (let ((_%start10635%_
                                     (_%char-range-start9469%_ _%tab10630%_))
                                    (_%end10637%_
                                     (vector-length _%tab10630%_)))
                                (let* ((_%g1063910673%_
                                        (lambda (_%g1064010669%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g1064010669%_)))
                                       (_%g1063810790%_
                                        (lambda (_%g1064010677%_)
                                          (if (gx#stx-pair? _%g1064010677%_)
                                              (let ((_%e1064910680%_
                                                     (gx#syntax-e
                                                      _%g1064010677%_)))
                                                (let ((_%hd1064810684%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1064910680%_)))
                                                      (_%tl1064710687%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1064910680%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1064710687%_)
                                                      (let ((_%e1065210690%_
                                                             (gx#syntax-e
                                                              _%tl1064710687%_)))
                                                        (let ((_%hd1065110694%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1065210690%_)))
                      (_%tl1065010697%_
                       (let () (declare (not safe)) (##cdr _%e1065210690%_))))
                  (if (gx#stx-pair? _%tl1065010697%_)
                      (let ((_%e1065510700%_ (gx#syntax-e _%tl1065010697%_)))
                        (let ((_%hd1065410704%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1065510700%_)))
                              (_%tl1065310707%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1065510700%_))))
                          (if (gx#stx-pair? _%hd1065410704%_)
                              (let ((_%e1065810710%_
                                     (gx#syntax-e _%hd1065410704%_)))
                                (let ((_%hd1065710714%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1065810710%_)))
                                      (_%tl1065610717%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1065810710%_))))
                                  (if (gx#stx-null? _%tl1065610717%_)
                                      (if (gx#stx-pair? _%tl1065310707%_)
                                          (let ((_%e1066110720%_
                                                 (gx#syntax-e
                                                  _%tl1065310707%_)))
                                            (let ((_%hd1066010724%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1066110720%_)))
                                                  (_%tl1065910727%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1066110720%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1065910727%_)
                                                  (let ((_%e1066410730%_
                                                         (gx#syntax-e
                                                          _%tl1065910727%_)))
                                                    (let ((_%hd1066310734%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1066410730%_)))
                                                          (_%tl1066210737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1066410730%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1066210737%_)
                                                          (let ((_%e1066710740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1066210737%_)))
                    (let ((_%hd1066610744%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1066710740%_)))
                          (_%tl1066510747%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1066710740%_))))
                      (if (gx#stx-null? _%tl1066510747%_)
                          ((lambda (_%L10750%_
                                    _%L10752%_
                                    _%L10753%_
                                    _%L10754%_
                                    _%L10755%_
                                    _%L10756%_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons _%L10755%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L10753%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'char?)
                           (cons _%L10756%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (gx#datum->syntax '#f 'ix)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##char->integer)
                                                         (cons _%L10756%_ '()))
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
                                         (cons _%L10752%_ '())))
                             (cons (cons (gx#datum->syntax '#f '##fx<)
                                         (cons (gx#datum->syntax '#f 'ix)
                                               (cons _%L10750%_ '())))
                                   '())))
                 (cons _%L10754%_ (cons (cons _%L10755%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _%L10755%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                           _%hd1066610744%_
                           _%hd1066310734%_
                           _%hd1066010724%_
                           _%hd1065710714%_
                           _%hd1065110694%_
                           _%hd1064810684%_)
                          (_%g1063910673%_ _%g1064010677%_))))
                  (_%g1063910673%_ _%g1064010677%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1063910673%_
                                                   _%g1064010677%_))))
                                          (_%g1063910673%_ _%g1064010677%_))
                                      (_%g1063910673%_ _%g1064010677%_))))
                              (_%g1063910673%_ _%g1064010677%_))))
                      (_%g1063910673%_ _%g1064010677%_))))
              (_%g1063910673%_ _%g1064010677%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1063910673%_
                                               _%g1064010677%_)))))
                                  (_%g1063810790%_
                                   (list _%e10621%_
                                         (gx#genident 'default)
                                         _%dispatch10624%_
                                         _%default10625%_
                                         _%start10635%_
                                         _%end10637%_))))
                              (let* ((_%g1079410838%_
                                      (lambda (_%g1079510834%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g1079510834%_)))
                                     (_%g1079310994%_
                                      (lambda (_%g1079510842%_)
                                        (if (gx#stx-pair? _%g1079510842%_)
                                            (let ((_%e1080510845%_
                                                   (gx#syntax-e
                                                    _%g1079510842%_)))
                                              (let ((_%hd1080410849%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1080510845%_)))
                                                    (_%tl1080310852%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1080510845%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1080310852%_)
                                                    (let ((_%e1080810855%_
                                                           (gx#syntax-e
                                                            _%tl1080310852%_)))
                                                      (let ((_%hd1080710859%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1080810855%_)))
                    (_%tl1080610862%_
                     (let () (declare (not safe)) (##cdr _%e1080810855%_))))
                (if (gx#stx-pair? _%tl1080610862%_)
                    (let ((_%e1081110865%_ (gx#syntax-e _%tl1080610862%_)))
                      (let ((_%hd1081010869%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1081110865%_)))
                            (_%tl1080910872%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1081110865%_))))
                        (if (gx#stx-pair? _%tl1080910872%_)
                            (let ((_%e1081410875%_
                                   (gx#syntax-e _%tl1080910872%_)))
                              (let ((_%hd1081310879%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1081410875%_)))
                                    (_%tl1081210882%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1081410875%_))))
                                (if (gx#stx-pair/null? _%hd1081310879%_)
                                    (let ((_g21008_
                                           (gx#syntax-split-splice
                                            _%hd1081310879%_
                                            '0)))
                                      (begin
                                        (let ((_g21009_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g21008_)
                                                     (##vector-length _g21008_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g21009_ 2)))
                                              (error "Context expects 2 values"
                                                     _g21009_)))
                                        (let ((_%target1081510885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g21008_ 0)))
                                              (_%tl1081710888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g21008_ 1))))
                                          (if (gx#stx-null? _%tl1081710888%_)
                                              (letrec ((_%loop1081810891%_
                                                        (lambda (_%hd1081610895%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%dispatch1082210898%_)
                  (if (gx#stx-pair? _%hd1081610895%_)
                      (let ((_%e1081910901%_ (gx#syntax-e _%hd1081610895%_)))
                        (let ((_%lp-hd1082010905%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1081910901%_)))
                              (_%lp-tl1082110908%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1081910901%_))))
                          (_%loop1081810891%_
                           _%lp-tl1082110908%_
                           (cons _%lp-hd1082010905%_ _%dispatch1082210898%_))))
                      (let ((_%dispatch1082310911%_
                             (reverse _%dispatch1082210898%_)))
                        (if (gx#stx-pair? _%tl1081210882%_)
                            (let ((_%e1082610915%_
                                   (gx#syntax-e _%tl1081210882%_)))
                              (let ((_%hd1082510919%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1082610915%_)))
                                    (_%tl1082410922%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1082610915%_))))
                                (if (gx#stx-pair? _%tl1082410922%_)
                                    (let ((_%e1082910925%_
                                           (gx#syntax-e _%tl1082410922%_)))
                                      (let ((_%hd1082810929%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1082910925%_)))
                                            (_%tl1082710932%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1082910925%_))))
                                        (if (gx#stx-pair? _%tl1082710932%_)
                                            (let ((_%e1083210935%_
                                                   (gx#syntax-e
                                                    _%tl1082710932%_)))
                                              (let ((_%hd1083110939%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1083210935%_)))
                                                    (_%tl1083010942%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1083210935%_))))
                                                (if (gx#stx-null?
                                                     _%tl1083010942%_)
                                                    ((lambda (_%L10945%_
                                                              _%L10947%_
                                                              _%L10948%_
                                                              _%L10949%_
                                                              _%L10950%_
                                                              _%L10951%_
                                                              _%L10952%_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _%L10951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _%L10948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons _%L10950%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%L10947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'char?)
                                                     (cons _%L10952%_ '()))
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
                                           (cons _%L10952%_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax '#f '##fx<)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'ix)
                                                       (cons _%L10945%_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'x)
                           (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                       (cons _%L10950%_
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
                                                         (foldr (lambda (_%g1098510988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g1098610991%_)
                          (cons _%g1098510988%_ _%g1098610991%_))
                        '()
                        _%L10949%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _%L10951%_ '())
                                                   '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L10951%_ '())
                                                       '()))))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _%L10951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd1083110939%_
                                                     _%hd1082810929%_
                                                     _%hd1082510919%_
                                                     _%dispatch1082310911%_
                                                     _%hd1081010869%_
                                                     _%hd1080710859%_
                                                     _%hd1080410849%_)
                                                    (_%g1079410838%_
                                                     _%g1079510842%_))))
                                            (_%g1079410838%_
                                             _%g1079510842%_))))
                                    (_%g1079410838%_ _%g1079510842%_))))
                            (_%g1079410838%_ _%g1079510842%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop1081810891%_
                                                 _%target1081510885%_
                                                 '()))
                                              (_%g1079410838%_
                                               _%g1079510842%_)))))
                                    (_%g1079410838%_ _%g1079510842%_))))
                            (_%g1079410838%_ _%g1079510842%_))))
                    (_%g1079410838%_ _%g1079510842%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1079410838%_
                                                     _%g1079510842%_))))
                                            (_%g1079410838%_
                                             _%g1079510842%_)))))
                                (_%g1079310994%_
                                 (list _%e10621%_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _%dispatch10624%_
                                       _%default10625%_
                                       _%tab10630%_
                                       (vector-length _%tab10630%_))))))
                        (_%generate-char-dispatch/hash9471%_
                         _%e10621%_
                         _%datums10623%_
                         _%dispatch10624%_
                         _%default10625%_))))
                 (_%generate-char-dispatch/hash9471%_
                  (lambda (_%e10399%_
                           _%datums10401%_
                           _%dispatch10402%_
                           _%default10403%_)
                    (let* ((_%indexes10405%_
                            (_%datum-dispatch-index9462%_ _%datums10401%_))
                           (_%tab10408%_
                            (_%generate-hash-dispatch-table9464%_
                             _%indexes10405%_
                             char->integer)))
                      (let* ((_%g1041310457%_
                              (lambda (_%g1041410453%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g1041410453%_)))
                             (_%g1041210617%_
                              (lambda (_%g1041410461%_)
                                (if (gx#stx-pair? _%g1041410461%_)
                                    (let ((_%e1042410464%_
                                           (gx#syntax-e _%g1041410461%_)))
                                      (let ((_%hd1042310468%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1042410464%_)))
                                            (_%tl1042210471%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1042410464%_))))
                                        (if (gx#stx-pair? _%tl1042210471%_)
                                            (let ((_%e1042710474%_
                                                   (gx#syntax-e
                                                    _%tl1042210471%_)))
                                              (let ((_%hd1042610478%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1042710474%_)))
                                                    (_%tl1042510481%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1042710474%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1042510481%_)
                                                    (let ((_%e1043010484%_
                                                           (gx#syntax-e
                                                            _%tl1042510481%_)))
                                                      (let ((_%hd1042910488%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1043010484%_)))
                    (_%tl1042810491%_
                     (let () (declare (not safe)) (##cdr _%e1043010484%_))))
                (if (gx#stx-pair? _%tl1042810491%_)
                    (let ((_%e1043310494%_ (gx#syntax-e _%tl1042810491%_)))
                      (let ((_%hd1043210498%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1043310494%_)))
                            (_%tl1043110501%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1043310494%_))))
                        (if (gx#stx-pair/null? _%hd1043210498%_)
                            (let ((_g21010_
                                   (gx#syntax-split-splice
                                    _%hd1043210498%_
                                    '0)))
                              (begin
                                (let ((_g21011_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g21010_)
                                             (##vector-length _g21010_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g21011_ 2)))
                                      (error "Context expects 2 values"
                                             _g21011_)))
                                (let ((_%target1043410504%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g21010_ 0)))
                                      (_%tl1043610507%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g21010_ 1))))
                                  (if (gx#stx-null? _%tl1043610507%_)
                                      (letrec ((_%loop1043710510%_
                                                (lambda (_%hd1043510514%_
                                                         _%dispatch1044110517%_)
                                                  (if (gx#stx-pair?
                                                       _%hd1043510514%_)
                                                      (let ((_%e1043810520%_
                                                             (gx#syntax-e
                                                              _%hd1043510514%_)))
                                                        (let ((_%lp-hd1043910524%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1043810520%_)))
                      (_%lp-tl1044010527%_
                       (let () (declare (not safe)) (##cdr _%e1043810520%_))))
                  (_%loop1043710510%_
                   _%lp-tl1044010527%_
                   (cons _%lp-hd1043910524%_ _%dispatch1044110517%_))))
              (let ((_%dispatch1044210530%_ (reverse _%dispatch1044110517%_)))
                (if (gx#stx-pair? _%tl1043110501%_)
                    (let ((_%e1044510534%_ (gx#syntax-e _%tl1043110501%_)))
                      (let ((_%hd1044410538%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1044510534%_)))
                            (_%tl1044310541%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1044510534%_))))
                        (if (gx#stx-pair? _%tl1044310541%_)
                            (let ((_%e1044810544%_
                                   (gx#syntax-e _%tl1044310541%_)))
                              (let ((_%hd1044710548%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1044810544%_)))
                                    (_%tl1044610551%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1044810544%_))))
                                (if (gx#stx-pair? _%tl1044610551%_)
                                    (let ((_%e1045110554%_
                                           (gx#syntax-e _%tl1044610551%_)))
                                      (let ((_%hd1045010558%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1045110554%_)))
                                            (_%tl1044910561%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1045110554%_))))
                                        (if (gx#stx-null? _%tl1044910561%_)
                                            ((lambda (_%L10564%_
                                                      _%L10566%_
                                                      _%L10567%_
                                                      _%L10568%_
                                                      _%L10569%_
                                                      _%L10570%_
                                                      _%L10571%_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L10570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f 'lambda)
                                             (cons '() (cons _%L10567%_ '())))
                                       '()))
                           (cons (cons _%L10569%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L10566%_ '()))
                                             '()))
                                 '()))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (cons (gx#datum->syntax '#f 'char?)
                                             (cons _%L10571%_ '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'h)
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          '##char->integer)
                                         (cons _%L10571%_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'ix)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##fxmodulo)
                                               (cons (gx#datum->syntax '#f 'h)
                                                     (cons _%L10564%_ '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'q)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##vector-ref)
                                                     (cons _%L10569%_
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
                         (cons _%L10571%_ '())))
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
                                                 (foldr (lambda (_%g1060810611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1060910614%_)
                  (cons _%g1060810611%_ _%g1060910614%_))
                '()
                _%L10568%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons _%L10570%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%L10570%_ '()) '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _%L10570%_ '())
                                                   '()))))
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd1045010558%_
                                             _%hd1044710548%_
                                             _%hd1044410538%_
                                             _%dispatch1044210530%_
                                             _%hd1042910488%_
                                             _%hd1042610478%_
                                             _%hd1042310468%_)
                                            (_%g1041310457%_
                                             _%g1041410461%_))))
                                    (_%g1041310457%_ _%g1041410461%_))))
                            (_%g1041310457%_ _%g1041410461%_))))
                    (_%g1041310457%_ _%g1041410461%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop1043710510%_
                                         _%target1043410504%_
                                         '()))
                                      (_%g1041310457%_ _%g1041410461%_)))))
                            (_%g1041310457%_ _%g1041410461%_))))
                    (_%g1041310457%_ _%g1041410461%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1041310457%_
                                                     _%g1041410461%_))))
                                            (_%g1041310457%_
                                             _%g1041410461%_))))
                                    (_%g1041310457%_ _%g1041410461%_)))))
                        (_%g1041210617%_
                         (list _%e10399%_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _%dispatch10402%_
                               _%default10403%_
                               _%tab10408%_
                               (vector-length _%tab10408%_)))))))
                 (_%min-fixnum9472%_
                  (lambda (_%datums10392%_)
                    (foldl (lambda (_%lst10395%_ _%r10397%_)
                             (foldl min _%r10397%_ _%lst10395%_))
                           ##max-fixnum
                           _%datums10392%_)))
                 (_%max-fixnum9473%_
                  (lambda (_%datums10385%_)
                    (foldl (lambda (_%lst10388%_ _%r10390%_)
                             (foldl max _%r10390%_ _%lst10388%_))
                           ##min-fixnum
                           _%datums10385%_)))
                 (_%generate-fixnum-dispatch-table9474%_
                  (lambda (_%indexes10367%_)
                    (let* ((_%ixs10370%_ (map car _%indexes10367%_))
                           (_%len10373%_ (fx1+ (foldl max '0 _%ixs10370%_)))
                           (_%vec10376%_ (make-vector _%len10373%_ '#f)))
                      (for-each
                       (lambda (_%entry10381%_ _%x10383%_)
                         (vector-set!
                          _%vec10376%_
                          _%x10383%_
                          (cdr _%entry10381%_)))
                       _%indexes10367%_
                       _%ixs10370%_)
                      _%vec10376%_)))
                 (_%generate-fixnum-dispatch9475%_
                  (lambda (_%e10101%_
                           _%datums10103%_
                           _%dispatch10104%_
                           _%default10105%_)
                    (if (and (>= (_%min-fixnum9472%_ _%datums10103%_) '0)
                             (< (_%max-fixnum9473%_ _%datums10103%_) '1024))
                        (let* ((_%indexes10107%_
                                (_%datum-dispatch-index9462%_ _%datums10103%_))
                               (_%tab10110%_
                                (_%generate-fixnum-dispatch-table9474%_
                                 _%indexes10107%_))
                               (_%dense?10113%_
                                (andmap values (vector->list _%tab10110%_))))
                          (let* ((_%g1011810162%_
                                  (lambda (_%g1011910158%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1011910158%_)))
                                 (_%g1011710363%_
                                  (lambda (_%g1011910166%_)
                                    (if (gx#stx-pair? _%g1011910166%_)
                                        (let ((_%e1012910169%_
                                               (gx#syntax-e _%g1011910166%_)))
                                          (let ((_%hd1012810173%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1012910169%_)))
                                                (_%tl1012710176%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1012910169%_))))
                                            (if (gx#stx-pair? _%tl1012710176%_)
                                                (let ((_%e1013210179%_
                                                       (gx#syntax-e
                                                        _%tl1012710176%_)))
                                                  (let ((_%hd1013110183%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1013210179%_)))
                                                        (_%tl1013010186%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1013210179%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1013010186%_)
                                                        (let ((_%e1013510189%_
                                                               (gx#syntax-e
                                                                _%tl1013010186%_)))
                                                          (let ((_%hd1013410193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1013510189%_)))
                        (_%tl1013310196%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1013510189%_))))
                    (if (gx#stx-pair? _%tl1013310196%_)
                        (let ((_%e1013810199%_ (gx#syntax-e _%tl1013310196%_)))
                          (let ((_%hd1013710203%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1013810199%_)))
                                (_%tl1013610206%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1013810199%_))))
                            (if (gx#stx-pair/null? _%hd1013710203%_)
                                (let ((_g21012_
                                       (gx#syntax-split-splice
                                        _%hd1013710203%_
                                        '0)))
                                  (begin
                                    (let ((_g21013_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g21012_)
                                                 (##vector-length _g21012_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21013_ 2)))
                                          (error "Context expects 2 values"
                                                 _g21013_)))
                                    (let ((_%target1013910209%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g21012_ 0)))
                                          (_%tl1014110212%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g21012_ 1))))
                                      (if (gx#stx-null? _%tl1014110212%_)
                                          (letrec ((_%loop1014210215%_
                                                    (lambda (_%hd1014010219%_
                                                             _%dispatch1014610222%_)
                                                      (if (gx#stx-pair?
                                                           _%hd1014010219%_)
                                                          (let ((_%e1014310225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd1014010219%_)))
                    (let ((_%lp-hd1014410229%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1014310225%_)))
                          (_%lp-tl1014510232%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1014310225%_))))
                      (_%loop1014210215%_
                       _%lp-tl1014510232%_
                       (cons _%lp-hd1014410229%_ _%dispatch1014610222%_))))
                  (let ((_%dispatch1014710235%_
                         (reverse _%dispatch1014610222%_)))
                    (if (gx#stx-pair? _%tl1013610206%_)
                        (let ((_%e1015010239%_ (gx#syntax-e _%tl1013610206%_)))
                          (let ((_%hd1014910243%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1015010239%_)))
                                (_%tl1014810246%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1015010239%_))))
                            (if (gx#stx-pair? _%tl1014810246%_)
                                (let ((_%e1015310249%_
                                       (gx#syntax-e _%tl1014810246%_)))
                                  (let ((_%hd1015210253%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1015310249%_)))
                                        (_%tl1015110256%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1015310249%_))))
                                    (if (gx#stx-pair? _%tl1015110256%_)
                                        (let ((_%e1015610259%_
                                               (gx#syntax-e _%tl1015110256%_)))
                                          (let ((_%hd1015510263%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1015610259%_)))
                                                (_%tl1015410266%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1015610259%_))))
                                            (if (gx#stx-null? _%tl1015410266%_)
                                                ((lambda (_%L10269%_
                                                          _%L10271%_
                                                          _%L10272%_
                                                          _%L10273%_
                                                          _%L10274%_
                                                          _%L10275%_
                                                          _%L10276%_)
                                                   (let ()
                                                     (let* ((_%g1031510323%_
                                                             (lambda (_%g1031610319%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g1031610319%_)))
                                                            (_%g1031410343%_
                                                             (lambda (_%g1031610327%_)
                                                               ((lambda (_%L10330%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (cons _%L10275%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda)
                        (cons '() (cons _%L10272%_ '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons _%L10274%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _%L10271%_ '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'fixnum?)
                        (cons _%L10276%_ '()))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons (cons (gx#datum->syntax '#f 'and)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx>=)
                                                      (cons _%L10276%_
                                                            (cons '0 '())))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##fx<)
                                                            (cons _%L10276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L10269%_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'x)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##vector-ref)
                                (cons _%L10274%_ (cons _%L10276%_ '())))
                          '()))
              (cons _%L10330%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _%L10275%_ '()) '()))))
                        (cons (cons _%L10275%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                        _%g1031610327%_))))
               (_%g1031410343%_
                (if _%dense?10113%_
                    (cons (gx#datum->syntax '#f '~case-dispatch)
                          (cons (gx#datum->syntax '#f 'x)
                                (foldr (lambda (_%g1034610349%_
                                                _%g1034710352%_)
                                         (cons _%g1034610349%_
                                               _%g1034710352%_))
                                       '()
                                       _%L10273%_)))
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (gx#datum->syntax '#f 'x)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             '~case-dispatch)
                                            (cons (gx#datum->syntax '#f 'x)
                                                  (foldr (lambda (_%g1035410357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1035510360%_)
                   (cons _%g1035410357%_ _%g1035510360%_))
                 '()
                 _%L10273%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons (cons _%L10275%_ '()) '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd1015510263%_
                                                 _%hd1015210253%_
                                                 _%hd1014910243%_
                                                 _%dispatch1014710235%_
                                                 _%hd1013410193%_
                                                 _%hd1013110183%_
                                                 _%hd1012810173%_)
                                                (_%g1011810162%_
                                                 _%g1011910166%_))))
                                        (_%g1011810162%_ _%g1011910166%_))))
                                (_%g1011810162%_ _%g1011910166%_))))
                        (_%g1011810162%_ _%g1011910166%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop1014210215%_
                                             _%target1013910209%_
                                             '()))
                                          (_%g1011810162%_ _%g1011910166%_)))))
                                (_%g1011810162%_ _%g1011910166%_))))
                        (_%g1011810162%_ _%g1011910166%_))))
                (_%g1011810162%_ _%g1011910166%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1011810162%_
                                                 _%g1011910166%_))))
                                        (_%g1011810162%_ _%g1011910166%_)))))
                            (_%g1011710363%_
                             (list _%e10101%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch10104%_
                                   _%default10105%_
                                   _%tab10110%_
                                   (vector-length _%tab10110%_)))))
                        (_%generate-fixnum-dispatch/hash9476%_
                         _%e10101%_
                         _%datums10103%_
                         _%dispatch10104%_
                         _%default10105%_))))
                 (_%generate-fixnum-dispatch/hash9476%_
                  (lambda (_%e9879%_
                           _%datums9881%_
                           _%dispatch9882%_
                           _%default9883%_)
                    (let* ((_%indexes9885%_
                            (_%datum-dispatch-index9462%_ _%datums9881%_))
                           (_%tab9888%_
                            (_%generate-hash-dispatch-table9464%_
                             _%indexes9885%_
                             values)))
                      (let* ((_%g98939937%_
                              (lambda (_%g98949933%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g98949933%_)))
                             (_%g989210097%_
                              (lambda (_%g98949941%_)
                                (if (gx#stx-pair? _%g98949941%_)
                                    (let ((_%e99049944%_
                                           (gx#syntax-e _%g98949941%_)))
                                      (let ((_%hd99039948%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e99049944%_)))
                                            (_%tl99029951%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e99049944%_))))
                                        (if (gx#stx-pair? _%tl99029951%_)
                                            (let ((_%e99079954%_
                                                   (gx#syntax-e
                                                    _%tl99029951%_)))
                                              (let ((_%hd99069958%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e99079954%_)))
                                                    (_%tl99059961%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e99079954%_))))
                                                (if (gx#stx-pair?
                                                     _%tl99059961%_)
                                                    (let ((_%e99109964%_
                                                           (gx#syntax-e
                                                            _%tl99059961%_)))
                                                      (let ((_%hd99099968%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e99109964%_)))
                    (_%tl99089971%_
                     (let () (declare (not safe)) (##cdr _%e99109964%_))))
                (if (gx#stx-pair? _%tl99089971%_)
                    (let ((_%e99139974%_ (gx#syntax-e _%tl99089971%_)))
                      (let ((_%hd99129978%_
                             (let ()
                               (declare (not safe))
                               (##car _%e99139974%_)))
                            (_%tl99119981%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e99139974%_))))
                        (if (gx#stx-pair/null? _%hd99129978%_)
                            (let ((_g21014_
                                   (gx#syntax-split-splice _%hd99129978%_ '0)))
                              (begin
                                (let ((_g21015_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g21014_)
                                             (##vector-length _g21014_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g21015_ 2)))
                                      (error "Context expects 2 values"
                                             _g21015_)))
                                (let ((_%target99149984%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g21014_ 0)))
                                      (_%tl99169987%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g21014_ 1))))
                                  (if (gx#stx-null? _%tl99169987%_)
                                      (letrec ((_%loop99179990%_
                                                (lambda (_%hd99159994%_
                                                         _%dispatch99219997%_)
                                                  (if (gx#stx-pair?
                                                       _%hd99159994%_)
                                                      (let ((_%e991810000%_
                                                             (gx#syntax-e
                                                              _%hd99159994%_)))
                                                        (let ((_%lp-hd991910004%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e991810000%_)))
                      (_%lp-tl992010007%_
                       (let () (declare (not safe)) (##cdr _%e991810000%_))))
                  (_%loop99179990%_
                   _%lp-tl992010007%_
                   (cons _%lp-hd991910004%_ _%dispatch99219997%_))))
              (let ((_%dispatch992210010%_ (reverse _%dispatch99219997%_)))
                (if (gx#stx-pair? _%tl99119981%_)
                    (let ((_%e992510014%_ (gx#syntax-e _%tl99119981%_)))
                      (let ((_%hd992410018%_
                             (let ()
                               (declare (not safe))
                               (##car _%e992510014%_)))
                            (_%tl992310021%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e992510014%_))))
                        (if (gx#stx-pair? _%tl992310021%_)
                            (let ((_%e992810024%_
                                   (gx#syntax-e _%tl992310021%_)))
                              (let ((_%hd992710028%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e992810024%_)))
                                    (_%tl992610031%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e992810024%_))))
                                (if (gx#stx-pair? _%tl992610031%_)
                                    (let ((_%e993110034%_
                                           (gx#syntax-e _%tl992610031%_)))
                                      (let ((_%hd993010038%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e993110034%_)))
                                            (_%tl992910041%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e993110034%_))))
                                        (if (gx#stx-null? _%tl992910041%_)
                                            ((lambda (_%L10044%_
                                                      _%L10046%_
                                                      _%L10047%_
                                                      _%L10048%_
                                                      _%L10049%_
                                                      _%L10050%_
                                                      _%L10051%_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L10050%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f 'lambda)
                                             (cons '() (cons _%L10047%_ '())))
                                       '()))
                           (cons (cons _%L10049%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L10046%_ '()))
                                             '()))
                                 '()))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                             (cons _%L10051%_ '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'ix)
                             (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                         (cons _%L10051%_
                                               (cons _%L10044%_ '())))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'q)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##vector-ref)
                                               (cons _%L10049%_
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'ix)
                                                           '())))
                                         '()))
                             '()))
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
                         (cons _%L10051%_ '())))
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
                                                 (foldr (lambda (_%g1008810091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1008910094%_)
                  (cons _%g1008810091%_ _%g1008910094%_))
                '()
                _%L10048%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons _%L10050%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%L10050%_ '()) '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _%L10050%_ '())
                                                   '()))))
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd993010038%_
                                             _%hd992710028%_
                                             _%hd992410018%_
                                             _%dispatch992210010%_
                                             _%hd99099968%_
                                             _%hd99069958%_
                                             _%hd99039948%_)
                                            (_%g98939937%_ _%g98949941%_))))
                                    (_%g98939937%_ _%g98949941%_))))
                            (_%g98939937%_ _%g98949941%_))))
                    (_%g98939937%_ _%g98949941%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop99179990%_
                                         _%target99149984%_
                                         '()))
                                      (_%g98939937%_ _%g98949941%_)))))
                            (_%g98939937%_ _%g98949941%_))))
                    (_%g98939937%_ _%g98949941%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g98939937%_
                                                     _%g98949941%_))))
                                            (_%g98939937%_ _%g98949941%_))))
                                    (_%g98939937%_ _%g98949941%_)))))
                        (_%g989210097%_
                         (list _%e9879%_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _%dispatch9882%_
                               _%default9883%_
                               _%tab9888%_
                               (vector-length _%tab9888%_)))))))
                 (_%generate-generic-dispatch9477%_
                  (lambda (_%e9615%_
                           _%datums9617%_
                           _%dispatch9618%_
                           _%default9619%_)
                    (let ((_g21016_
                           (if (_%eq-datums?9460%_ _%datums9617%_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_%hash-e9621%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g21016_ 0)))
                              (_%hashf9623%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g21016_ 1)))
                              (_%eqf9624%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g21016_ 2))))
                          (let* ((_%indexes9626%_
                                  (_%datum-dispatch-index9462%_
                                   _%datums9617%_))
                                 (_%tab9629%_
                                  (_%generate-hash-dispatch-table9464%_
                                   _%indexes9626%_
                                   _%hash-e9621%_)))
                            (let* ((_%g96349686%_
                                    (lambda (_%g96359682%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g96359682%_)))
                                   (_%g96339875%_
                                    (lambda (_%g96359690%_)
                                      (if (gx#stx-pair? _%g96359690%_)
                                          (let ((_%e96479693%_
                                                 (gx#syntax-e _%g96359690%_)))
                                            (let ((_%hd96469697%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e96479693%_)))
                                                  (_%tl96459700%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e96479693%_))))
                                              (if (gx#stx-pair? _%tl96459700%_)
                                                  (let ((_%e96509703%_
                                                         (gx#syntax-e
                                                          _%tl96459700%_)))
                                                    (let ((_%hd96499707%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e96509703%_)))
                                                          (_%tl96489710%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e96509703%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl96489710%_)
                                                          (let ((_%e96539713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl96489710%_)))
                    (let ((_%hd96529717%_
                           (let () (declare (not safe)) (##car _%e96539713%_)))
                          (_%tl96519720%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e96539713%_))))
                      (if (gx#stx-pair? _%tl96519720%_)
                          (let ((_%e96569723%_ (gx#syntax-e _%tl96519720%_)))
                            (let ((_%hd96559727%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e96569723%_)))
                                  (_%tl96549730%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e96569723%_))))
                              (if (gx#stx-pair/null? _%hd96559727%_)
                                  (let ((_g21017_
                                         (gx#syntax-split-splice
                                          _%hd96559727%_
                                          '0)))
                                    (begin
                                      (let ((_g21018_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g21017_)
                                                   (##vector-length _g21017_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g21018_ 2)))
                                            (error "Context expects 2 values"
                                                   _g21018_)))
                                      (let ((_%target96579733%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g21017_ 0)))
                                            (_%tl96599736%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g21017_ 1))))
                                        (if (gx#stx-null? _%tl96599736%_)
                                            (letrec ((_%loop96609739%_
                                                      (lambda (_%hd96589743%_
                                                               _%dispatch96649746%_)
                                                        (if (gx#stx-pair?
                                                             _%hd96589743%_)
                                                            (let ((_%e96619749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd96589743%_)))
                      (let ((_%lp-hd96629753%_
                             (let ()
                               (declare (not safe))
                               (##car _%e96619749%_)))
                            (_%lp-tl96639756%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e96619749%_))))
                        (_%loop96609739%_
                         _%lp-tl96639756%_
                         (cons _%lp-hd96629753%_ _%dispatch96649746%_))))
                    (let ((_%dispatch96659759%_
                           (reverse _%dispatch96649746%_)))
                      (if (gx#stx-pair? _%tl96549730%_)
                          (let ((_%e96689763%_ (gx#syntax-e _%tl96549730%_)))
                            (let ((_%hd96679767%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e96689763%_)))
                                  (_%tl96669770%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e96689763%_))))
                              (if (gx#stx-pair? _%tl96669770%_)
                                  (let ((_%e96719773%_
                                         (gx#syntax-e _%tl96669770%_)))
                                    (let ((_%hd96709777%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e96719773%_)))
                                          (_%tl96699780%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e96719773%_))))
                                      (if (gx#stx-pair? _%tl96699780%_)
                                          (let ((_%e96749783%_
                                                 (gx#syntax-e _%tl96699780%_)))
                                            (let ((_%hd96739787%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e96749783%_)))
                                                  (_%tl96729790%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e96749783%_))))
                                              (if (gx#stx-pair? _%tl96729790%_)
                                                  (let ((_%e96779793%_
                                                         (gx#syntax-e
                                                          _%tl96729790%_)))
                                                    (let ((_%hd96769797%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e96779793%_)))
                                                          (_%tl96759800%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e96779793%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl96759800%_)
                                                          (let ((_%e96809803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl96759800%_)))
                    (let ((_%hd96799807%_
                           (let () (declare (not safe)) (##car _%e96809803%_)))
                          (_%tl96789810%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e96809803%_))))
                      (if (gx#stx-null? _%tl96789810%_)
                          ((lambda (_%L9813%_
                                    _%L9815%_
                                    _%L9816%_
                                    _%L9817%_
                                    _%L9818%_
                                    _%L9819%_
                                    _%L9820%_
                                    _%L9821%_
                                    _%L9822%_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L9821%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _%L9818%_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L9820%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%L9817%_ '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let*)
                                                       (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'h)
                                 (cons (cons _%L9815%_ (cons _%L9822%_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'ix)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fxmodulo)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'h)
                                                         (cons _%L9816%_ '())))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'q)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _%L9820%_
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
                                                   (cons (cons _%L9813%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##car)
                                   (cons (gx#datum->syntax '#f 'q) '()))
                             (cons _%L9822%_ '())))
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
                                                     (foldr (lambda (_%g98669869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g98679872%_)
                      (cons _%g98669869%_ _%g98679872%_))
                    '()
                    _%L9819%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _%L9821%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _%L9821%_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                           _%hd96799807%_
                           _%hd96769797%_
                           _%hd96739787%_
                           _%hd96709777%_
                           _%hd96679767%_
                           _%dispatch96659759%_
                           _%hd96529717%_
                           _%hd96499707%_
                           _%hd96469697%_)
                          (_%g96349686%_ _%g96359690%_))))
                  (_%g96349686%_ _%g96359690%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g96349686%_
                                                   _%g96359690%_))))
                                          (_%g96349686%_ _%g96359690%_))))
                                  (_%g96349686%_ _%g96359690%_))))
                          (_%g96349686%_ _%g96359690%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop96609739%_
                                               _%target96579733%_
                                               '()))
                                            (_%g96349686%_ _%g96359690%_)))))
                                  (_%g96349686%_ _%g96359690%_))))
                          (_%g96349686%_ _%g96359690%_))))
                  (_%g96349686%_ _%g96359690%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g96349686%_
                                                   _%g96359690%_))))
                                          (_%g96349686%_ _%g96359690%_)))))
                              (_%g96339875%_
                               (list _%e9615%_
                                     (gx#genident 'default)
                                     (gx#genident 'table)
                                     _%dispatch9618%_
                                     _%default9619%_
                                     _%tab9629%_
                                     (vector-length _%tab9629%_)
                                     _%hashf9623%_
                                     _%eqf9624%_))))))))))
          (let* ((_%g94799503%_
                  (lambda (_%g94809499%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g94809499%_)))
                 (_%g94789611%_
                  (lambda (_%g94809507%_)
                    (if (gx#stx-pair? _%g94809507%_)
                        (let ((_%e94859510%_ (gx#syntax-e _%g94809507%_)))
                          (let ((_%hd94849514%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e94859510%_)))
                                (_%tl94839517%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e94859510%_))))
                            (if (gx#stx-pair? _%tl94839517%_)
                                (let ((_%e94889520%_
                                       (gx#syntax-e _%tl94839517%_)))
                                  (let ((_%hd94879524%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e94889520%_)))
                                        (_%tl94869527%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e94889520%_))))
                                    (if (gx#stx-pair/null? _%tl94869527%_)
                                        (let ((_g21019_
                                               (gx#syntax-split-splice
                                                _%tl94869527%_
                                                '0)))
                                          (begin
                                            (let ((_g21020_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g21019_)
                                                         (##vector-length
                                                          _g21019_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g21020_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g21020_)))
                                            (let ((_%target94899530%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g21019_
                                                      0)))
                                                  (_%tl94919533%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g21019_
                                                      1))))
                                              (if (gx#stx-null? _%tl94919533%_)
                                                  (letrec ((_%loop94929536%_
                                                            (lambda (_%hd94909540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause94969543%_)
                      (if (gx#stx-pair? _%hd94909540%_)
                          (let ((_%e94939546%_ (gx#syntax-e _%hd94909540%_)))
                            (let ((_%lp-hd94949550%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e94939546%_)))
                                  (_%lp-tl94959553%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e94939546%_))))
                              (_%loop94929536%_
                               _%lp-tl94959553%_
                               (cons _%lp-hd94949550%_ _%clause94969543%_))))
                          (let ((_%clause94979556%_
                                 (reverse _%clause94969543%_)))
                            ((lambda (_%L9560%_ _%L9562%_)
                               (let ((_g21021_
                                      (_%parse-clauses9453%_
                                       _%L9562%_
                                       (foldr (lambda (_%g95809583%_
                                                       _%g95819586%_)
                                                (cons _%g95809583%_
                                                      _%g95819586%_))
                                              '()
                                              _%L9560%_))))
                                 (begin
                                   (let ((_g21022_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g21021_)
                                                (##vector-length _g21021_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g21022_ 3)))
                                         (error "Context expects 3 values"
                                                _g21022_)))
                                   (let ((_%datums9589%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g21021_ 0)))
                                         (_%dispatch9591%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g21021_ 1)))
                                         (_%default9592%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g21021_ 2))))
                                     (let ((_%datum-count9594%_
                                            (_%count-datums9456%_
                                             _%datums9589%_)))
                                       (if (< _%datum-count9594%_ '6)
                                           (let ()
                                             (_%generate-simple-case9461%_
                                              _%L9562%_
                                              _%datums9589%_
                                              _%dispatch9591%_
                                              _%default9592%_))
                                           (if (_%char-datums?9458%_
                                                _%datums9589%_)
                                               (let ()
                                                 (_%generate-char-dispatch9470%_
                                                  _%L9562%_
                                                  _%datums9589%_
                                                  _%dispatch9591%_
                                                  _%default9592%_))
                                               (if (_%fixnum-datums?9459%_
                                                    _%datums9589%_)
                                                   (let ()
                                                     (_%generate-fixnum-dispatch9475%_
                                                      _%L9562%_
                                                      _%datums9589%_
                                                      _%dispatch9591%_
                                                      _%default9592%_))
                                                   (if (< _%datum-count9594%_
                                                          '12)
                                                       (let ()
                                                         (_%generate-simple-case9461%_
                                                          _%L9562%_
                                                          _%datums9589%_
                                                          _%dispatch9591%_
                                                          _%default9592%_))
                                                       (if (_%symbolic-datums?9457%_
                                                            _%datums9589%_)
                                                           (let ()
                                                             (_%generate-symbolic-dispatch9465%_
                                                              _%L9562%_
                                                              _%datums9589%_
                                                              _%dispatch9591%_
                                                              _%default9592%_))
                                                           (let ()
                                                             (_%generate-generic-dispatch9477%_
                                                              _%L9562%_
                                                              _%datums9589%_
                                                              _%dispatch9591%_
                                                              _%default9592%_))))))))))))
                             _%clause94979556%_
                             _%hd94879524%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop94929536%_
                                                     _%target94899530%_
                                                     '()))
                                                  (_%g94799503%_
                                                   _%g94809507%_)))))
                                        (_%g94799503%_ _%g94809507%_))))
                                (_%g94799503%_ _%g94809507%_))))
                        (_%g94799503%_ _%g94809507%_)))))
            (_%g94789611%_ _%stx9450%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-test|
      (lambda (_%stx12513%_)
        (let* ((_%g1251612534%_
                (lambda (_%g1251712530%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1251712530%_)))
               (_%g1251512606%_
                (lambda (_%g1251712538%_)
                  (if (gx#stx-pair? _%g1251712538%_)
                      (let ((_%e1252212541%_ (gx#syntax-e _%g1251712538%_)))
                        (let ((_%hd1252112545%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1252212541%_)))
                              (_%tl1252012548%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1252212541%_))))
                          (if (gx#stx-pair? _%tl1252012548%_)
                              (let ((_%e1252512551%_
                                     (gx#syntax-e _%tl1252012548%_)))
                                (let ((_%hd1252412555%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1252512551%_)))
                                      (_%tl1252312558%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1252512551%_))))
                                  (if (gx#stx-pair? _%tl1252312558%_)
                                      (let ((_%e1252812561%_
                                             (gx#syntax-e _%tl1252312558%_)))
                                        (let ((_%hd1252712565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1252812561%_)))
                                              (_%tl1252612568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1252812561%_))))
                                          (if (gx#stx-null? _%tl1252612568%_)
                                              ((lambda (_%L12571%_ _%L12573%_)
                                                 (let ((_%datum-e12589%_
                                                        (gx#stx-e _%L12573%_)))
                                                   (if (or (let ()
                                                             (declare
                                                               (not safe))
                                                             (symbol? _%datum-e12589%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (keyword?
                                                              _%datum-e12589%_))
                                                           (immediate?
                                                            _%datum-e12589%_))
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'eq?)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _%L12573%_ '()))
                             (cons _%L12571%_ '()))))
               (if (let () (declare (not safe)) (number? _%datum-e12589%_))
                   (let ()
                     (cons (gx#datum->syntax '#f 'eqv?)
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%L12573%_ '()))
                                 (cons _%L12571%_ '()))))
                   (let ()
                     (cons (gx#datum->syntax '#f 'equal?)
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%L12573%_ '()))
                                 (cons _%L12571%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1252712565%_
                                               _%hd1252412555%_)
                                              (_%g1251612534%_
                                               _%g1251712538%_))))
                                      (_%g1251612534%_ _%g1251712538%_))))
                              (_%g1251612534%_ _%g1251712538%_))))
                      (_%g1251612534%_ _%g1251712538%_)))))
          (_%g1251512606%_ _%stx12513%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch|
      (lambda (_%$stx12610%_)
        (let* ((_%g1261412638%_
                (lambda (_%g1261512634%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1261512634%_)))
               (_%g1261312723%_
                (lambda (_%g1261512642%_)
                  (if (gx#stx-pair? _%g1261512642%_)
                      (let ((_%e1262012645%_ (gx#syntax-e _%g1261512642%_)))
                        (let ((_%hd1261912649%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1262012645%_)))
                              (_%tl1261812652%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1262012645%_))))
                          (if (gx#stx-pair? _%tl1261812652%_)
                              (let ((_%e1262312655%_
                                     (gx#syntax-e _%tl1261812652%_)))
                                (let ((_%hd1262212659%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1262312655%_)))
                                      (_%tl1262112662%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1262312655%_))))
                                  (if (gx#stx-pair/null? _%tl1262112662%_)
                                      (let ((_g21023_
                                             (gx#syntax-split-splice
                                              _%tl1262112662%_
                                              '0)))
                                        (begin
                                          (let ((_g21024_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21023_)
                                                       (##vector-length
                                                        _g21023_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21024_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21024_)))
                                          (let ((_%target1262412665%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21023_ 0)))
                                                (_%tl1262612668%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21023_ 1))))
                                            (if (gx#stx-null? _%tl1262612668%_)
                                                (letrec ((_%loop1262712671%_
                                                          (lambda (_%hd1262512675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%K1263112678%_)
                    (if (gx#stx-pair? _%hd1262512675%_)
                        (let ((_%e1262812681%_ (gx#syntax-e _%hd1262512675%_)))
                          (let ((_%lp-hd1262912685%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1262812681%_)))
                                (_%lp-tl1263012688%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1262812681%_))))
                            (_%loop1262712671%_
                             _%lp-tl1263012688%_
                             (cons _%lp-hd1262912685%_ _%K1263112678%_))))
                        (let ((_%K1263212691%_ (reverse _%K1263112678%_)))
                          ((lambda (_%L12695%_ _%L12697%_)
                             (cons (gx#datum->syntax '#f '~case-dispatch*)
                                   (cons '0
                                         (cons _%L12697%_
                                               (foldr (lambda (_%g1271412717%_
                                                               _%g1271512720%_)
                                                        (cons _%g1271412717%_
                                                              _%g1271512720%_))
                                                      '()
                                                      _%L12695%_)))))
                           _%K1263212691%_
                           _%hd1262212659%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1262712671%_
                                                   _%target1262412665%_
                                                   '()))
                                                (_%g1261412638%_
                                                 _%g1261512642%_)))))
                                      (_%g1261412638%_ _%g1261512642%_))))
                              (_%g1261412638%_ _%g1261512642%_))))
                      (_%g1261412638%_ _%g1261512642%_)))))
          (_%g1261312723%_ _%$stx12610%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch*|
      (lambda (_%stx12728%_)
        (let* ((_%__stx1980119802%_ _%stx12728%_)
               (_%g1273512831%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1980119802%_))))
          (let ((_%__kont1980419805%_
                 (lambda (_%L13308%_ _%L13310%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons '#!void '()))))
                (_%__kont1980619807%_
                 (lambda (_%L13250%_ _%L13252%_ _%L13253%_) _%L13250%_))
                (_%__kont1980819809%_
                 (lambda (_%L13147%_ _%L13149%_ _%L13150%_ _%L13151%_)
                   (let* ((_%g1317213180%_
                           (lambda (_%g1317313176%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1317313176%_)))
                          (_%g1317113199%_
                           (lambda (_%g1317313184%_)
                             ((lambda (_%L13187%_)
                                (let ()
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '##fx=)
                                                    (cons _%L13150%_
                                                          (cons _%L13187%_
                                                                '())))
                                              (cons _%L13149%_
                                                    (cons _%L13147%_ '()))))))
                              _%g1317313184%_))))
                     (_%g1317113199%_ (gx#stx-e _%L13151%_)))))
                (_%__kont1981019811%_
                 (lambda (_%L12997%_
                          _%L12999%_
                          _%L13000%_
                          _%L13001%_
                          _%L13002%_)
                   (let* ((_%g1302613041%_
                           (lambda (_%g1302713037%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1302713037%_)))
                          (_%g1302513086%_
                           (lambda (_%g1302713045%_)
                             (if (gx#stx-pair? _%g1302713045%_)
                                 (let ((_%e1303213048%_
                                        (gx#syntax-e _%g1302713045%_)))
                                   (let ((_%hd1303113052%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e1303213048%_)))
                                         (_%tl1303013055%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e1303213048%_))))
                                     (if (gx#stx-pair? _%tl1303013055%_)
                                         (let ((_%e1303513058%_
                                                (gx#syntax-e
                                                 _%tl1303013055%_)))
                                           (let ((_%hd1303413062%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e1303513058%_)))
                                                 (_%tl1303313065%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e1303513058%_))))
                                             (if (gx#stx-null?
                                                  _%tl1303313065%_)
                                                 ((lambda (_%L13068%_
                                                           _%L13070%_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##fx=)
                                (cons _%L13001%_ (cons _%L13070%_ '())))
                          (cons _%L13000%_
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '##fx=)
                                                        (cons _%L13001%_
                                                              (cons _%L13068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L12999%_
                                                        (cons _%L12997%_
                                                              '()))))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd1303413062%_
                                                  _%hd1303113052%_)
                                                 (_%g1302613041%_
                                                  _%g1302713045%_))))
                                         (_%g1302613041%_ _%g1302713045%_))))
                                 (_%g1302613041%_ _%g1302713045%_)))))
                     (_%g1302513086%_
                      (list (gx#stx-e _%L13002%_)
                            (fx1+ (gx#stx-e _%L13002%_)))))))
                (_%__kont1981219813%_
                 (lambda (_%L12898%_ _%L12900%_ _%L12901%_)
                   (cons (gx#datum->syntax '#f '~case-dispatch-bsearch)
                         (cons _%L12901%_
                               (cons _%L12900%_
                                     (foldr (lambda (_%g1292112924%_
                                                     _%g1292212927%_)
                                              (cons _%g1292112924%_
                                                    _%g1292212927%_))
                                            '()
                                            _%L12898%_)))))))
            (let ((_%__match1995819959%_
                   (lambda (_%e1281012838%_
                            _%hd1280912842%_
                            _%tl1280812845%_
                            _%e1281312848%_
                            _%hd1281212852%_
                            _%tl1281112855%_
                            _%e1281612858%_
                            _%hd1281512862%_
                            _%tl1281412865%_
                            _%__splice1981419815%_
                            _%target1281712868%_
                            _%tl1281912871%_)
                     (letrec ((_%loop1282012874%_
                               (lambda (_%hd1281812878%_ _%K1282412881%_)
                                 (if (gx#stx-pair? _%hd1281812878%_)
                                     (let ((_%e1282112884%_
                                            (gx#syntax-e _%hd1281812878%_)))
                                       (let ((_%lp-tl1282312891%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1282112884%_)))
                                             (_%lp-hd1282212888%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1282112884%_))))
                                         (_%loop1282012874%_
                                          _%lp-tl1282312891%_
                                          (cons _%lp-hd1282212888%_
                                                _%K1282412881%_))))
                                     (let ((_%K1282512894%_
                                            (reverse _%K1282412881%_)))
                                       (_%__kont1981219813%_
                                        _%K1282512894%_
                                        _%hd1281512862%_
                                        _%hd1281212852%_))))))
                       (_%loop1282012874%_ _%target1281712868%_ '())))))
              (if (gx#stx-pair? _%__stx1980119802%_)
                  (let ((_%e1274113278%_ (gx#syntax-e _%__stx1980119802%_)))
                    (let ((_%tl1273913285%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1274113278%_)))
                          (_%hd1274013282%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1274113278%_))))
                      (if (gx#stx-pair? _%tl1273913285%_)
                          (let ((_%e1274413288%_
                                 (gx#syntax-e _%tl1273913285%_)))
                            (let ((_%tl1274213295%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1274413288%_)))
                                  (_%hd1274313292%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1274413288%_))))
                              (if (gx#stx-pair? _%tl1274213295%_)
                                  (let ((_%e1274713298%_
                                         (gx#syntax-e _%tl1274213295%_)))
                                    (let ((_%tl1274513305%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1274713298%_)))
                                          (_%hd1274613302%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1274713298%_))))
                                      (if (gx#stx-null? _%tl1274513305%_)
                                          (_%__kont1980419805%_
                                           _%hd1274613302%_
                                           _%hd1274313292%_)
                                          (if (gx#stx-pair? _%tl1274513305%_)
                                              (let ((_%e1276213240%_
                                                     (gx#syntax-e
                                                      _%tl1274513305%_)))
                                                (let ((_%tl1276013247%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1276213240%_)))
                                                      (_%hd1276113244%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1276213240%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1276013247%_)
                                                      (_%__kont1980619807%_
                                                       _%hd1276113244%_
                                                       _%hd1274613302%_
                                                       _%hd1274313292%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1276013247%_)
                                                          (let ((_%e1278113137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1276013247%_)))
                    (let ((_%tl1277913144%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1278113137%_)))
                          (_%hd1278013141%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1278113137%_))))
                      (if (gx#stx-null? _%tl1277913144%_)
                          (_%__kont1980819809%_
                           _%hd1278013141%_
                           _%hd1276113244%_
                           _%hd1274613302%_
                           _%hd1274313292%_)
                          (if (gx#stx-pair? _%tl1277913144%_)
                              (let ((_%e1280412987%_
                                     (gx#syntax-e _%tl1277913144%_)))
                                (let ((_%tl1280212994%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1280412987%_)))
                                      (_%hd1280312991%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1280412987%_))))
                                  (if (gx#stx-null? _%tl1280212994%_)
                                      (_%__kont1981019811%_
                                       _%hd1280312991%_
                                       _%hd1278013141%_
                                       _%hd1276113244%_
                                       _%hd1274613302%_
                                       _%hd1274313292%_)
                                      (if (gx#stx-pair/null? _%tl1274513305%_)
                                          (let ((_%__splice1981419815%_
                                                 (gx#syntax-split-splice
                                                  _%tl1274513305%_
                                                  '0)))
                                            (let ((_%tl1281912871%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1981419815%_
                                                      '1)))
                                                  (_%target1281712868%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1981419815%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1281912871%_)
                                                  (_%__match1995819959%_
                                                   _%e1274113278%_
                                                   _%hd1274013282%_
                                                   _%tl1273913285%_
                                                   _%e1274413288%_
                                                   _%hd1274313292%_
                                                   _%tl1274213295%_
                                                   _%e1274713298%_
                                                   _%hd1274613302%_
                                                   _%tl1274513305%_
                                                   _%__splice1981419815%_
                                                   _%target1281712868%_
                                                   _%tl1281912871%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1273512831%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1273512831%_))))))
                              (if (gx#stx-pair/null? _%tl1274513305%_)
                                  (let ((_%__splice1981419815%_
                                         (gx#syntax-split-splice
                                          _%tl1274513305%_
                                          '0)))
                                    (let ((_%tl1281912871%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1981419815%_
                                              '1)))
                                          (_%target1281712868%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1981419815%_
                                              '0))))
                                      (if (gx#stx-null? _%tl1281912871%_)
                                          (_%__match1995819959%_
                                           _%e1274113278%_
                                           _%hd1274013282%_
                                           _%tl1273913285%_
                                           _%e1274413288%_
                                           _%hd1274313292%_
                                           _%tl1274213295%_
                                           _%e1274713298%_
                                           _%hd1274613302%_
                                           _%tl1274513305%_
                                           _%__splice1981419815%_
                                           _%target1281712868%_
                                           _%tl1281912871%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g1273512831%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1273512831%_)))))))
                  (if (gx#stx-pair/null? _%tl1274513305%_)
                      (let ((_%__splice1981419815%_
                             (gx#syntax-split-splice _%tl1274513305%_ '0)))
                        (let ((_%tl1281912871%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1981419815%_ '1)))
                              (_%target1281712868%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1981419815%_ '0))))
                          (if (gx#stx-null? _%tl1281912871%_)
                              (_%__match1995819959%_
                               _%e1274113278%_
                               _%hd1274013282%_
                               _%tl1273913285%_
                               _%e1274413288%_
                               _%hd1274313292%_
                               _%tl1274213295%_
                               _%e1274713298%_
                               _%hd1274613302%_
                               _%tl1274513305%_
                               _%__splice1981419815%_
                               _%target1281712868%_
                               _%tl1281912871%_)
                              (let ()
                                (declare (not safe))
                                (_%g1273512831%_)))))
                      (let () (declare (not safe)) (_%g1273512831%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl1274513305%_)
                                                  (let ((_%__splice1981419815%_
                                                         (gx#syntax-split-splice
                                                          _%tl1274513305%_
                                                          '0)))
                                                    (let ((_%tl1281912871%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1981419815%_
                                                              '1)))
                                                          (_%target1281712868%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1981419815%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl1281912871%_)
                                                          (_%__match1995819959%_
                                                           _%e1274113278%_
                                                           _%hd1274013282%_
                                                           _%tl1273913285%_
                                                           _%e1274413288%_
                                                           _%hd1274313292%_
                                                           _%tl1274213295%_
                                                           _%e1274713298%_
                                                           _%hd1274613302%_
                                                           _%tl1274513305%_
                                                           _%__splice1981419815%_
                                                           _%target1281712868%_
                                                           _%tl1281912871%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g1273512831%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1273512831%_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1273512831%_)))))
                          (let () (declare (not safe)) (_%g1273512831%_)))))
                  (let () (declare (not safe)) (_%g1273512831%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch-bsearch|
      (lambda (_%stx13330%_)
        (letrec ((_%split13333%_
                  (lambda (_%lst13694%_ _%mid13696%_)
                    (let _%lp13698%_ ((_%i13701%_ '0)
                                      (_%rest13703%_ _%lst13694%_)
                                      (_%left13704%_ '()))
                      (if (fx< _%i13701%_ _%mid13696%_)
                          (_%lp13698%_
                           (fx1+ _%i13701%_)
                           (cdr _%rest13703%_)
                           (cons (car _%rest13703%_) _%left13704%_))
                          (values (reverse _%left13704%_) _%rest13703%_))))))
          (let* ((_%g1333613364%_
                  (lambda (_%g1333713360%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1333713360%_)))
                 (_%g1333513690%_
                  (lambda (_%g1333713368%_)
                    (if (gx#stx-pair? _%g1333713368%_)
                        (let ((_%e1334313371%_ (gx#syntax-e _%g1333713368%_)))
                          (let ((_%hd1334213375%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1334313371%_)))
                                (_%tl1334113378%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1334313371%_))))
                            (if (gx#stx-pair? _%tl1334113378%_)
                                (let ((_%e1334613381%_
                                       (gx#syntax-e _%tl1334113378%_)))
                                  (let ((_%hd1334513385%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1334613381%_)))
                                        (_%tl1334413388%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1334613381%_))))
                                    (if (gx#stx-pair? _%tl1334413388%_)
                                        (let ((_%e1334913391%_
                                               (gx#syntax-e _%tl1334413388%_)))
                                          (let ((_%hd1334813395%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1334913391%_)))
                                                (_%tl1334713398%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1334913391%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl1334713398%_)
                                                (let ((_g21025_
                                                       (gx#syntax-split-splice
                                                        _%tl1334713398%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g21026_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g21025_)
                         (##vector-length _g21025_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g21026_ 2)))
                  (error "Context expects 2 values" _g21026_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target1335013401%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g21025_
                                                              0)))
                                                          (_%tl1335213404%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g21025_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl1335213404%_)
                                                          (letrec ((_%loop1335313407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd1335113411%_ _%K1335713414%_)
                              (if (gx#stx-pair? _%hd1335113411%_)
                                  (let ((_%e1335413417%_
                                         (gx#syntax-e _%hd1335113411%_)))
                                    (let ((_%lp-hd1335513421%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1335413417%_)))
                                          (_%lp-tl1335613424%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1335413417%_))))
                                      (_%loop1335313407%_
                                       _%lp-tl1335613424%_
                                       (cons _%lp-hd1335513421%_
                                             _%K1335713414%_))))
                                  (let ((_%K1335813427%_
                                         (reverse _%K1335713414%_)))
                                    ((lambda (_%L13431%_ _%L13433%_ _%L13434%_)
                                       (let* ((_%len13464%_
                                               (length (foldr (lambda (_%g1345513458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1345613461%_)
                        (cons _%g1345513458%_ _%g1345613461%_))
                      '()
                      _%L13431%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%mid13467%_
                                               (quotient _%len13464%_ '2))
                                              (_g21027_
                                               (_%split13333%_
                                                (foldr (lambda (_%g1346913472%_
                                                                _%g1347013475%_)
                                                         (cons _%g1346913472%_
                                                               _%g1347013475%_))
                                                       '()
                                                       _%L13431%_)
                                                _%mid13467%_)))
                                         (begin
                                           (let ((_g21028_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g21027_)
                                                        (##vector-length
                                                         _g21027_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g21028_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g21028_)))
                                           (let ((_%left13478%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g21027_ 0)))
                                                 (_%right13480%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g21027_
                                                     1))))
                                             (let ()
                                               (let* ((_%g1348413525%_
                                                       (lambda (_%g1348513521%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g1348513521%_)))
                                                      (_%g1348313686%_
                                                       (lambda (_%g1348513529%_)
                                                         (if (gx#stx-pair?
                                                              _%g1348513529%_)
                                                             (let ((_%e1349213532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%g1348513529%_)))
                       (let ((_%hd1349113536%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1349213532%_)))
                             (_%tl1349013539%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1349213532%_))))
                         (if (gx#stx-pair? _%tl1349013539%_)
                             (let ((_%e1349513542%_
                                    (gx#syntax-e _%tl1349013539%_)))
                               (let ((_%hd1349413546%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1349513542%_)))
                                     (_%tl1349313549%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1349513542%_))))
                                 (if (gx#stx-pair/null? _%hd1349413546%_)
                                     (let ((_g21029_
                                            (gx#syntax-split-splice
                                             _%hd1349413546%_
                                             '0)))
                                       (begin
                                         (let ((_g21030_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g21029_)
                                                      (##vector-length
                                                       _g21029_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g21030_ 2)))
                                               (error "Context expects 2 values"
                                                      _g21030_)))
                                         (let ((_%target1349613552%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g21029_ 0)))
                                               (_%tl1349813555%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g21029_ 1))))
                                           (if (gx#stx-null? _%tl1349813555%_)
                                               (letrec ((_%loop1349913558%_
                                                         (lambda (_%hd1349713562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%K-left1350313565%_)
                   (if (gx#stx-pair? _%hd1349713562%_)
                       (let ((_%e1350013568%_ (gx#syntax-e _%hd1349713562%_)))
                         (let ((_%lp-hd1350113572%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1350013568%_)))
                               (_%lp-tl1350213575%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1350013568%_))))
                           (_%loop1349913558%_
                            _%lp-tl1350213575%_
                            (cons _%lp-hd1350113572%_ _%K-left1350313565%_))))
                       (let ((_%K-left1350413578%_
                              (reverse _%K-left1350313565%_)))
                         (if (gx#stx-pair? _%tl1349313549%_)
                             (let ((_%e1350713582%_
                                    (gx#syntax-e _%tl1349313549%_)))
                               (let ((_%hd1350613586%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1350713582%_)))
                                     (_%tl1350513589%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1350713582%_))))
                                 (if (gx#stx-pair/null? _%hd1350613586%_)
                                     (let ((_g21031_
                                            (gx#syntax-split-splice
                                             _%hd1350613586%_
                                             '0)))
                                       (begin
                                         (let ((_g21032_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g21031_)
                                                      (##vector-length
                                                       _g21031_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g21032_ 2)))
                                               (error "Context expects 2 values"
                                                      _g21032_)))
                                         (let ((_%target1350813592%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g21031_ 0)))
                                               (_%tl1351013595%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g21031_ 1))))
                                           (if (gx#stx-null? _%tl1351013595%_)
                                               (letrec ((_%loop1351113598%_
                                                         (lambda (_%hd1350913602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%K-right1351513605%_)
                   (if (gx#stx-pair? _%hd1350913602%_)
                       (let ((_%e1351213608%_ (gx#syntax-e _%hd1350913602%_)))
                         (let ((_%lp-hd1351313612%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1351213608%_)))
                               (_%lp-tl1351413615%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1351213608%_))))
                           (_%loop1351113598%_
                            _%lp-tl1351413615%_
                            (cons _%lp-hd1351313612%_ _%K-right1351513605%_))))
                       (let ((_%K-right1351613618%_
                              (reverse _%K-right1351513605%_)))
                         (if (gx#stx-pair? _%tl1350513589%_)
                             (let ((_%e1351913622%_
                                    (gx#syntax-e _%tl1350513589%_)))
                               (let ((_%hd1351813626%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1351913622%_)))
                                     (_%tl1351713629%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1351913622%_))))
                                 (if (gx#stx-null? _%tl1351713629%_)
                                     ((lambda (_%L13632%_
                                               _%L13634%_
                                               _%L13635%_
                                               _%L13636%_)
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'if)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##fx<)
                                                            (cons _%L13433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L13632%_ '())))
              (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                          (cons _%L13434%_
                                (cons _%L13433%_
                                      (foldr (lambda (_%g1367113674%_
                                                      _%g1367213677%_)
                                               (cons _%g1367113674%_
                                                     _%g1367213677%_))
                                             '()
                                             _%L13635%_))))
                    (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                                (cons _%L13632%_
                                      (cons _%L13433%_
                                            (foldr (lambda (_%g1366913680%_
                                                            _%g1367013683%_)
                                                     (cons _%g1366913680%_
                                                           _%g1367013683%_))
                                                   '()
                                                   _%L13634%_))))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _%hd1351813626%_
                                      _%K-right1351613618%_
                                      _%K-left1350413578%_
                                      _%hd1349113536%_)
                                     (_%g1348413525%_ _%g1348513529%_))))
                             (_%g1348413525%_ _%g1348513529%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1351113598%_
                                                  _%target1350813592%_
                                                  '()))
                                               (_%g1348413525%_
                                                _%g1348513529%_)))))
                                     (_%g1348413525%_ _%g1348513529%_))))
                             (_%g1348413525%_ _%g1348513529%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1349913558%_
                                                  _%target1349613552%_
                                                  '()))
                                               (_%g1348413525%_
                                                _%g1348513529%_)))))
                                     (_%g1348413525%_ _%g1348513529%_))))
                             (_%g1348413525%_ _%g1348513529%_))))
                     (_%g1348413525%_ _%g1348513529%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g1348313686%_
                                                  (list _%mid13467%_
                                                        _%left13478%_
                                                        _%right13480%_
                                                        (fx+ _%mid13467%_
                                                             (gx#stx-e
                                                              _%L13434%_))))))))))
                                     _%K1335813427%_
                                     _%hd1334813395%_
                                     _%hd1334513385%_))))))
                    (_%loop1335313407%_ _%target1335013401%_ '()))
                  (_%g1333613364%_ _%g1333713368%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1333613364%_
                                                 _%g1333713368%_))))
                                        (_%g1333613364%_ _%g1333713368%_))))
                                (_%g1333613364%_ _%g1333713368%_))))
                        (_%g1333613364%_ _%g1333713368%_)))))
            (_%g1333513690%_ _%stx13330%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#do|
      (lambda (_%$stx13710%_)
        (let* ((_%g1371413785%_
                (lambda (_%g1371513781%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1371513781%_)))
               (_%g1371314074%_
                (lambda (_%g1371513789%_)
                  (if (gx#stx-pair? _%g1371513789%_)
                      (let ((_%e1372413792%_ (gx#syntax-e _%g1371513789%_)))
                        (let ((_%hd1372313796%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1372413792%_)))
                              (_%tl1372213799%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1372413792%_))))
                          (if (gx#stx-pair? _%tl1372213799%_)
                              (let ((_%e1372713802%_
                                     (gx#syntax-e _%tl1372213799%_)))
                                (let ((_%hd1372613806%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1372713802%_)))
                                      (_%tl1372513809%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1372713802%_))))
                                  (if (gx#stx-pair/null? _%hd1372613806%_)
                                      (let ((_g21033_
                                             (gx#syntax-split-splice
                                              _%hd1372613806%_
                                              '0)))
                                        (begin
                                          (let ((_g21034_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21033_)
                                                       (##vector-length
                                                        _g21033_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21034_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21034_)))
                                          (let ((_%target1372813812%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21033_ 0)))
                                                (_%tl1373013815%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21033_ 1))))
                                            (if (gx#stx-null? _%tl1373013815%_)
                                                (letrec ((_%loop1373113818%_
                                                          (lambda (_%hd1372913822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step1373513825%_
                           _%init1373613827%_
                           _%var1373713829%_)
                    (if (gx#stx-pair? _%hd1372913822%_)
                        (let ((_%e1373213832%_ (gx#syntax-e _%hd1372913822%_)))
                          (let ((_%lp-hd1373313836%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1373213832%_)))
                                (_%lp-tl1373413839%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1373213832%_))))
                            (if (gx#stx-pair? _%lp-hd1373313836%_)
                                (let ((_%e1374313842%_
                                       (gx#syntax-e _%lp-hd1373313836%_)))
                                  (let ((_%hd1374213846%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1374313842%_)))
                                        (_%tl1374113849%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1374313842%_))))
                                    (if (gx#stx-pair? _%tl1374113849%_)
                                        (let ((_%e1374613852%_
                                               (gx#syntax-e _%tl1374113849%_)))
                                          (let ((_%hd1374513856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1374613852%_)))
                                                (_%tl1374413859%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1374613852%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl1374413859%_)
                                                (let ((_g21035_
                                                       (gx#syntax-split-splice
                                                        _%tl1374413859%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g21036_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g21035_)
                         (##vector-length _g21035_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g21036_ 2)))
                  (error "Context expects 2 values" _g21036_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target1374713862%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g21035_
                                                              0)))
                                                          (_%tl1374913865%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g21035_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl1374913865%_)
                                                          (letrec ((_%loop1375013868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd1374813872%_ _%step1375413875%_)
                              (if (gx#stx-pair? _%hd1374813872%_)
                                  (let ((_%e1375113878%_
                                         (gx#syntax-e _%hd1374813872%_)))
                                    (let ((_%lp-hd1375213882%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1375113878%_)))
                                          (_%lp-tl1375313885%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1375113878%_))))
                                      (_%loop1375013868%_
                                       _%lp-tl1375313885%_
                                       (cons _%lp-hd1375213882%_
                                             _%step1375413875%_))))
                                  (let ((_%step1375513888%_
                                         (reverse _%step1375413875%_)))
                                    (_%loop1373113818%_
                                     _%lp-tl1373413839%_
                                     (cons _%step1375513888%_
                                           _%step1373513825%_)
                                     (cons _%hd1374513856%_ _%init1373613827%_)
                                     (cons _%hd1374213846%_
                                           _%var1373713829%_)))))))
                    (_%loop1375013868%_ _%target1374713862%_ '()))
                  (_%g1371413785%_ _%g1371513789%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1371413785%_
                                                 _%g1371513789%_))))
                                        (_%g1371413785%_ _%g1371513789%_))))
                                (_%g1371413785%_ _%g1371513789%_))))
                        (let ((_%step1373813892%_ (reverse _%step1373513825%_))
                              (_%init1373913895%_ (reverse _%init1373613827%_))
                              (_%var1374013897%_ (reverse _%var1373713829%_)))
                          (if (gx#stx-pair? _%tl1372513809%_)
                              (let ((_%e1375813900%_
                                     (gx#syntax-e _%tl1372513809%_)))
                                (let ((_%hd1375713904%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1375813900%_)))
                                      (_%tl1375613907%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1375813900%_))))
                                  (if (gx#stx-pair? _%hd1375713904%_)
                                      (let ((_%e1376113910%_
                                             (gx#syntax-e _%hd1375713904%_)))
                                        (let ((_%hd1376013914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1376113910%_)))
                                              (_%tl1375913917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1376113910%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1375913917%_)
                                              (let ((_g21037_
                                                     (gx#syntax-split-splice
                                                      _%tl1375913917%_
                                                      '0)))
                                                (begin
                                                  (let ((_g21038_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g21037_)
                                                               (##vector-length
                                                                _g21037_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g21038_ 2)))
                (error "Context expects 2 values" _g21038_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1376213920%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g21037_
                                                            0)))
                                                        (_%tl1376413923%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g21037_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1376413923%_)
                                                        (letrec ((_%loop1376513926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1376313930%_ _%fini1376913933%_)
                            (if (gx#stx-pair? _%hd1376313930%_)
                                (let ((_%e1376613936%_
                                       (gx#syntax-e _%hd1376313930%_)))
                                  (let ((_%lp-hd1376713940%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1376613936%_)))
                                        (_%lp-tl1376813943%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1376613936%_))))
                                    (_%loop1376513926%_
                                     _%lp-tl1376813943%_
                                     (cons _%lp-hd1376713940%_
                                           _%fini1376913933%_))))
                                (let ((_%fini1377013946%_
                                       (reverse _%fini1376913933%_)))
                                  (if (gx#stx-pair/null? _%tl1375613907%_)
                                      (let ((_g21039_
                                             (gx#syntax-split-splice
                                              _%tl1375613907%_
                                              '0)))
                                        (begin
                                          (let ((_g21040_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21039_)
                                                       (##vector-length
                                                        _g21039_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21040_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21040_)))
                                          (let ((_%target1377113950%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21039_ 0)))
                                                (_%tl1377313953%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21039_ 1))))
                                            (if (gx#stx-null? _%tl1377313953%_)
                                                (letrec ((_%loop1377413956%_
                                                          (lambda (_%hd1377213960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body1377813963%_)
                    (if (gx#stx-pair? _%hd1377213960%_)
                        (let ((_%e1377513966%_ (gx#syntax-e _%hd1377213960%_)))
                          (let ((_%lp-hd1377613970%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1377513966%_)))
                                (_%lp-tl1377713973%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1377513966%_))))
                            (_%loop1377413956%_
                             _%lp-tl1377713973%_
                             (cons _%lp-hd1377613970%_ _%body1377813963%_))))
                        (let ((_%body1377913976%_
                               (reverse _%body1377813963%_)))
                          ((lambda (_%L13980%_
                                    _%L13982%_
                                    _%L13983%_
                                    _%L13984%_
                                    _%L13985%_
                                    _%L13986%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g1401914022%_
                                                  _%g1402014025%_)
                                           (cons _%g1401914022%_
                                                 _%g1402014025%_))
                                         '()
                                         _%L13986%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%L13985%_
                                                      _%L13986%_)
                                                     (foldr (lambda (_%g1403614040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g1403714043%_
                             _%g1403814045%_)
                      (cons (cons _%g1403714043%_ (cons _%g1403614040%_ '()))
                            _%g1403814045%_))
                    '()
                    _%L13985%_
                    _%L13986%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _%L13983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_%g1403414048%_
                                                               _%g1403514051%_)
                                                        (cons _%g1403414048%_
                                                              _%g1403514051%_))
                                                      '()
                                                      _%L13982%_)))
                                   (cons (cons (gx#datum->syntax '#f 'begin)
                                               (foldr (lambda (_%g1402714054%_
                                                               _%g1402814057%_)
                                                        (cons _%g1402714054%_
                                                              _%g1402814057%_))
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$loop)
                          (begin
                            (gx#syntax-check-splice-targets
                             _%L13984%_
                             _%L13986%_)
                            (foldr (lambda (_%g1402914060%_
                                            _%g1403014063%_
                                            _%g1403114065%_)
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons _%g1403014063%_
                                                       (foldr (lambda (_%g1403214068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1403314071%_)
                        (cons _%g1403214068%_ _%g1403314071%_))
                      '()
                      _%g1402914060%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g1403114065%_))
                                   '()
                                   _%L13984%_
                                   _%L13986%_)))
                    '())
              _%L13980%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g1371413785%_ _%g1371513789%_)))
                           _%body1377913976%_
                           _%fini1377013946%_
                           _%hd1376013914%_
                           _%step1373813892%_
                           _%init1373913895%_
                           _%var1374013897%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1377413956%_
                                                   _%target1377113950%_
                                                   '()))
                                                (_%g1371413785%_
                                                 _%g1371513789%_)))))
                                      (_%g1371413785%_ _%g1371513789%_)))))))
                  (_%loop1376513926%_ _%target1376213920%_ '()))
                (_%g1371413785%_ _%g1371513789%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1371413785%_
                                               _%g1371513789%_))))
                                      (_%g1371413785%_ _%g1371513789%_))))
                              (_%g1371413785%_ _%g1371513789%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1373113818%_
                                                   _%target1372813812%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g1371413785%_
                                                 _%g1371513789%_)))))
                                      (_%g1371413785%_ _%g1371513789%_))))
                              (_%g1371413785%_ _%g1371513789%_))))
                      (_%g1371413785%_ _%g1371513789%_)))))
          (_%g1371314074%_ _%$stx13710%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#do-while|
      (lambda (_%$stx14082%_)
        (let* ((_%g1408614109%_
                (lambda (_%g1408714105%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1408714105%_)))
               (_%g1408514180%_
                (lambda (_%g1408714113%_)
                  (if (gx#stx-pair? _%g1408714113%_)
                      (let ((_%e1409414116%_ (gx#syntax-e _%g1408714113%_)))
                        (let ((_%hd1409314120%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1409414116%_)))
                              (_%tl1409214123%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1409414116%_))))
                          (if (gx#stx-pair? _%tl1409214123%_)
                              (let ((_%e1409714126%_
                                     (gx#syntax-e _%tl1409214123%_)))
                                (let ((_%hd1409614130%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1409714126%_)))
                                      (_%tl1409514133%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1409714126%_))))
                                  (if (gx#stx-pair? _%tl1409514133%_)
                                      (let ((_%e1410014136%_
                                             (gx#syntax-e _%tl1409514133%_)))
                                        (let ((_%hd1409914140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1410014136%_)))
                                              (_%tl1409814143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1410014136%_))))
                                          (if (gx#stx-pair? _%hd1409914140%_)
                                              (let ((_%e1410314146%_
                                                     (gx#syntax-e
                                                      _%hd1409914140%_)))
                                                (let ((_%hd1410214150%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1410314146%_)))
                                                      (_%tl1410114153%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1410314146%_))))
                                                  ((lambda (_%L14156%_
                                                            _%L14158%_
                                                            _%L14159%_
                                                            _%L14160%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'do)
                                                           (cons _%L14160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (gx#datum->syntax '#f 'not)
                                           (cons _%L14159%_ '()))
                                     _%L14158%_)
                               _%L14156%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%tl1409814143%_
                                                   _%tl1410114153%_
                                                   _%hd1410214150%_
                                                   _%hd1409614130%_)))
                                              (_%g1408614109%_
                                               _%g1408714113%_))))
                                      (_%g1408614109%_ _%g1408714113%_))))
                              (_%g1408614109%_ _%g1408714113%_))))
                      (_%g1408614109%_ _%g1408714113%_)))))
          (_%g1408514180%_ _%$stx14082%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#begin0|
      (lambda (_%$stx14184%_)
        (let* ((_%__stx1996119962%_ _%$stx14184%_)
               (_%g1418914220%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1996119962%_))))
          (let ((_%__kont1996419965%_ (lambda (_%L14332%_) _%L14332%_))
                (_%__kont1996619967%_
                 (lambda (_%L14277%_ _%L14279%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$r)
                                     (cons _%L14279%_ '()))
                               (cons (cons (gx#datum->syntax '#f '%#expression)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1429614299%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1429714302%_)
                        (cons _%g1429614299%_ _%g1429714302%_))
                      '()
                      _%L14277%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (gx#datum->syntax '#f '$r)
                                           '())))))))
            (let ((_%__match2000420005%_
                   (lambda (_%e1420214227%_
                            _%hd1420114231%_
                            _%tl1420014234%_
                            _%e1420514237%_
                            _%hd1420414241%_
                            _%tl1420314244%_
                            _%__splice1996819969%_
                            _%target1420614247%_
                            _%tl1420814250%_)
                     (letrec ((_%loop1420914253%_
                               (lambda (_%hd1420714257%_ _%rest1421314260%_)
                                 (if (gx#stx-pair? _%hd1420714257%_)
                                     (let ((_%e1421014263%_
                                            (gx#syntax-e _%hd1420714257%_)))
                                       (let ((_%lp-tl1421214270%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1421014263%_)))
                                             (_%lp-hd1421114267%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1421014263%_))))
                                         (_%loop1420914253%_
                                          _%lp-tl1421214270%_
                                          (cons _%lp-hd1421114267%_
                                                _%rest1421314260%_))))
                                     (let ((_%rest1421414273%_
                                            (reverse _%rest1421314260%_)))
                                       (_%__kont1996619967%_
                                        _%rest1421414273%_
                                        _%hd1420414241%_))))))
                       (_%loop1420914253%_ _%target1420614247%_ '())))))
              (if (gx#stx-pair? _%__stx1996119962%_)
                  (let ((_%e1419414312%_ (gx#syntax-e _%__stx1996119962%_)))
                    (let ((_%tl1419214319%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1419414312%_)))
                          (_%hd1419314316%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1419414312%_))))
                      (if (gx#stx-pair? _%tl1419214319%_)
                          (let ((_%e1419714322%_
                                 (gx#syntax-e _%tl1419214319%_)))
                            (let ((_%tl1419514329%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1419714322%_)))
                                  (_%hd1419614326%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1419714322%_))))
                              (if (gx#stx-null? _%tl1419514329%_)
                                  (_%__kont1996419965%_ _%hd1419614326%_)
                                  (if (gx#stx-pair/null? _%tl1419514329%_)
                                      (let ((_%__splice1996819969%_
                                             (gx#syntax-split-splice
                                              _%tl1419514329%_
                                              '0)))
                                        (let ((_%tl1420814250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1996819969%_
                                                  '1)))
                                              (_%target1420614247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1996819969%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1420814250%_)
                                              (_%__match2000420005%_
                                               _%e1419414312%_
                                               _%hd1419314316%_
                                               _%tl1419214319%_
                                               _%e1419714322%_
                                               _%hd1419614326%_
                                               _%tl1419514329%_
                                               _%__splice1996819969%_
                                               _%target1420614247%_
                                               _%tl1420814250%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1418914220%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1418914220%_))))))
                          (let () (declare (not safe)) (_%g1418914220%_)))))
                  (let () (declare (not safe)) (_%g1418914220%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#rec|
      (lambda (_%$stx14350%_)
        (let* ((_%__stx2000720008%_ _%$stx14350%_)
               (_%g1435614409%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2000720008%_))))
          (let ((_%__kont2001020011%_
                 (lambda (_%L14611%_ _%L14613%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%L14613%_ (cons _%L14611%_ '()))
                                     '())
                               (cons _%L14613%_ '())))))
                (_%__kont2001220013%_
                 (lambda (_%L14555%_ _%L14557%_)
                   (cons (gx#datum->syntax '#f 'letrec-values)
                         (cons (cons (cons _%L14557%_ (cons _%L14555%_ '()))
                                     '())
                               (cons (cons (gx#datum->syntax '#f 'values)
                                           _%L14557%_)
                                     '())))))
                (_%__kont2001420015%_
                 (lambda (_%L14476%_ _%L14478%_ _%L14479%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%L14479%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons _%L14478%_
                                                             (foldr (lambda (_%g1449914502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1450014505%_)
                              (cons _%g1449914502%_ _%g1450014505%_))
                            '()
                            _%L14476%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons _%L14479%_ '()))))))
            (let* ((_%__match2009420095%_
                    (lambda (_%e1438814416%_
                             _%hd1438714420%_
                             _%tl1438614423%_
                             _%e1439114426%_
                             _%hd1439014430%_
                             _%tl1438914433%_
                             _%e1439414436%_
                             _%hd1439314440%_
                             _%tl1439214443%_
                             _%__splice2001620017%_
                             _%target1439514446%_
                             _%tl1439714449%_)
                      (letrec ((_%loop1439814452%_
                                (lambda (_%hd1439614456%_ _%body1440214459%_)
                                  (if (gx#stx-pair? _%hd1439614456%_)
                                      (let ((_%e1439914462%_
                                             (gx#syntax-e _%hd1439614456%_)))
                                        (let ((_%lp-tl1440114469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1439914462%_)))
                                              (_%lp-hd1440014466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1439914462%_))))
                                          (_%loop1439814452%_
                                           _%lp-tl1440114469%_
                                           (cons _%lp-hd1440014466%_
                                                 _%body1440214459%_))))
                                      (let ((_%body1440314472%_
                                             (reverse _%body1440214459%_)))
                                        (let ((_%L14476%_ _%body1440314472%_)
                                              (_%L14478%_ _%tl1439214443%_)
                                              (_%L14479%_ _%hd1439314440%_))
                                          (if (gx#identifier? _%L14479%_)
                                              (_%__kont2001420015%_
                                               _%L14476%_
                                               _%L14478%_
                                               _%L14479%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1435614409%_)))))))))
                        (_%loop1439814452%_ _%target1439514446%_ '()))))
                   (_%__match2006820069%_
                    (lambda (_%e1437314515%_
                             _%hd1437214519%_
                             _%tl1437114522%_
                             _%e1437614525%_
                             _%hd1437514529%_
                             _%tl1437414532%_
                             _%e1437914535%_
                             _%hd1437814539%_
                             _%tl1437714542%_
                             _%e1438214545%_
                             _%hd1438114549%_
                             _%tl1438014552%_)
                      (let ((_%L14555%_ _%hd1438114549%_)
                            (_%L14557%_ _%tl1437714542%_))
                        (if (gx#identifier-list? _%L14557%_)
                            (_%__kont2001220013%_ _%L14555%_ _%L14557%_)
                            (if (gx#stx-pair/null? _%tl1437414532%_)
                                (let ((_%__splice2001620017%_
                                       (gx#syntax-split-splice
                                        _%tl1437414532%_
                                        '0)))
                                  (let ((_%tl1439714449%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2001620017%_
                                            '1)))
                                        (_%target1439514446%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2001620017%_
                                            '0))))
                                    (if (gx#stx-null? _%tl1439714449%_)
                                        (_%__match2009420095%_
                                         _%e1437314515%_
                                         _%hd1437214519%_
                                         _%tl1437114522%_
                                         _%e1437614525%_
                                         _%hd1437514529%_
                                         _%tl1437414532%_
                                         _%e1437914535%_
                                         _%hd1437814539%_
                                         _%tl1437714542%_
                                         _%__splice2001620017%_
                                         _%target1439514446%_
                                         _%tl1439714449%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1435614409%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1435614409%_)))))))
                   (_%__match2003820039%_
                    (lambda (_%e1436214581%_
                             _%hd1436114585%_
                             _%tl1436014588%_
                             _%e1436514591%_
                             _%hd1436414595%_
                             _%tl1436314598%_
                             _%e1436814601%_
                             _%hd1436714605%_
                             _%tl1436614608%_)
                      (let ((_%L14611%_ _%hd1436714605%_)
                            (_%L14613%_ _%hd1436414595%_))
                        (if (gx#identifier? _%L14613%_)
                            (_%__kont2001020011%_ _%L14611%_ _%L14613%_)
                            (if (gx#stx-pair? _%hd1436414595%_)
                                (let ((_%e1437914535%_
                                       (gx#syntax-e _%hd1436414595%_)))
                                  (let ((_%tl1437714542%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1437914535%_)))
                                        (_%hd1437814539%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1437914535%_))))
                                    (if (gx#identifier? _%hd1437814539%_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core/sugar~Sugar-2[1]#_g21041_|
                                             _%hd1437814539%_)
                                            (_%__match2006820069%_
                                             _%e1436214581%_
                                             _%hd1436114585%_
                                             _%tl1436014588%_
                                             _%e1436514591%_
                                             _%hd1436414595%_
                                             _%tl1436314598%_
                                             _%e1437914535%_
                                             _%hd1437814539%_
                                             _%tl1437714542%_
                                             _%e1436814601%_
                                             _%hd1436714605%_
                                             _%tl1436614608%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl1436314598%_)
                                                (let ((_%__splice2001620017%_
                                                       (gx#syntax-split-splice
                                                        _%tl1436314598%_
                                                        '0)))
                                                  (let ((_%tl1439714449%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2001620017%_
                                                            '1)))
                                                        (_%target1439514446%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2001620017%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl1439714449%_)
                                                        (_%__match2009420095%_
                                                         _%e1436214581%_
                                                         _%hd1436114585%_
                                                         _%tl1436014588%_
                                                         _%e1436514591%_
                                                         _%hd1436414595%_
                                                         _%tl1436314598%_
                                                         _%e1437914535%_
                                                         _%hd1437814539%_
                                                         _%tl1437714542%_
                                                         _%__splice2001620017%_
                                                         _%target1439514446%_
                                                         _%tl1439714449%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g1435614409%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1435614409%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl1436314598%_)
                                            (let ((_%__splice2001620017%_
                                                   (gx#syntax-split-splice
                                                    _%tl1436314598%_
                                                    '0)))
                                              (let ((_%tl1439714449%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2001620017%_
                                                        '1)))
                                                    (_%target1439514446%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2001620017%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1439714449%_)
                                                    (_%__match2009420095%_
                                                     _%e1436214581%_
                                                     _%hd1436114585%_
                                                     _%tl1436014588%_
                                                     _%e1436514591%_
                                                     _%hd1436414595%_
                                                     _%tl1436314598%_
                                                     _%e1437914535%_
                                                     _%hd1437814539%_
                                                     _%tl1437714542%_
                                                     _%__splice2001620017%_
                                                     _%target1439514446%_
                                                     _%tl1439714449%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1435614409%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g1435614409%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1435614409%_))))))))
              (if (gx#stx-pair? _%__stx2000720008%_)
                  (let ((_%e1436214581%_ (gx#syntax-e _%__stx2000720008%_)))
                    (let ((_%tl1436014588%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1436214581%_)))
                          (_%hd1436114585%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1436214581%_))))
                      (if (gx#stx-pair? _%tl1436014588%_)
                          (let ((_%e1436514591%_
                                 (gx#syntax-e _%tl1436014588%_)))
                            (let ((_%tl1436314598%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1436514591%_)))
                                  (_%hd1436414595%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1436514591%_))))
                              (if (gx#stx-pair? _%tl1436314598%_)
                                  (let ((_%e1436814601%_
                                         (gx#syntax-e _%tl1436314598%_)))
                                    (let ((_%tl1436614608%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1436814601%_)))
                                          (_%hd1436714605%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1436814601%_))))
                                      (if (gx#stx-null? _%tl1436614608%_)
                                          (_%__match2003820039%_
                                           _%e1436214581%_
                                           _%hd1436114585%_
                                           _%tl1436014588%_
                                           _%e1436514591%_
                                           _%hd1436414595%_
                                           _%tl1436314598%_
                                           _%e1436814601%_
                                           _%hd1436714605%_
                                           _%tl1436614608%_)
                                          (if (gx#stx-pair? _%hd1436414595%_)
                                              (let ((_%e1437914535%_
                                                     (gx#syntax-e
                                                      _%hd1436414595%_)))
                                                (let ((_%tl1437714542%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1437914535%_)))
                                                      (_%hd1437814539%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1437914535%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl1436314598%_)
                                                      (let ((_%__splice2001620017%_
                                                             (gx#syntax-split-splice
                                                              _%tl1436314598%_
                                                              '0)))
                                                        (let ((_%tl1439714449%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice2001620017%_ '1)))
                      (_%target1439514446%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice2001620017%_ '0))))
                  (if (gx#stx-null? _%tl1439714449%_)
                      (_%__match2009420095%_
                       _%e1436214581%_
                       _%hd1436114585%_
                       _%tl1436014588%_
                       _%e1436514591%_
                       _%hd1436414595%_
                       _%tl1436314598%_
                       _%e1437914535%_
                       _%hd1437814539%_
                       _%tl1437714542%_
                       _%__splice2001620017%_
                       _%target1439514446%_
                       _%tl1439714449%_)
                      (let () (declare (not safe)) (_%g1435614409%_)))))
              (let () (declare (not safe)) (_%g1435614409%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1435614409%_))))))
                                  (if (gx#stx-pair? _%hd1436414595%_)
                                      (let ((_%e1437914535%_
                                             (gx#syntax-e _%hd1436414595%_)))
                                        (let ((_%tl1437714542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1437914535%_)))
                                              (_%hd1437814539%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1437914535%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1436314598%_)
                                              (let ((_%__splice2001620017%_
                                                     (gx#syntax-split-splice
                                                      _%tl1436314598%_
                                                      '0)))
                                                (let ((_%tl1439714449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2001620017%_
                                                          '1)))
                                                      (_%target1439514446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2001620017%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1439714449%_)
                                                      (_%__match2009420095%_
                                                       _%e1436214581%_
                                                       _%hd1436114585%_
                                                       _%tl1436014588%_
                                                       _%e1436514591%_
                                                       _%hd1436414595%_
                                                       _%tl1436314598%_
                                                       _%e1437914535%_
                                                       _%hd1437814539%_
                                                       _%tl1437714542%_
                                                       _%__splice2001620017%_
                                                       _%target1439514446%_
                                                       _%tl1439714449%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1435614409%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1435614409%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1435614409%_))))))
                          (let () (declare (not safe)) (_%g1435614409%_)))))
                  (let () (declare (not safe)) (_%g1435614409%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet|
      (lambda (_%stx14633%_)
        (letrec ((_%let-bind?14636%_
                  (lambda (_%x15559%_)
                    (let* ((_%__stx2009720098%_ _%x15559%_)
                           (_%g1556415583%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2009720098%_))))
                      (let ((_%__kont2010020101%_
                             (lambda (_%L15651%_ _%L15653%_)
                               (_%let-head?14639%_ _%L15653%_)))
                            (_%__kont2010220103%_ (lambda (_%L15611%_) '#t))
                            (_%__kont2010420105%_ (lambda () '#f)))
                        (if (gx#stx-pair? _%__stx2009720098%_)
                            (let ((_%e1557015631%_
                                   (gx#syntax-e _%__stx2009720098%_)))
                              (let ((_%tl1556815638%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1557015631%_)))
                                    (_%hd1556915635%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1557015631%_))))
                                (if (gx#stx-pair? _%tl1556815638%_)
                                    (let ((_%e1557315641%_
                                           (gx#syntax-e _%tl1556815638%_)))
                                      (let ((_%tl1557115648%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1557315641%_)))
                                            (_%hd1557215645%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1557315641%_))))
                                        (if (gx#stx-null? _%tl1557115648%_)
                                            (_%__kont2010020101%_
                                             _%hd1557215645%_
                                             _%hd1556915635%_)
                                            (_%__kont2010420105%_))))
                                    (if (gx#stx-null? _%tl1556815638%_)
                                        (_%__kont2010220103%_ _%hd1556915635%_)
                                        (_%__kont2010420105%_)))))
                            (_%__kont2010420105%_))))))
                 (_%let-bind14638%_
                  (lambda (_%x15461%_)
                    (let* ((_%__stx2013120132%_ _%x15461%_)
                           (_%g1546515484%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2013120132%_))))
                      (let ((_%__kont2013420135%_
                             (lambda (_%L15540%_ _%L15542%_) _%x15461%_))
                            (_%__kont2013620137%_
                             (lambda (_%L15501%_)
                               (cons (gx#datum->syntax '#f '_)
                                     (cons _%L15501%_ '())))))
                        (if (gx#stx-pair? _%__stx2013120132%_)
                            (let ((_%e1547115520%_
                                   (gx#syntax-e _%__stx2013120132%_)))
                              (let ((_%tl1546915527%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1547115520%_)))
                                    (_%hd1547015524%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1547115520%_))))
                                (if (gx#stx-pair? _%tl1546915527%_)
                                    (let ((_%e1547415530%_
                                           (gx#syntax-e _%tl1546915527%_)))
                                      (let ((_%tl1547215537%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1547415530%_)))
                                            (_%hd1547315534%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1547415530%_))))
                                        (if (gx#stx-null? _%tl1547215537%_)
                                            (_%__kont2013420135%_
                                             _%hd1547315534%_
                                             _%hd1547015524%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1546515484%_)))))
                                    (if (gx#stx-null? _%tl1546915527%_)
                                        (_%__kont2013620137%_ _%hd1547015524%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1546515484%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g1546515484%_)))))))
                 (_%let-head?14639%_
                  (lambda (_%x15401%_)
                    (let* ((_%__stx2016320164%_ _%x15401%_)
                           (_%g1540515416%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2016320164%_))))
                      (let ((_%__kont2016620167%_
                             (lambda (_%L15444%_)
                               (gx#stx-andmap gx#identifier? _%L15444%_)))
                            (_%__kont2016820169%_
                             (lambda () (gx#identifier? _%x15401%_))))
                        (if (gx#stx-pair? _%__stx2016320164%_)
                            (let ((_%e1541015434%_
                                   (gx#syntax-e _%__stx2016320164%_)))
                              (let ((_%tl1540815441%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1541015434%_)))
                                    (_%hd1540915438%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1541015434%_))))
                                (if (gx#identifier? _%hd1540915438%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g21042_|
                                         _%hd1540915438%_)
                                        (_%__kont2016620167%_ _%tl1540815441%_)
                                        (_%__kont2016820169%_))
                                    (_%__kont2016820169%_))))
                            (_%__kont2016820169%_))))))
                 (_%let-head14640%_
                  (lambda (_%x15341%_)
                    (let* ((_%__stx2018320184%_ _%x15341%_)
                           (_%g1534515356%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2018320184%_))))
                      (let ((_%__kont2018620187%_
                             (lambda (_%L15384%_) _%L15384%_))
                            (_%__kont2018820189%_
                             (lambda () (list _%x15341%_))))
                        (if (gx#stx-pair? _%__stx2018320184%_)
                            (let ((_%e1535015374%_
                                   (gx#syntax-e _%__stx2018320184%_)))
                              (let ((_%tl1534815381%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1535015374%_)))
                                    (_%hd1534915378%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1535015374%_))))
                                (if (gx#identifier? _%hd1534915378%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g21043_|
                                         _%hd1534915378%_)
                                        (_%__kont2018620187%_ _%tl1534815381%_)
                                        (_%__kont2018820189%_))
                                    (_%__kont2018820189%_))))
                            (_%__kont2018820189%_)))))))
          (let* ((_%__stx2020320204%_ _%stx14633%_)
                 (_%g1464414716%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2020320204%_))))
            (let ((_%__kont2020620207%_
                   (lambda (_%L15314%_ _%L15316%_ _%L15317%_ _%L15318%_)
                     (cons _%L15318%_
                           (cons (cons (cons _%L15317%_ (cons _%L15316%_ '()))
                                       '())
                                 _%L15314%_))))
                  (_%__kont2020820209%_
                   (lambda (_%L15236%_ _%L15238%_)
                     (cons (gx#datum->syntax '#f 'and)
                           (cons _%L15238%_
                                 (cons (cons (gx#datum->syntax '#f 'let)
                                             (cons '()
                                                   (foldr (lambda (_%g1525815261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1525915264%_)
                    (cons _%g1525815261%_ _%g1525915264%_))
                  '()
                  _%L15236%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                  (_%__kont2021220213%_
                   (lambda (_%L14803%_ _%L14805%_)
                     (let* ((_%g1483614862%_
                             (lambda (_%g1483714858%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g1483714858%_)))
                            (_%g1483515147%_
                             (lambda (_%g1483714866%_)
                               (if (gx#stx-pair/null? _%g1483714866%_)
                                   (let ((_g21044_
                                          (gx#syntax-split-splice
                                           _%g1483714866%_
                                           '0)))
                                     (begin
                                       (let ((_g21045_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21044_)
                                                    (##vector-length _g21044_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21045_ 2)))
                                             (error "Context expects 2 values"
                                                    _g21045_)))
                                       (let ((_%target1484014869%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21044_ 0)))
                                             (_%tl1484214872%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21044_ 1))))
                                         (if (gx#stx-null? _%tl1484214872%_)
                                             (letrec ((_%loop1484314875%_
                                                       (lambda (_%hd1484114879%_
                                                                _%e1484714882%_
                                                                _%hd1484814884%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1484114879%_)
                                                             (let ((_%e1484414887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1484114879%_)))
                       (let ((_%lp-hd1484514891%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1484414887%_)))
                             (_%lp-tl1484614894%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1484414887%_))))
                         (if (gx#stx-pair? _%lp-hd1484514891%_)
                             (let ((_%e1485314897%_
                                    (gx#syntax-e _%lp-hd1484514891%_)))
                               (let ((_%hd1485214901%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1485314897%_)))
                                     (_%tl1485114904%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1485314897%_))))
                                 (if (gx#stx-pair? _%tl1485114904%_)
                                     (let ((_%e1485614907%_
                                            (gx#syntax-e _%tl1485114904%_)))
                                       (let ((_%hd1485514911%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1485614907%_)))
                                             (_%tl1485414914%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1485614907%_))))
                                         (if (gx#stx-null? _%tl1485414914%_)
                                             (_%loop1484314875%_
                                              _%lp-tl1484614894%_
                                              (cons _%hd1485514911%_
                                                    _%e1484714882%_)
                                              (cons _%hd1485214901%_
                                                    _%hd1484814884%_))
                                             (_%g1483614862%_
                                              _%g1483714866%_))))
                                     (_%g1483614862%_ _%g1483714866%_))))
                             (_%g1483614862%_ _%g1483714866%_))))
                     (let ((_%e1484914917%_ (reverse _%e1484714882%_))
                           (_%hd1485014920%_ (reverse _%hd1484814884%_)))
                       ((lambda (_%L14923%_ _%L14925%_)
                          (let ()
                            (let* ((_%g1494114958%_
                                    (lambda (_%g1494214954%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g1494214954%_)))
                                   (_%g1494015135%_
                                    (lambda (_%g1494214962%_)
                                      (if (gx#stx-pair/null? _%g1494214962%_)
                                          (let ((_g21046_
                                                 (gx#syntax-split-splice
                                                  _%g1494214962%_
                                                  '0)))
                                            (begin
                                              (let ((_g21047_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g21046_)
                                                           (##vector-length
                                                            _g21046_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g21047_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g21047_)))
                                              (let ((_%target1494414965%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g21046_
                                                        0)))
                                                    (_%tl1494614968%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g21046_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl1494614968%_)
                                                    (letrec ((_%loop1494714971%_
                                                              (lambda (_%hd1494514975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$e1495114978%_)
                        (if (gx#stx-pair? _%hd1494514975%_)
                            (let ((_%e1494814981%_
                                   (gx#syntax-e _%hd1494514975%_)))
                              (let ((_%lp-hd1494914985%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1494814981%_)))
                                    (_%lp-tl1495014988%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1494814981%_))))
                                (_%loop1494714971%_
                                 _%lp-tl1495014988%_
                                 (cons _%lp-hd1494914985%_ _%$e1495114978%_))))
                            (let ((_%$e1495214991%_
                                   (reverse _%$e1495114978%_)))
                              ((lambda (_%L14995%_)
                                 (let ()
                                   (let* ((_%g1501215029%_
                                           (lambda (_%g1501315025%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1501315025%_)))
                                          (_%g1501115123%_
                                           (lambda (_%g1501315033%_)
                                             (if (gx#stx-pair/null?
                                                  _%g1501315033%_)
                                                 (let ((_g21048_
                                                        (gx#syntax-split-splice
                                                         _%g1501315033%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g21049_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g21048_)
                          (##vector-length _g21048_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g21049_ 2)))
                   (error "Context expects 2 values" _g21049_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target1501515036%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g21048_
                                                               0)))
                                                           (_%tl1501715039%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g21048_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl1501715039%_)
                                                           (letrec ((_%loop1501815042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd1501615046%_ _%hd-bind1502215049%_)
                               (if (gx#stx-pair? _%hd1501615046%_)
                                   (let ((_%e1501915052%_
                                          (gx#syntax-e _%hd1501615046%_)))
                                     (let ((_%lp-hd1502015056%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e1501915052%_)))
                                           (_%lp-tl1502115059%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e1501915052%_))))
                                       (_%loop1501815042%_
                                        _%lp-tl1502115059%_
                                        (cons _%lp-hd1502015056%_
                                              _%hd-bind1502215049%_))))
                                   (let ((_%hd-bind1502315062%_
                                          (reverse _%hd-bind1502215049%_)))
                                     ((lambda (_%L15066%_)
                                        (let ()
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (begin
                                                        (gx#syntax-check-splice-targets
                                                         _%L14923%_
                                                         _%L14995%_)
                                                        (foldr (lambda (_%g1509115095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g1509215098%_
                                _%g1509315100%_)
                         (cons (cons (cons _%g1509215098%_ '())
                                     (cons _%g1509115095%_ '()))
                               _%g1509315100%_))
                       '()
                       _%L14923%_
                       _%L14995%_))
              (cons (cons (gx#datum->syntax '#f 'and)
                          (foldr (lambda (_%g1508415103%_ _%g1508515106%_)
                                   (cons _%g1508415103%_ _%g1508515106%_))
                                 (cons (cons (gx#datum->syntax '#f 'let-values)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%L14995%_
                                                      _%L15066%_)
                                                     (foldr (lambda (_%g1508815109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g1508915112%_
                             _%g1509015114%_)
                      (cons (cons _%g1508915112%_ (cons _%g1508815109%_ '()))
                            _%g1509015114%_))
                    '()
                    _%L14995%_
                    _%L15066%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (foldr (lambda (_%g1508615117%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1508715120%_)
                    (cons _%g1508615117%_ _%g1508715120%_))
                  '()
                  _%L14803%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())
                                 _%L14995%_))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _%hd-bind1502315062%_))))))
                     (_%loop1501815042%_ _%target1501515036%_ '()))
                   (_%g1501215029%_ _%g1501315033%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g1501215029%_
                                                  _%g1501315033%_)))))
                                     (_%g1501115123%_
                                      (gx#stx-map
                                       _%let-head14640%_
                                       (foldr (lambda (_%g1512615129%_
                                                       _%g1512715132%_)
                                                (cons _%g1512615129%_
                                                      _%g1512715132%_))
                                              '()
                                              _%L14925%_))))))
                               _%$e1495214991%_))))))
              (_%loop1494714971%_ _%target1494414965%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1494114958%_
                                                     _%g1494214962%_)))))
                                          (_%g1494114958%_ _%g1494214962%_)))))
                              (_%g1494015135%_
                               (gx#gentemps
                                (foldr (lambda (_%g1513815141%_
                                                _%g1513915144%_)
                                         (cons _%g1513815141%_
                                               _%g1513915144%_))
                                       '()
                                       _%L14925%_))))))
                        _%e1484914917%_
                        _%hd1485014920%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1484314875%_
                                                _%target1484014869%_
                                                '()
                                                '()))
                                             (_%g1483614862%_
                                              _%g1483714866%_)))))
                                   (_%g1483614862%_ _%g1483714866%_)))))
                       (_%g1483515147%_
                        (gx#stx-map
                         _%let-bind14638%_
                         (foldr (lambda (_%g1515015153%_ _%g1515115156%_)
                                  (cons _%g1515015153%_ _%g1515115156%_))
                                '()
                                _%L14805%_)))))))
              (let* ((_%__match2030020301%_
                      (lambda (_%e1468914723%_
                               _%hd1468814727%_
                               _%tl1468714730%_
                               _%e1469214733%_
                               _%hd1469114737%_
                               _%tl1469014740%_
                               _%__splice2021420215%_
                               _%target1469314743%_
                               _%tl1469514746%_)
                        (letrec ((_%loop1469614749%_
                                  (lambda (_%hd1469414753%_ _%bind1470014756%_)
                                    (if (gx#stx-pair? _%hd1469414753%_)
                                        (let ((_%e1469714759%_
                                               (gx#syntax-e _%hd1469414753%_)))
                                          (let ((_%lp-tl1469914766%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1469714759%_)))
                                                (_%lp-hd1469814763%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1469714759%_))))
                                            (_%loop1469614749%_
                                             _%lp-tl1469914766%_
                                             (cons _%lp-hd1469814763%_
                                                   _%bind1470014756%_))))
                                        (let ((_%bind1470114769%_
                                               (reverse _%bind1470014756%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl1469014740%_)
                                              (let ((_%__splice2021620217%_
                                                     (gx#syntax-split-splice
                                                      _%tl1469014740%_
                                                      '0)))
                                                (let ((_%tl1470414776%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2021620217%_
                                                          '1)))
                                                      (_%target1470214773%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2021620217%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1470414776%_)
                                                      (letrec ((_%loop1470514779%_
                                                                (lambda (_%hd1470314783%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body1470914786%_)
                          (if (gx#stx-pair? _%hd1470314783%_)
                              (let ((_%e1470614789%_
                                     (gx#syntax-e _%hd1470314783%_)))
                                (let ((_%lp-tl1470814796%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1470614789%_)))
                                      (_%lp-hd1470714793%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1470614789%_))))
                                  (_%loop1470514779%_
                                   _%lp-tl1470814796%_
                                   (cons _%lp-hd1470714793%_
                                         _%body1470914786%_))))
                              (let ((_%body1471014799%_
                                     (reverse _%body1470914786%_)))
                                (let ((_%L14803%_ _%body1471014799%_)
                                      (_%L14805%_ _%bind1470114769%_))
                                  (if (gx#stx-andmap
                                       _%let-bind?14636%_
                                       (foldr (lambda (_%g1482714830%_
                                                       _%g1482814833%_)
                                                (cons _%g1482714830%_
                                                      _%g1482814833%_))
                                              '()
                                              _%L14805%_))
                                      (_%__kont2021220213%_
                                       _%L14803%_
                                       _%L14805%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g1464414716%_)))))))))
                (_%loop1470514779%_ _%target1470214773%_ '()))
              (let () (declare (not safe)) (_%g1464414716%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1464414716%_))))))))
                          (_%loop1469614749%_ _%target1469314743%_ '()))))
                     (_%__match2028020281%_
                      (lambda (_%e1466615166%_
                               _%hd1466515170%_
                               _%tl1466415173%_
                               _%e1466915176%_
                               _%hd1466815180%_
                               _%tl1466715183%_
                               _%e1467215186%_
                               _%hd1467115190%_
                               _%tl1467015193%_
                               _%e1467515196%_
                               _%hd1467415200%_
                               _%tl1467315203%_
                               _%__splice2021020211%_
                               _%target1467615206%_
                               _%tl1467815209%_)
                        (letrec ((_%loop1467915212%_
                                  (lambda (_%hd1467715216%_ _%body1468315219%_)
                                    (if (gx#stx-pair? _%hd1467715216%_)
                                        (let ((_%e1468015222%_
                                               (gx#syntax-e _%hd1467715216%_)))
                                          (let ((_%lp-tl1468215229%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1468015222%_)))
                                                (_%lp-hd1468115226%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1468015222%_))))
                                            (_%loop1467915212%_
                                             _%lp-tl1468215229%_
                                             (cons _%lp-hd1468115226%_
                                                   _%body1468315219%_))))
                                        (let ((_%body1468415232%_
                                               (reverse _%body1468315219%_)))
                                          (_%__kont2020820209%_
                                           _%body1468415232%_
                                           _%hd1467415200%_))))))
                          (_%loop1467915212%_ _%target1467615206%_ '()))))
                     (_%__match2024420245%_
                      (lambda (_%e1465215274%_
                               _%hd1465115278%_
                               _%tl1465015281%_
                               _%e1465515284%_
                               _%hd1465415288%_
                               _%tl1465315291%_
                               _%e1465815294%_
                               _%hd1465715298%_
                               _%tl1465615301%_
                               _%e1466115304%_
                               _%hd1466015308%_
                               _%tl1465915311%_)
                        (let ((_%L15314%_ _%tl1465315291%_)
                              (_%L15316%_ _%hd1466015308%_)
                              (_%L15317%_ _%hd1465715298%_)
                              (_%L15318%_ _%hd1465115278%_))
                          (if (_%let-head?14639%_ _%L15317%_)
                              (_%__kont2020620207%_
                               _%L15314%_
                               _%L15316%_
                               _%L15317%_
                               _%L15318%_)
                              (if (gx#stx-pair? _%hd1465715298%_)
                                  (let ((_%e1467515196%_
                                         (gx#syntax-e _%hd1465715298%_)))
                                    (let ((_%tl1467315203%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1467515196%_)))
                                          (_%hd1467415200%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1467515196%_))))
                                      (if (gx#stx-pair/null? _%hd1465415288%_)
                                          (let ((_%__splice2021420215%_
                                                 (gx#syntax-split-splice
                                                  _%hd1465415288%_
                                                  '0)))
                                            (let ((_%tl1469514746%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2021420215%_
                                                      '1)))
                                                  (_%target1469314743%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2021420215%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1469514746%_)
                                                  (_%__match2030020301%_
                                                   _%e1465215274%_
                                                   _%hd1465115278%_
                                                   _%tl1465015281%_
                                                   _%e1465515284%_
                                                   _%hd1465415288%_
                                                   _%tl1465315291%_
                                                   _%__splice2021420215%_
                                                   _%target1469314743%_
                                                   _%tl1469514746%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1464414716%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1464414716%_)))))
                                  (if (gx#stx-pair/null? _%hd1465415288%_)
                                      (let ((_%__splice2021420215%_
                                             (gx#syntax-split-splice
                                              _%hd1465415288%_
                                              '0)))
                                        (let ((_%tl1469514746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2021420215%_
                                                  '1)))
                                              (_%target1469314743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2021420215%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1469514746%_)
                                              (_%__match2030020301%_
                                               _%e1465215274%_
                                               _%hd1465115278%_
                                               _%tl1465015281%_
                                               _%e1465515284%_
                                               _%hd1465415288%_
                                               _%tl1465315291%_
                                               _%__splice2021420215%_
                                               _%target1469314743%_
                                               _%tl1469514746%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1464414716%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1464414716%_)))))))))
                (if (gx#stx-pair? _%__stx2020320204%_)
                    (let ((_%e1465215274%_ (gx#syntax-e _%__stx2020320204%_)))
                      (let ((_%tl1465015281%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1465215274%_)))
                            (_%hd1465115278%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1465215274%_))))
                        (if (gx#stx-pair? _%tl1465015281%_)
                            (let ((_%e1465515284%_
                                   (gx#syntax-e _%tl1465015281%_)))
                              (let ((_%tl1465315291%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1465515284%_)))
                                    (_%hd1465415288%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1465515284%_))))
                                (if (gx#stx-pair? _%hd1465415288%_)
                                    (let ((_%e1465815294%_
                                           (gx#syntax-e _%hd1465415288%_)))
                                      (let ((_%tl1465615301%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1465815294%_)))
                                            (_%hd1465715298%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1465815294%_))))
                                        (if (gx#stx-pair? _%tl1465615301%_)
                                            (let ((_%e1466115304%_
                                                   (gx#syntax-e
                                                    _%tl1465615301%_)))
                                              (let ((_%tl1465915311%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1466115304%_)))
                                                    (_%hd1466015308%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1466115304%_))))
                                                (if (gx#stx-null?
                                                     _%tl1465915311%_)
                                                    (_%__match2024420245%_
                                                     _%e1465215274%_
                                                     _%hd1465115278%_
                                                     _%tl1465015281%_
                                                     _%e1465515284%_
                                                     _%hd1465415288%_
                                                     _%tl1465315291%_
                                                     _%e1465815294%_
                                                     _%hd1465715298%_
                                                     _%tl1465615301%_
                                                     _%e1466115304%_
                                                     _%hd1466015308%_
                                                     _%tl1465915311%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1465715298%_)
                                                        (let ((_%e1467515196%_
                                                               (gx#syntax-e
                                                                _%hd1465715298%_)))
                                                          (let ((_%tl1467315203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e1467515196%_)))
                        (_%hd1467415200%_
                         (let ()
                           (declare (not safe))
                           (##car _%e1467515196%_))))
                    (if (gx#stx-pair/null? _%hd1465415288%_)
                        (let ((_%__splice2021420215%_
                               (gx#syntax-split-splice _%hd1465415288%_ '0)))
                          (let ((_%tl1469514746%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2021420215%_ '1)))
                                (_%target1469314743%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2021420215%_ '0))))
                            (if (gx#stx-null? _%tl1469514746%_)
                                (_%__match2030020301%_
                                 _%e1465215274%_
                                 _%hd1465115278%_
                                 _%tl1465015281%_
                                 _%e1465515284%_
                                 _%hd1465415288%_
                                 _%tl1465315291%_
                                 _%__splice2021420215%_
                                 _%target1469314743%_
                                 _%tl1469514746%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1464414716%_)))))
                        (let () (declare (not safe)) (_%g1464414716%_)))))
                (if (gx#stx-pair/null? _%hd1465415288%_)
                    (let ((_%__splice2021420215%_
                           (gx#syntax-split-splice _%hd1465415288%_ '0)))
                      (let ((_%tl1469514746%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2021420215%_ '1)))
                            (_%target1469314743%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2021420215%_ '0))))
                        (if (gx#stx-null? _%tl1469514746%_)
                            (_%__match2030020301%_
                             _%e1465215274%_
                             _%hd1465115278%_
                             _%tl1465015281%_
                             _%e1465515284%_
                             _%hd1465415288%_
                             _%tl1465315291%_
                             _%__splice2021420215%_
                             _%target1469314743%_
                             _%tl1469514746%_)
                            (let () (declare (not safe)) (_%g1464414716%_)))))
                    (let () (declare (not safe)) (_%g1464414716%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%hd1465715298%_)
                                                (let ((_%e1467515196%_
                                                       (gx#syntax-e
                                                        _%hd1465715298%_)))
                                                  (let ((_%tl1467315203%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1467515196%_)))
                                                        (_%hd1467415200%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1467515196%_))))
                                                    (if (gx#stx-null?
                                                         _%tl1467315203%_)
                                                        (if (gx#stx-null?
                                                             _%tl1465615301%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl1465315291%_)
                        (let ((_%__splice2021020211%_
                               (gx#syntax-split-splice _%tl1465315291%_ '0)))
                          (let ((_%tl1467815209%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2021020211%_ '1)))
                                (_%target1467615206%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2021020211%_ '0))))
                            (if (gx#stx-null? _%tl1467815209%_)
                                (_%__match2028020281%_
                                 _%e1465215274%_
                                 _%hd1465115278%_
                                 _%tl1465015281%_
                                 _%e1465515284%_
                                 _%hd1465415288%_
                                 _%tl1465315291%_
                                 _%e1465815294%_
                                 _%hd1465715298%_
                                 _%tl1465615301%_
                                 _%e1467515196%_
                                 _%hd1467415200%_
                                 _%tl1467315203%_
                                 _%__splice2021020211%_
                                 _%target1467615206%_
                                 _%tl1467815209%_)
                                (if (gx#stx-pair/null? _%hd1465415288%_)
                                    (let ((_%__splice2021420215%_
                                           (gx#syntax-split-splice
                                            _%hd1465415288%_
                                            '0)))
                                      (let ((_%tl1469514746%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2021420215%_
                                                '1)))
                                            (_%target1469314743%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2021420215%_
                                                '0))))
                                        (if (gx#stx-null? _%tl1469514746%_)
                                            (_%__match2030020301%_
                                             _%e1465215274%_
                                             _%hd1465115278%_
                                             _%tl1465015281%_
                                             _%e1465515284%_
                                             _%hd1465415288%_
                                             _%tl1465315291%_
                                             _%__splice2021420215%_
                                             _%target1469314743%_
                                             _%tl1469514746%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1464414716%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g1464414716%_))))))
                        (if (gx#stx-pair/null? _%hd1465415288%_)
                            (let ((_%__splice2021420215%_
                                   (gx#syntax-split-splice
                                    _%hd1465415288%_
                                    '0)))
                              (let ((_%tl1469514746%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2021420215%_
                                        '1)))
                                    (_%target1469314743%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2021420215%_
                                        '0))))
                                (if (gx#stx-null? _%tl1469514746%_)
                                    (_%__match2030020301%_
                                     _%e1465215274%_
                                     _%hd1465115278%_
                                     _%tl1465015281%_
                                     _%e1465515284%_
                                     _%hd1465415288%_
                                     _%tl1465315291%_
                                     _%__splice2021420215%_
                                     _%target1469314743%_
                                     _%tl1469514746%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g1464414716%_)))))
                            (let () (declare (not safe)) (_%g1464414716%_))))
                    (if (gx#stx-pair/null? _%hd1465415288%_)
                        (let ((_%__splice2021420215%_
                               (gx#syntax-split-splice _%hd1465415288%_ '0)))
                          (let ((_%tl1469514746%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2021420215%_ '1)))
                                (_%target1469314743%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2021420215%_ '0))))
                            (if (gx#stx-null? _%tl1469514746%_)
                                (_%__match2030020301%_
                                 _%e1465215274%_
                                 _%hd1465115278%_
                                 _%tl1465015281%_
                                 _%e1465515284%_
                                 _%hd1465415288%_
                                 _%tl1465315291%_
                                 _%__splice2021420215%_
                                 _%target1469314743%_
                                 _%tl1469514746%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1464414716%_)))))
                        (let () (declare (not safe)) (_%g1464414716%_))))
                (if (gx#stx-pair/null? _%hd1465415288%_)
                    (let ((_%__splice2021420215%_
                           (gx#syntax-split-splice _%hd1465415288%_ '0)))
                      (let ((_%tl1469514746%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2021420215%_ '1)))
                            (_%target1469314743%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2021420215%_ '0))))
                        (if (gx#stx-null? _%tl1469514746%_)
                            (_%__match2030020301%_
                             _%e1465215274%_
                             _%hd1465115278%_
                             _%tl1465015281%_
                             _%e1465515284%_
                             _%hd1465415288%_
                             _%tl1465315291%_
                             _%__splice2021420215%_
                             _%target1469314743%_
                             _%tl1469514746%_)
                            (let () (declare (not safe)) (_%g1464414716%_)))))
                    (let () (declare (not safe)) (_%g1464414716%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%hd1465415288%_)
                                                    (let ((_%__splice2021420215%_
                                                           (gx#syntax-split-splice
                                                            _%hd1465415288%_
                                                            '0)))
                                                      (let ((_%tl1469514746%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice2021420215%_ '1)))
                    (_%target1469314743%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice2021420215%_ '0))))
                (if (gx#stx-null? _%tl1469514746%_)
                    (_%__match2030020301%_
                     _%e1465215274%_
                     _%hd1465115278%_
                     _%tl1465015281%_
                     _%e1465515284%_
                     _%hd1465415288%_
                     _%tl1465315291%_
                     _%__splice2021420215%_
                     _%target1469314743%_
                     _%tl1469514746%_)
                    (let () (declare (not safe)) (_%g1464414716%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1464414716%_)))))))
                                    (if (gx#stx-pair/null? _%hd1465415288%_)
                                        (let ((_%__splice2021420215%_
                                               (gx#syntax-split-splice
                                                _%hd1465415288%_
                                                '0)))
                                          (let ((_%tl1469514746%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2021420215%_
                                                    '1)))
                                                (_%target1469314743%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2021420215%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1469514746%_)
                                                (_%__match2030020301%_
                                                 _%e1465215274%_
                                                 _%hd1465115278%_
                                                 _%tl1465015281%_
                                                 _%e1465515284%_
                                                 _%hd1465415288%_
                                                 _%tl1465315291%_
                                                 _%__splice2021420215%_
                                                 _%target1469314743%_
                                                 _%tl1469514746%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1464414716%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g1464414716%_))))))
                            (let () (declare (not safe)) (_%g1464414716%_)))))
                    (let () (declare (not safe)) (_%g1464414716%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet*|
      (lambda (_%$stx15676%_)
        (let* ((_%__stx2030320304%_ _%$stx15676%_)
               (_%g1568215733%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2030320304%_))))
          (let ((_%__kont2030620307%_ (lambda () '#t))
                (_%__kont2030820309%_
                 (lambda (_%L15891%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g1590715910%_ _%g1590815913%_)
                                        (cons _%g1590715910%_ _%g1590815913%_))
                                      '()
                                      _%L15891%_)))))
                (_%__kont2031220313%_
                 (lambda (_%L15800%_ _%L15802%_ _%L15803%_ _%L15804%_)
                   (cons (gx#datum->syntax '#f 'alet)
                         (cons (cons _%L15803%_ '())
                               (cons (cons _%L15804%_
                                           (cons _%L15802%_
                                                 (foldr (lambda (_%g1582515828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1582615831%_)
                  (cons _%g1582515828%_ _%g1582615831%_))
                '()
                _%L15800%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match2038020381%_
                    (lambda (_%e1571215740%_
                             _%hd1571115744%_
                             _%tl1571015747%_
                             _%e1571515750%_
                             _%hd1571415754%_
                             _%tl1571315757%_
                             _%e1571815760%_
                             _%hd1571715764%_
                             _%tl1571615767%_
                             _%__splice2031420315%_
                             _%target1571915770%_
                             _%tl1572115773%_)
                      (letrec ((_%loop1572215776%_
                                (lambda (_%hd1572015780%_ _%body1572615783%_)
                                  (if (gx#stx-pair? _%hd1572015780%_)
                                      (let ((_%e1572315786%_
                                             (gx#syntax-e _%hd1572015780%_)))
                                        (let ((_%lp-tl1572515793%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1572315786%_)))
                                              (_%lp-hd1572415790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1572315786%_))))
                                          (_%loop1572215776%_
                                           _%lp-tl1572515793%_
                                           (cons _%lp-hd1572415790%_
                                                 _%body1572615783%_))))
                                      (let ((_%body1572715796%_
                                             (reverse _%body1572615783%_)))
                                        (_%__kont2031220313%_
                                         _%body1572715796%_
                                         _%tl1571615767%_
                                         _%hd1571715764%_
                                         _%hd1571115744%_))))))
                        (_%loop1572215776%_ _%target1571915770%_ '()))))
                   (_%__match2035420355%_
                    (lambda (_%e1569315841%_
                             _%hd1569215845%_
                             _%tl1569115848%_
                             _%e1569615851%_
                             _%hd1569515855%_
                             _%tl1569415858%_
                             _%__splice2031020311%_
                             _%target1569715861%_
                             _%tl1569915864%_)
                      (letrec ((_%loop1570015867%_
                                (lambda (_%hd1569815871%_ _%body1570415874%_)
                                  (if (gx#stx-pair? _%hd1569815871%_)
                                      (let ((_%e1570115877%_
                                             (gx#syntax-e _%hd1569815871%_)))
                                        (let ((_%lp-tl1570315884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1570115877%_)))
                                              (_%lp-hd1570215881%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1570115877%_))))
                                          (_%loop1570015867%_
                                           _%lp-tl1570315884%_
                                           (cons _%lp-hd1570215881%_
                                                 _%body1570415874%_))))
                                      (let ((_%body1570515887%_
                                             (reverse _%body1570415874%_)))
                                        (_%__kont2030820309%_
                                         _%body1570515887%_))))))
                        (_%loop1570015867%_ _%target1569715861%_ '())))))
              (if (gx#stx-pair? _%__stx2030320304%_)
                  (let ((_%e1568615923%_ (gx#syntax-e _%__stx2030320304%_)))
                    (let ((_%tl1568415930%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1568615923%_)))
                          (_%hd1568515927%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1568615923%_))))
                      (if (gx#stx-pair? _%tl1568415930%_)
                          (let ((_%e1568915933%_
                                 (gx#syntax-e _%tl1568415930%_)))
                            (let ((_%tl1568715940%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1568915933%_)))
                                  (_%hd1568815937%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1568915933%_))))
                              (if (gx#stx-null? _%hd1568815937%_)
                                  (if (gx#stx-null? _%tl1568715940%_)
                                      (_%__kont2030620307%_)
                                      (if (gx#stx-pair/null? _%tl1568715940%_)
                                          (let ((_%__splice2031020311%_
                                                 (gx#syntax-split-splice
                                                  _%tl1568715940%_
                                                  '0)))
                                            (let ((_%tl1569915864%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2031020311%_
                                                      '1)))
                                                  (_%target1569715861%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2031020311%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1569915864%_)
                                                  (_%__match2035420355%_
                                                   _%e1568615923%_
                                                   _%hd1568515927%_
                                                   _%tl1568415930%_
                                                   _%e1568915933%_
                                                   _%hd1568815937%_
                                                   _%tl1568715940%_
                                                   _%__splice2031020311%_
                                                   _%target1569715861%_
                                                   _%tl1569915864%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1568215733%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1568215733%_))))
                                  (if (gx#stx-pair? _%hd1568815937%_)
                                      (let ((_%e1571815760%_
                                             (gx#syntax-e _%hd1568815937%_)))
                                        (let ((_%tl1571615767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1571815760%_)))
                                              (_%hd1571715764%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1571815760%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1568715940%_)
                                              (let ((_%__splice2031420315%_
                                                     (gx#syntax-split-splice
                                                      _%tl1568715940%_
                                                      '0)))
                                                (let ((_%tl1572115773%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2031420315%_
                                                          '1)))
                                                      (_%target1571915770%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2031420315%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1572115773%_)
                                                      (_%__match2038020381%_
                                                       _%e1568615923%_
                                                       _%hd1568515927%_
                                                       _%tl1568415930%_
                                                       _%e1568915933%_
                                                       _%hd1568815937%_
                                                       _%tl1568715940%_
                                                       _%e1571815760%_
                                                       _%hd1571715764%_
                                                       _%tl1571615767%_
                                                       _%__splice2031420315%_
                                                       _%target1571915770%_
                                                       _%tl1572115773%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1568215733%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1568215733%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1568215733%_))))))
                          (let () (declare (not safe)) (_%g1568215733%_)))))
                  (let () (declare (not safe)) (_%g1568215733%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#@list|
      (lambda (_%$stx15953%_)
        (let* ((_%__stx2038320384%_ _%$stx15953%_)
               (_%g1596416042%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2038320384%_))))
          (let ((_%__kont2038620387%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'quote) (cons '() '()))))
                (_%__kont2038820389%_
                 (lambda (_%L16373%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _%L16373%_ '()))))
                (_%__kont2039020391%_
                 (lambda (_%L16321%_)
                   (cons (gx#datum->syntax '#f 'quasiquote)
                         (cons _%L16321%_ '()))))
                (_%__kont2039220393%_ (lambda (_%L16268%_) _%L16268%_))
                (_%__kont2039420395%_
                 (lambda (_%L16210%_ _%L16212%_) _%L16212%_))
                (_%__kont2039620397%_
                 (lambda (_%L16152%_ _%L16154%_ _%L16155%_ _%L16156%_)
                   (cons (gx#datum->syntax '#f 'foldr)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (cons _%L16156%_ _%L16152%_)
                                     (cons _%L16155%_ '()))))))
                (_%__kont2039820399%_
                 (lambda (_%L16098%_ _%L16100%_ _%L16101%_)
                   (cons (gx#datum->syntax '#f 'cons)
                         (cons _%L16100%_
                               (cons (cons _%L16101%_ _%L16098%_) '())))))
                (_%__kont2040020401%_ (lambda (_%L16059%_) _%L16059%_)))
            (let* ((_%__match2052220523%_
                    (lambda (_%e1601716122%_
                             _%hd1601616126%_
                             _%tl1601516129%_
                             _%e1602016132%_
                             _%hd1601916136%_
                             _%tl1601816139%_
                             _%e1602316142%_
                             _%hd1602216146%_
                             _%tl1602116149%_)
                      (let ((_%L16152%_ _%tl1602116149%_)
                            (_%L16154%_ _%hd1602216146%_)
                            (_%L16155%_ _%hd1601916136%_)
                            (_%L16156%_ _%hd1601616126%_))
                        (if (gx#ellipsis? _%L16154%_)
                            (_%__kont2039620397%_
                             _%L16152%_
                             _%L16154%_
                             _%L16155%_
                             _%L16156%_)
                            (_%__kont2039820399%_
                             _%tl1601816139%_
                             _%hd1601916136%_
                             _%hd1601616126%_)))))
                   (_%__match2050420505%_
                    (lambda (_%e1600416180%_
                             _%hd1600316184%_
                             _%tl1600216187%_
                             _%e1600716190%_
                             _%hd1600616194%_
                             _%tl1600516197%_
                             _%e1601016200%_
                             _%hd1600916204%_
                             _%tl1600816207%_)
                      (let ((_%L16210%_ _%hd1600916204%_)
                            (_%L16212%_ _%hd1600616194%_))
                        (if (gx#ellipsis? _%L16210%_)
                            (_%__kont2039420395%_ _%L16210%_ _%L16212%_)
                            (_%__match2052220523%_
                             _%e1600416180%_
                             _%hd1600316184%_
                             _%tl1600216187%_
                             _%e1600716190%_
                             _%hd1600616194%_
                             _%tl1600516197%_
                             _%e1601016200%_
                             _%hd1600916204%_
                             _%tl1600816207%_))))))
              (if (gx#stx-pair? _%__stx2038320384%_)
                  (let ((_%e1596816395%_ (gx#syntax-e _%__stx2038320384%_)))
                    (let ((_%tl1596616402%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1596816395%_)))
                          (_%hd1596716399%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1596816395%_))))
                      (if (gx#stx-null? _%tl1596616402%_)
                          (_%__kont2038620387%_)
                          (if (gx#stx-pair? _%tl1596616402%_)
                              (let ((_%e1597516353%_
                                     (gx#syntax-e _%tl1596616402%_)))
                                (let ((_%tl1597316360%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1597516353%_)))
                                      (_%hd1597416357%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1597516353%_))))
                                  (if (gx#identifier? _%hd1597416357%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21050_|
                                           _%hd1597416357%_)
                                          (if (gx#stx-pair? _%tl1597316360%_)
                                              (let ((_%e1597816363%_
                                                     (gx#syntax-e
                                                      _%tl1597316360%_)))
                                                (let ((_%tl1597616370%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1597816363%_)))
                                                      (_%hd1597716367%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1597816363%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1597616370%_)
                                                      (_%__kont2038820389%_
                                                       _%hd1597716367%_)
                                                      (_%__match2052220523%_
                                                       _%e1596816395%_
                                                       _%hd1596716399%_
                                                       _%tl1596616402%_
                                                       _%e1597516353%_
                                                       _%hd1597416357%_
                                                       _%tl1597316360%_
                                                       _%e1597816363%_
                                                       _%hd1597716367%_
                                                       _%tl1597616370%_))))
                                              (_%__kont2039820399%_
                                               _%tl1597316360%_
                                               _%hd1597416357%_
                                               _%hd1596716399%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21051_|
                                               _%hd1597416357%_)
                                              (if (gx#stx-pair?
                                                   _%tl1597316360%_)
                                                  (let ((_%e1598816311%_
                                                         (gx#syntax-e
                                                          _%tl1597316360%_)))
                                                    (let ((_%tl1598616318%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1598816311%_)))
                                                          (_%hd1598716315%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1598816311%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1598616318%_)
                                                          (_%__kont2039020391%_
                                                           _%hd1598716315%_)
                                                          (_%__match2052220523%_
                                                           _%e1596816395%_
                                                           _%hd1596716399%_
                                                           _%tl1596616402%_
                                                           _%e1597516353%_
                                                           _%hd1597416357%_
                                                           _%tl1597316360%_
                                                           _%e1598816311%_
                                                           _%hd1598716315%_
                                                           _%tl1598616318%_))))
                                                  (_%__kont2039820399%_
                                                   _%tl1597316360%_
                                                   _%hd1597416357%_
                                                   _%hd1596716399%_))
                                              (if (gx#stx-pair?
                                                   _%tl1597316360%_)
                                                  (let ((_%e1601016200%_
                                                         (gx#syntax-e
                                                          _%tl1597316360%_)))
                                                    (let ((_%tl1600816207%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1601016200%_)))
                                                          (_%hd1600916204%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1601016200%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1600816207%_)
                                                          (_%__match2050420505%_
                                                           _%e1596816395%_
                                                           _%hd1596716399%_
                                                           _%tl1596616402%_
                                                           _%e1597516353%_
                                                           _%hd1597416357%_
                                                           _%tl1597316360%_
                                                           _%e1601016200%_
                                                           _%hd1600916204%_
                                                           _%tl1600816207%_)
                                                          (_%__match2052220523%_
                                                           _%e1596816395%_
                                                           _%hd1596716399%_
                                                           _%tl1596616402%_
                                                           _%e1597516353%_
                                                           _%hd1597416357%_
                                                           _%tl1597316360%_
                                                           _%e1601016200%_
                                                           _%hd1600916204%_
                                                           _%tl1600816207%_))))
                                                  (_%__kont2039820399%_
                                                   _%tl1597316360%_
                                                   _%hd1597416357%_
                                                   _%hd1596716399%_))))
                                      (if (gx#stx-datum? _%hd1597416357%_)
                                          (let ((_%e1599616254%_
                                                 (gx#stx-e _%hd1597416357%_)))
                                            (if (equal? _%e1599616254%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl1597316360%_)
                                                    (let ((_%e1599916258%_
                                                           (gx#syntax-e
                                                            _%tl1597316360%_)))
                                                      (let ((_%tl1599716265%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1599916258%_)))
                    (_%hd1599816262%_
                     (let () (declare (not safe)) (##car _%e1599916258%_))))
                (if (gx#stx-null? _%tl1599716265%_)
                    (_%__kont2039220393%_ _%hd1599816262%_)
                    (_%__match2052220523%_
                     _%e1596816395%_
                     _%hd1596716399%_
                     _%tl1596616402%_
                     _%e1597516353%_
                     _%hd1597416357%_
                     _%tl1597316360%_
                     _%e1599916258%_
                     _%hd1599816262%_
                     _%tl1599716265%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2039820399%_
                                                     _%tl1597316360%_
                                                     _%hd1597416357%_
                                                     _%hd1596716399%_))
                                                (if (gx#stx-pair?
                                                     _%tl1597316360%_)
                                                    (let ((_%e1601016200%_
                                                           (gx#syntax-e
                                                            _%tl1597316360%_)))
                                                      (let ((_%tl1600816207%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1601016200%_)))
                    (_%hd1600916204%_
                     (let () (declare (not safe)) (##car _%e1601016200%_))))
                (if (gx#stx-null? _%tl1600816207%_)
                    (_%__match2050420505%_
                     _%e1596816395%_
                     _%hd1596716399%_
                     _%tl1596616402%_
                     _%e1597516353%_
                     _%hd1597416357%_
                     _%tl1597316360%_
                     _%e1601016200%_
                     _%hd1600916204%_
                     _%tl1600816207%_)
                    (_%__match2052220523%_
                     _%e1596816395%_
                     _%hd1596716399%_
                     _%tl1596616402%_
                     _%e1597516353%_
                     _%hd1597416357%_
                     _%tl1597316360%_
                     _%e1601016200%_
                     _%hd1600916204%_
                     _%tl1600816207%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2039820399%_
                                                     _%tl1597316360%_
                                                     _%hd1597416357%_
                                                     _%hd1596716399%_))))
                                          (if (gx#stx-pair? _%tl1597316360%_)
                                              (let ((_%e1601016200%_
                                                     (gx#syntax-e
                                                      _%tl1597316360%_)))
                                                (let ((_%tl1600816207%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1601016200%_)))
                                                      (_%hd1600916204%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1601016200%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1600816207%_)
                                                      (_%__match2050420505%_
                                                       _%e1596816395%_
                                                       _%hd1596716399%_
                                                       _%tl1596616402%_
                                                       _%e1597516353%_
                                                       _%hd1597416357%_
                                                       _%tl1597316360%_
                                                       _%e1601016200%_
                                                       _%hd1600916204%_
                                                       _%tl1600816207%_)
                                                      (_%__match2052220523%_
                                                       _%e1596816395%_
                                                       _%hd1596716399%_
                                                       _%tl1596616402%_
                                                       _%e1597516353%_
                                                       _%hd1597416357%_
                                                       _%tl1597316360%_
                                                       _%e1601016200%_
                                                       _%hd1600916204%_
                                                       _%tl1600816207%_))))
                                              (_%__kont2039820399%_
                                               _%tl1597316360%_
                                               _%hd1597416357%_
                                               _%hd1596716399%_))))))
                              (_%__kont2040020401%_ _%tl1596616402%_)))))
                  (let () (declare (not safe)) (_%g1596416042%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#quasiquote|
      (lambda (_%stx16413%_)
        (letrec ((_%simple-quote?16416%_
                  (lambda (_%e17108%_)
                    (let* ((_%__stx2054320544%_ _%e17108%_)
                           (_%g1711617153%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2054320544%_))))
                      (let ((_%__kont2054620547%_ (lambda () '#f))
                            (_%__kont2054820549%_ (lambda () '#f))
                            (_%__kont2055020551%_
                             (lambda (_%L17267%_ _%L17269%_)
                               (if (_%simple-quote?16416%_ _%L17269%_)
                                   (_%simple-quote?16416%_ _%L17267%_)
                                   '#f)))
                            (_%__kont2055220553%_
                             (lambda (_%L17228%_)
                               (_%simple-quote?16416%_
                                (foldr (lambda (_%g1724117244%_
                                                _%g1724217247%_)
                                         (cons _%g1724117244%_
                                               _%g1724217247%_))
                                       '()
                                       _%L17228%_))))
                            (_%__kont2055620557%_
                             (lambda (_%L17175%_)
                               (_%simple-quote?16416%_ _%L17175%_)))
                            (_%__kont2055820559%_ (lambda () '#t)))
                        (let* ((_%g1711417187%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2054320544%_)
                                      (let ((_%e1714717171%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2054320544%_))))
                                        (_%__kont2055620557%_ _%e1714717171%_))
                                      (_%__kont2055820559%_))))
                               (_%__match2061420615%_
                                (lambda (_%e1713617194%_
                                         _%__splice2055420555%_
                                         _%target1713717198%_
                                         _%tl1713917201%_)
                                  (letrec ((_%loop1714017204%_
                                            (lambda (_%hd1713817208%_
                                                     _%e1714417211%_)
                                              (if (gx#stx-pair?
                                                   _%hd1713817208%_)
                                                  (let ((_%e1714117214%_
                                                         (gx#syntax-e
                                                          _%hd1713817208%_)))
                                                    (let ((_%lp-tl1714317221%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1714117214%_)))
                                                          (_%lp-hd1714217218%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1714117214%_))))
                                                      (_%loop1714017204%_
                                                       _%lp-tl1714317221%_
                                                       (cons _%lp-hd1714217218%_
                                                             _%e1714417211%_))))
                                                  (let ((_%e1714517224%_
                                                         (reverse _%e1714417211%_)))
                                                    (_%__kont2055220553%_
                                                     _%e1714517224%_))))))
                                    (_%loop1714017204%_
                                     _%target1713717198%_
                                     '()))))
                               (_%g1711317250%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2054320544%_)
                                      (let ((_%e1713617194%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2054320544%_))))
                                        (if (gx#stx-pair/null? _%e1713617194%_)
                                            (let ((_%__splice2055420555%_
                                                   (gx#syntax-split-splice
                                                    _%e1713617194%_
                                                    '0)))
                                              (let ((_%tl1713917201%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2055420555%_
                                                        '1)))
                                                    (_%target1713717198%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2055420555%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1713917201%_)
                                                    (_%__match2061420615%_
                                                     _%e1713617194%_
                                                     _%__splice2055420555%_
                                                     _%target1713717198%_
                                                     _%tl1713917201%_)
                                                    (_%__kont2055820559%_))))
                                            (_%__kont2055820559%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1711417187%_))))))
                          (if (gx#stx-pair? _%__stx2054320544%_)
                              (let ((_%e1712017318%_
                                     (gx#syntax-e _%__stx2054320544%_)))
                                (let ((_%tl1711817325%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1712017318%_)))
                                      (_%hd1711917322%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1712017318%_))))
                                  (if (gx#identifier? _%hd1711917322%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21052_|
                                           _%hd1711917322%_)
                                          (if (gx#stx-pair? _%tl1711817325%_)
                                              (let ((_%e1712317328%_
                                                     (gx#syntax-e
                                                      _%tl1711817325%_)))
                                                (let ((_%tl1712117335%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1712317328%_)))
                                                      (_%hd1712217332%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1712317328%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1712117335%_)
                                                      (_%__kont2054620547%_)
                                                      (_%__kont2055020551%_
                                                       _%tl1711817325%_
                                                       _%hd1711917322%_))))
                                              (_%__kont2055020551%_
                                               _%tl1711817325%_
                                               _%hd1711917322%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21053_|
                                               _%hd1711917322%_)
                                              (if (gx#stx-pair?
                                                   _%tl1711817325%_)
                                                  (let ((_%e1712917297%_
                                                         (gx#syntax-e
                                                          _%tl1711817325%_)))
                                                    (let ((_%tl1712717304%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1712917297%_)))
                                                          (_%hd1712817301%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1712917297%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1712717304%_)
                                                          (_%__kont2054820549%_)
                                                          (_%__kont2055020551%_
                                                           _%tl1711817325%_
                                                           _%hd1711917322%_))))
                                                  (_%__kont2055020551%_
                                                   _%tl1711817325%_
                                                   _%hd1711917322%_))
                                              (_%__kont2055020551%_
                                               _%tl1711817325%_
                                               _%hd1711917322%_)))
                                      (_%__kont2055020551%_
                                       _%tl1711817325%_
                                       _%hd1711917322%_))))
                              (let ()
                                (declare (not safe))
                                (_%g1711317250%_))))))))
                 (_%generate16418%_
                  (lambda (_%e16480%_ _%d16482%_)
                    (let* ((_%__stx2062120622%_ _%e16480%_)
                           (_%g1649116549%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2062120622%_))))
                      (let ((_%__kont2062420625%_
                             (lambda (_%L17060%_)
                               (let* ((_%g1707317081%_
                                       (lambda (_%g1707417077%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1707417077%_)))
                                      (_%g1707217100%_
                                       (lambda (_%g1707417085%_)
                                         ((lambda (_%L17088%_)
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'list)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons (gx#datum->syntax '#f 'quasiquote) '()))
                  (cons _%L17088%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1707417085%_))))
                                 (_%g1707217100%_
                                  (_%generate16418%_
                                   _%L17060%_
                                   (fx1+ _%d16482%_))))))
                            (_%__kont2062620627%_
                             (lambda (_%L16989%_)
                               (if (fxzero? _%d16482%_)
                                   _%L16989%_
                                   (let* ((_%g1700217010%_
                                           (lambda (_%g1700317006%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1700317006%_)))
                                          (_%g1700117029%_
                                           (lambda (_%g1700317014%_)
                                             ((lambda (_%L17017%_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'list)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (gx#datum->syntax '#f 'unquote) '()))
                      (cons _%L17017%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1700317014%_))))
                                     (_%g1700117029%_
                                      (_%generate16418%_
                                       _%L16989%_
                                       (fx1- _%d16482%_)))))))
                            (_%__kont2062820629%_
                             (lambda (_%L16918%_)
                               (if (fxzero? _%d16482%_)
                                   (cons (gx#datum->syntax '#f 'foldr)
                                         (cons (gx#datum->syntax '#f 'cons)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons '() '()))
                                                     (cons _%L16918%_ '()))))
                                   (let* ((_%g1693116939%_
                                           (lambda (_%g1693216935%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1693216935%_)))
                                          (_%g1693016958%_
                                           (lambda (_%g1693216943%_)
                                             ((lambda (_%L16946%_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'list)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (gx#datum->syntax '#f 'unquote-splicing)
                                  '()))
                      (cons _%L16946%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1693216943%_))))
                                     (_%g1693016958%_
                                      (_%generate16418%_
                                       _%L16918%_
                                       (fx1- _%d16482%_)))))))
                            (_%__kont2063020631%_
                             (lambda (_%L16843%_ _%L16845%_)
                               (let* ((_%g1686016868%_
                                       (lambda (_%g1686116864%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1686116864%_)))
                                      (_%g1685916887%_
                                       (lambda (_%g1686116872%_)
                                         ((lambda (_%L16875%_)
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'foldr)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'cons)
                                                          (cons _%L16875%_
                                                                (cons _%L16845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1686116872%_))))
                                 (_%g1685916887%_
                                  (_%generate16418%_ _%L16843%_ _%d16482%_)))))
                            (_%__kont2063220633%_
                             (lambda (_%L16729%_ _%L16731%_)
                               (let* ((_%g1674216757%_
                                       (lambda (_%g1674316753%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1674316753%_)))
                                      (_%g1674116802%_
                                       (lambda (_%g1674316761%_)
                                         (if (gx#stx-pair? _%g1674316761%_)
                                             (let ((_%e1674816764%_
                                                    (gx#syntax-e
                                                     _%g1674316761%_)))
                                               (let ((_%hd1674716768%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1674816764%_)))
                                                     (_%tl1674616771%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1674816764%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl1674616771%_)
                                                     (let ((_%e1675116774%_
                                                            (gx#syntax-e
                                                             _%tl1674616771%_)))
                                                       (let ((_%hd1675016778%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e1675116774%_)))
                     (_%tl1674916781%_
                      (let () (declare (not safe)) (##cdr _%e1675116774%_))))
                 (if (gx#stx-null? _%tl1674916781%_)
                     ((lambda (_%L16784%_ _%L16786%_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'cons)
                                (cons _%L16786%_ (cons _%L16784%_ '())))))
                      _%hd1675016778%_
                      _%hd1674716768%_)
                     (_%g1674216757%_ _%g1674316761%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1674216757%_
                                                      _%g1674316761%_))))
                                             (_%g1674216757%_
                                              _%g1674316761%_)))))
                                 (_%g1674116802%_
                                  (list (_%generate16418%_
                                         _%L16731%_
                                         _%d16482%_)
                                        (_%generate16418%_
                                         _%L16729%_
                                         _%d16482%_))))))
                            (_%__kont2063420635%_
                             (lambda (_%L16659%_)
                               (let* ((_%g1667316681%_
                                       (lambda (_%g1667416677%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1667416677%_)))
                                      (_%g1667216700%_
                                       (lambda (_%g1667416685%_)
                                         ((lambda (_%L16688%_)
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'list->vector)
                                                    (cons _%L16688%_ '()))))
                                          _%g1667416685%_))))
                                 (_%g1667216700%_
                                  (_%generate16418%_
                                   (foldr (lambda (_%g1670316706%_
                                                   _%g1670416709%_)
                                            (cons _%g1670316706%_
                                                  _%g1670416709%_))
                                          '()
                                          _%L16659%_)
                                   _%d16482%_)))))
                            (_%__kont2063820639%_
                             (lambda (_%L16577%_)
                               (let* ((_%g1658716595%_
                                       (lambda (_%g1658816591%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1658816591%_)))
                                      (_%g1658616614%_
                                       (lambda (_%g1658816599%_)
                                         ((lambda (_%L16602%_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'box)
                                                    (cons _%L16602%_ '()))))
                                          _%g1658816599%_))))
                                 (_%g1658616614%_
                                  (_%generate16418%_ _%L16577%_ _%d16482%_)))))
                            (_%__kont2064020641%_
                             (lambda (_%L16556%_)
                               (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L16556%_ '())))))
                        (let* ((_%g1648916618%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2062120622%_)
                                      (let ((_%e1654216573%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2062120622%_))))
                                        (_%__kont2063820639%_ _%e1654216573%_))
                                      (_%__kont2064020641%_
                                       _%__stx2062120622%_))))
                               (_%__match2074020741%_
                                (lambda (_%e1653116625%_
                                         _%__splice2063620637%_
                                         _%target1653216629%_
                                         _%tl1653416632%_)
                                  (letrec ((_%loop1653516635%_
                                            (lambda (_%hd1653316639%_
                                                     _%e1653916642%_)
                                              (if (gx#stx-pair?
                                                   _%hd1653316639%_)
                                                  (let ((_%e1653616645%_
                                                         (gx#syntax-e
                                                          _%hd1653316639%_)))
                                                    (let ((_%lp-tl1653816652%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1653616645%_)))
                                                          (_%lp-hd1653716649%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1653616645%_))))
                                                      (_%loop1653516635%_
                                                       _%lp-tl1653816652%_
                                                       (cons _%lp-hd1653716649%_
                                                             _%e1653916642%_))))
                                                  (let ((_%e1654016655%_
                                                         (reverse _%e1653916642%_)))
                                                    (_%__kont2063420635%_
                                                     _%e1654016655%_))))))
                                    (_%loop1653516635%_
                                     _%target1653216629%_
                                     '()))))
                               (_%g1648816712%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2062120622%_)
                                      (let ((_%e1653116625%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2062120622%_))))
                                        (if (gx#stx-pair/null? _%e1653116625%_)
                                            (let ((_%__splice2063620637%_
                                                   (gx#syntax-split-splice
                                                    _%e1653116625%_
                                                    '0)))
                                              (let ((_%tl1653416632%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2063620637%_
                                                        '1)))
                                                    (_%target1653216629%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2063620637%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1653416632%_)
                                                    (_%__match2074020741%_
                                                     _%e1653116625%_
                                                     _%__splice2063620637%_
                                                     _%target1653216629%_
                                                     _%tl1653416632%_)
                                                    (_%__kont2064020641%_
                                                     _%__stx2062120622%_))))
                                            (_%__kont2064020641%_
                                             _%__stx2062120622%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1648916618%_))))))
                          (if (gx#stx-pair? _%__stx2062120622%_)
                              (let ((_%e1649617040%_
                                     (gx#syntax-e _%__stx2062120622%_)))
                                (let ((_%tl1649417047%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1649617040%_)))
                                      (_%hd1649517044%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1649617040%_))))
                                  (if (gx#identifier? _%hd1649517044%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21054_|
                                           _%hd1649517044%_)
                                          (if (gx#stx-pair? _%tl1649417047%_)
                                              (let ((_%e1649917050%_
                                                     (gx#syntax-e
                                                      _%tl1649417047%_)))
                                                (let ((_%tl1649717057%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1649917050%_)))
                                                      (_%hd1649817054%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1649917050%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1649717057%_)
                                                      (_%__kont2062420625%_
                                                       _%hd1649817054%_)
                                                      (_%__kont2063220633%_
                                                       _%tl1649417047%_
                                                       _%hd1649517044%_))))
                                              (_%__kont2063220633%_
                                               _%tl1649417047%_
                                               _%hd1649517044%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21055_|
                                               _%hd1649517044%_)
                                              (if (gx#stx-pair?
                                                   _%tl1649417047%_)
                                                  (let ((_%e1650616979%_
                                                         (gx#syntax-e
                                                          _%tl1649417047%_)))
                                                    (let ((_%tl1650416986%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1650616979%_)))
                                                          (_%hd1650516983%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1650616979%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1650416986%_)
                                                          (_%__kont2062620627%_
                                                           _%hd1650516983%_)
                                                          (_%__kont2063220633%_
                                                           _%tl1649417047%_
                                                           _%hd1649517044%_))))
                                                  (_%__kont2063220633%_
                                                   _%tl1649417047%_
                                                   _%hd1649517044%_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21056_|
                                                   _%hd1649517044%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1649417047%_)
                                                      (let ((_%e1651316908%_
                                                             (gx#syntax-e
                                                              _%tl1649417047%_)))
                                                        (let ((_%tl1651116915%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1651316908%_)))
                      (_%hd1651216912%_
                       (let () (declare (not safe)) (##car _%e1651316908%_))))
                  (if (gx#stx-null? _%tl1651116915%_)
                      (_%__kont2062820629%_ _%hd1651216912%_)
                      (_%__kont2063220633%_
                       _%tl1649417047%_
                       _%hd1649517044%_))))
              (_%__kont2063220633%_ _%tl1649417047%_ _%hd1649517044%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2063220633%_
                                                   _%tl1649417047%_
                                                   _%hd1649517044%_))))
                                      (if (gx#stx-pair? _%hd1649517044%_)
                                          (let ((_%e1652116823%_
                                                 (gx#syntax-e
                                                  _%hd1649517044%_)))
                                            (let ((_%tl1651916830%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1652116823%_)))
                                                  (_%hd1652016827%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1652116823%_))))
                                              (if (gx#identifier?
                                                   _%hd1652016827%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-2[1]#_g21057_|
                                                       _%hd1652016827%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1651916830%_)
                                                          (let ((_%e1652416833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1651916830%_)))
                    (let ((_%tl1652216840%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1652416833%_)))
                          (_%hd1652316837%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1652416833%_))))
                      (if (gx#stx-null? _%tl1652216840%_)
                          (if (fxzero? _%d16482%_)
                              (let ((_%L16843%_ _%tl1649417047%_)
                                    (_%L16845%_ _%hd1652316837%_))
                                (_%__kont2063020631%_ _%L16843%_ _%L16845%_))
                              (_%__kont2063220633%_
                               _%tl1649417047%_
                               _%hd1649517044%_))
                          (_%__kont2063220633%_
                           _%tl1649417047%_
                           _%hd1649517044%_))))
                  (_%__kont2063220633%_ _%tl1649417047%_ _%hd1649517044%_))
              (_%__kont2063220633%_ _%tl1649417047%_ _%hd1649517044%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2063220633%_
                                                   _%tl1649417047%_
                                                   _%hd1649517044%_))))
                                          (_%__kont2063220633%_
                                           _%tl1649417047%_
                                           _%hd1649517044%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g1648816712%_)))))))))
          (let* ((_%g1642016434%_
                  (lambda (_%g1642116430%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1642116430%_)))
                 (_%g1641916476%_
                  (lambda (_%g1642116438%_)
                    (if (gx#stx-pair? _%g1642116438%_)
                        (let ((_%e1642516441%_ (gx#syntax-e _%g1642116438%_)))
                          (let ((_%hd1642416445%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1642516441%_)))
                                (_%tl1642316448%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1642516441%_))))
                            (if (gx#stx-pair? _%tl1642316448%_)
                                (let ((_%e1642816451%_
                                       (gx#syntax-e _%tl1642316448%_)))
                                  (let ((_%hd1642716455%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1642816451%_)))
                                        (_%tl1642616458%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1642816451%_))))
                                    (if (gx#stx-null? _%tl1642616458%_)
                                        ((lambda (_%L16461%_)
                                           (if (_%simple-quote?16416%_
                                                _%L16461%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L16461%_ '()))
                                               (_%generate16418%_
                                                _%L16461%_
                                                '0)))
                                         _%hd1642716455%_)
                                        (_%g1642016434%_ _%g1642116438%_))))
                                (_%g1642016434%_ _%g1642116438%_))))
                        (_%g1642016434%_ _%g1642116438%_)))))
            (_%g1641916476%_ _%stx16413%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay|
      (lambda (_%$stx17348%_)
        (let* ((_%__stx2074720748%_ _%$stx17348%_)
               (_%g1735317374%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2074720748%_))))
          (let ((_%__kont2075020751%_
                 (lambda (_%L17442%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _%L17442%_ '()))))
                (_%__kont2075220753%_
                 (lambda (_%L17401%_)
                   (cons (gx#datum->syntax '#f 'make-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%L17401%_ '())))
                               '())))))
            (let ((_%__match2076820769%_
                   (lambda (_%e1735817422%_
                            _%hd1735717426%_
                            _%tl1735617429%_
                            _%e1736117432%_
                            _%hd1736017436%_
                            _%tl1735917439%_)
                     (let ((_%L17442%_ _%hd1736017436%_))
                       (if (gx#stx-datum? _%L17442%_)
                           (_%__kont2075020751%_ _%L17442%_)
                           (_%__kont2075220753%_ _%hd1736017436%_))))))
              (if (gx#stx-pair? _%__stx2074720748%_)
                  (let ((_%e1735817422%_ (gx#syntax-e _%__stx2074720748%_)))
                    (let ((_%tl1735617429%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1735817422%_)))
                          (_%hd1735717426%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1735817422%_))))
                      (if (gx#stx-pair? _%tl1735617429%_)
                          (let ((_%e1736117432%_
                                 (gx#syntax-e _%tl1735617429%_)))
                            (let ((_%tl1735917439%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1736117432%_)))
                                  (_%hd1736017436%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1736117432%_))))
                              (if (gx#stx-null? _%tl1735917439%_)
                                  (_%__match2076820769%_
                                   _%e1735817422%_
                                   _%hd1735717426%_
                                   _%tl1735617429%_
                                   _%e1736117432%_
                                   _%hd1736017436%_
                                   _%tl1735917439%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g1735317374%_)))))
                          (let () (declare (not safe)) (_%g1735317374%_)))))
                  (let () (declare (not safe)) (_%g1735317374%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#cut|
      (lambda (_%stx17459%_)
        (letrec ((_%generate17462%_
                  (lambda (_%rest17581%_)
                    (let _%lp17584%_ ((_%rest17587%_ _%rest17581%_)
                                      (_%hd17589%_ '())
                                      (_%body17590%_ '()))
                      (let* ((_%__stx2080520806%_ _%rest17587%_)
                             (_%g1759317605%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx2080520806%_))))
                        (let ((_%__kont2080820809%_
                               (lambda (_%L17633%_ _%L17635%_)
                                 (let* ((_%__stx2078520786%_ _%L17635%_)
                                        (_%g1765217659%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx2078520786%_))))
                                   (let ((_%__kont2078820789%_
                                          (lambda ()
                                            (let ((_%arg17695%_ (gx#genident)))
                                              (_%lp17584%_
                                               _%L17633%_
                                               (cons _%arg17695%_ _%hd17589%_)
                                               (cons _%arg17695%_
                                                     _%body17590%_)))))
                                         (_%__kont2079020791%_
                                          (lambda ()
                                            (if (gx#stx-null? _%L17633%_)
                                                (let ((_%tail17681%_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail17681%_
                         _%hd17589%_)
                  (foldl cons (list _%tail17681%_) _%body17590%_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; cut ellipsis <...> not in tail position"
                                                 _%stx17459%_
                                                 _%L17635%_))))
                                         (_%__kont2079220793%_
                                          (lambda ()
                                            (_%lp17584%_
                                             _%L17633%_
                                             _%hd17589%_
                                             (cons _%L17635%_
                                                   _%body17590%_)))))
                                     (if (gx#identifier? _%__stx2078520786%_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core/sugar~Sugar-2[1]#_g21058_|
                                              _%__stx2078520786%_)
                                             (_%__kont2078820789%_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core/sugar~Sugar-2[1]#_g21059_|
                                                  _%__stx2078520786%_)
                                                 (_%__kont2079020791%_)
                                                 (_%__kont2079220793%_)))
                                         (_%__kont2079220793%_))))))
                              (_%__kont2081020811%_
                               (lambda ()
                                 (values (reverse _%hd17589%_)
                                         (reverse _%body17590%_)
                                         '#f))))
                          (if (gx#stx-pair? _%__stx2080520806%_)
                              (let ((_%e1759917623%_
                                     (gx#syntax-e _%__stx2080520806%_)))
                                (let ((_%tl1759717630%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1759917623%_)))
                                      (_%hd1759817627%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1759917623%_))))
                                  (_%__kont2080820809%_
                                   _%tl1759717630%_
                                   _%hd1759817627%_)))
                              (_%__kont2081020811%_))))))))
          (let* ((_%g1746517476%_
                  (lambda (_%g1746617472%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1746617472%_)))
                 (_%g1746417577%_
                  (lambda (_%g1746617480%_)
                    (if (gx#stx-pair? _%g1746617480%_)
                        (let ((_%e1747017483%_ (gx#syntax-e _%g1746617480%_)))
                          (let ((_%hd1746917487%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1747017483%_)))
                                (_%tl1746817490%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1747017483%_))))
                            ((lambda (_%L17493%_)
                               (if (and (gx#stx-list? _%L17493%_)
                                        (let ((__tmp21060
                                               (gx#stx-null? _%L17493%_)))
                                          (declare (not safe))
                                          (not __tmp21060)))
                                   (let ((_g21061_
                                          (_%generate17462%_ _%L17493%_)))
                                     (begin
                                       (let ((_g21062_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21061_)
                                                    (##vector-length _g21061_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21062_ 3)))
                                             (error "Context expects 3 values"
                                                    _g21062_)))
                                       (let ((_%hd17506%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21061_ 0)))
                                             (_%body17508%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21061_ 1)))
                                             (_%tail?17509%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21061_ 2))))
                                         (let* ((_%g1751117519%_
                                                 (lambda (_%g1751217515%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g1751217515%_)))
                                                (_%g1751017573%_
                                                 (lambda (_%g1751217523%_)
                                                   ((lambda (_%L17526%_)
                                                      (let ()
                                                        (let* ((_%g1753917547%_
                                                                (lambda (_%g1754017543%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g1754017543%_)))
                       (_%g1753817569%_
                        (lambda (_%g1754017551%_)
                          ((lambda (_%L17554%_)
                             (let ()
                               (if _%tail?17509%_
                                   (cons (gx#datum->syntax '#f 'lambda%)
                                         (cons _%L17526%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'apply)
                                                           _%L17554%_)
                                                     '())))
                                   (cons (gx#datum->syntax '#f 'lambda%)
                                         (cons _%L17526%_
                                               (cons _%L17554%_ '()))))))
                           _%g1754017551%_))))
                  (_%g1753817569%_ _%body17508%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g1751217523%_))))
                                           (_%g1751017573%_ _%hd17506%_)))))
                                   (_%g1746517476%_ _%g1746617480%_)))
                             _%tl1746817490%_)))
                        (_%g1746517476%_ _%g1746617480%_)))))
            (_%g1746417577%_ _%stx17459%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<>|
      (lambda (_%$stx17707%_)
        (let ((_%g1771017717%_
               (lambda (_%g1771117713%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1771117713%_))))
          (_%g1771017717%_ _%$stx17707%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<...>|
      (lambda (_%$stx17721%_)
        (let ((_%g1772417731%_
               (lambda (_%g1772517727%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1772517727%_))))
          (_%g1772417731%_ _%$stx17721%_))))))

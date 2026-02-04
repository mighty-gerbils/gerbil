(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-2[1]#_g20967_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20968_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20969_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20997_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20998_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20999_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21006_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21007_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21008_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21009_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21010_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21011_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21012_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21013_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21014_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21015_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21016_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21017_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-2[:0:]#lambda|
      (lambda (_%stx5320%_)
        (letrec ((_%simple-lambda?5323%_
                  (lambda (_%hd8707%_)
                    (gx#stx-andmap gx#identifier? _%hd8707%_)))
                 (_%opt-lambda?5325%_
                  (lambda (_%hd8559%_)
                    (let _%lp8562%_ ((_%rest8565%_ _%hd8559%_)
                                     (_%opt?8567%_ '#f))
                      (let* ((_%__stx1908519086%_ _%rest8565%_)
                             (_%g85708582%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1908519086%_))))
                        (let ((_%__kont1908819089%_
                               (lambda (_%g85728614%_ _%g85738616%_)
                                 (let* ((_%__stx1906119062%_ _%g85738616%_)
                                        (_%g86328646%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1906119062%_))))
                                   (let ((_%__kont1906419065%_
                                          (lambda (_%g86348684%_)
                                            (_%lp8562%_ _%g85728614%_ '#t)))
                                         (_%__kont1906619067%_
                                          (lambda ()
                                            (if (gx#identifier? _%g85738616%_)
                                                (if (not _%opt?8567%_)
                                                    (_%lp8562%_
                                                     _%g85728614%_
                                                     '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((_%__match1908219083%_
                                            (lambda (_%e86358664%_
                                                     _%hd86368668%_
                                                     _%tl86378671%_
                                                     _%e86388674%_
                                                     _%hd86398678%_
                                                     _%tl86408681%_)
                                              (let ((_%g86348684%_
                                                     _%hd86368668%_))
                                                (if (gx#identifier?
                                                     _%g86348684%_)
                                                    (_%__kont1906419065%_
                                                     _%g86348684%_)
                                                    (_%__kont1906619067%_))))))
                                       (if (gx#stx-pair? _%__stx1906119062%_)
                                           (let ((_%e86358664%_
                                                  (gx#syntax-e
                                                   _%__stx1906119062%_)))
                                             (let ((_%tl86378671%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e86358664%_)))
                                                   (_%hd86368668%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e86358664%_))))
                                               (if (gx#stx-pair?
                                                    _%tl86378671%_)
                                                   (let ((_%e86388674%_
                                                          (gx#syntax-e
                                                           _%tl86378671%_)))
                                                     (let ((_%tl86408681%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e86388674%_)))
                                                           (_%hd86398678%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e86388674%_))))
                                                       (if (gx#stx-null?
                                                            _%tl86408681%_)
                                                           (_%__match1908219083%_
                                                            _%e86358664%_
                                                            _%hd86368668%_
                                                            _%tl86378671%_
                                                            _%e86388674%_
                                                            _%hd86398678%_
                                                            _%tl86408681%_)
                                                           (_%__kont1906619067%_))))
                                                   (_%__kont1906619067%_))))
                                           (_%__kont1906619067%_)))))))
                              (_%__kont1909019091%_
                               (lambda ()
                                 (if _%opt?8567%_
                                     (let ((_%$e8593%_
                                            (gx#stx-null? _%rest8565%_)))
                                       (if _%$e8593%_
                                           _%$e8593%_
                                           (gx#identifier? _%rest8565%_)))
                                     '#f))))
                          (if (gx#stx-pair? _%__stx1908519086%_)
                              (let ((_%e85748604%_
                                     (gx#syntax-e _%__stx1908519086%_)))
                                (let ((_%tl85768611%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e85748604%_)))
                                      (_%hd85758608%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e85748604%_))))
                                  (_%__kont1908819089%_
                                   _%tl85768611%_
                                   _%hd85758608%_)))
                              (_%__kont1909019091%_)))))))
                 (_%opt-lambda-split5326%_
                  (lambda (_%hd8411%_)
                    (let _%lp8414%_ ((_%rest8417%_ _%hd8411%_)
                                     (_%pre8419%_ '())
                                     (_%opt8420%_ '()))
                      (let* ((_%__stx1912519126%_ _%rest8417%_)
                             (_%g84238435%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1912519126%_))))
                        (let ((_%__kont1912819129%_
                               (lambda (_%g84258463%_ _%g84268465%_)
                                 (let* ((_%__stx1910119102%_ _%g84268465%_)
                                        (_%g84818496%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1910119102%_))))
                                   (let ((_%__kont1910419105%_
                                          (lambda (_%g84838534%_ _%g84848536%_)
                                            (_%lp8414%_
                                             _%g84258463%_
                                             _%pre8419%_
                                             (cons (cons _%g84848536%_
                                                         _%g84838534%_)
                                                   _%opt8420%_))))
                                         (_%__kont1910619107%_
                                          (lambda ()
                                            (_%lp8414%_
                                             _%g84258463%_
                                             (cons _%g84268465%_ _%pre8419%_)
                                             _%opt8420%_))))
                                     (if (gx#stx-pair? _%__stx1910119102%_)
                                         (let ((_%e84858514%_
                                                (gx#syntax-e
                                                 _%__stx1910119102%_)))
                                           (let ((_%tl84878521%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e84858514%_)))
                                                 (_%hd84868518%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e84858514%_))))
                                             (if (gx#stx-pair? _%tl84878521%_)
                                                 (let ((_%e84888524%_
                                                        (gx#syntax-e
                                                         _%tl84878521%_)))
                                                   (let ((_%tl84908531%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e84888524%_)))
                                                         (_%hd84898528%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e84888524%_))))
                                                     (if (gx#stx-null?
                                                          _%tl84908531%_)
                                                         (_%__kont1910419105%_
                                                          _%hd84898528%_
                                                          _%hd84868518%_)
                                                         (_%__kont1910619107%_))))
                                                 (_%__kont1910619107%_))))
                                         (_%__kont1910619107%_))))))
                              (_%__kont1913019131%_
                               (lambda ()
                                 (values (reverse _%pre8419%_)
                                         (reverse _%opt8420%_)
                                         _%rest8417%_))))
                          (if (gx#stx-pair? _%__stx1912519126%_)
                              (let ((_%e84278453%_
                                     (gx#syntax-e _%__stx1912519126%_)))
                                (let ((_%tl84298460%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e84278453%_)))
                                      (_%hd84288457%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e84278453%_))))
                                  (_%__kont1912819129%_
                                   _%tl84298460%_
                                   _%hd84288457%_)))
                              (_%__kont1913019131%_)))))))
                 (_%kw-lambda?5327%_
                  (lambda (_%hd8079%_)
                    (let _%lp8082%_ ((_%rest8085%_ _%hd8079%_)
                                     (_%opt?8087%_ '#f)
                                     (_%key?8088%_ '#f))
                      (let* ((_%__stx1918919190%_ _%rest8085%_)
                             (_%g80938123%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1918919190%_))))
                        (let ((_%__kont1919219193%_
                               (lambda (_%g80958318%_
                                        _%g80968320%_
                                        _%g80978321%_)
                                 (let* ((_%__stx1916519166%_ _%g80968320%_)
                                        (_%g83368350%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1916519166%_))))
                                   (let ((_%__kont1916819169%_
                                          (lambda (_%g83388388%_)
                                            (if (gx#identifier? _%g83388388%_)
                                                (_%lp8082%_
                                                 _%g80958318%_
                                                 _%opt?8087%_
                                                 '#t)
                                                '#f)))
                                         (_%__kont1917019171%_
                                          (lambda ()
                                            (if (gx#identifier? _%g80968320%_)
                                                (_%lp8082%_
                                                 _%g80958318%_
                                                 _%opt?8087%_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1916519166%_)
                                         (let ((_%e83398368%_
                                                (gx#syntax-e
                                                 _%__stx1916519166%_)))
                                           (let ((_%tl83418375%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e83398368%_)))
                                                 (_%hd83408372%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e83398368%_))))
                                             (if (gx#stx-pair? _%tl83418375%_)
                                                 (let ((_%e83428378%_
                                                        (gx#syntax-e
                                                         _%tl83418375%_)))
                                                   (let ((_%tl83448385%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e83428378%_)))
                                                         (_%hd83438382%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e83428378%_))))
                                                     (if (gx#stx-null?
                                                          _%tl83448385%_)
                                                         (_%__kont1916819169%_
                                                          _%hd83408372%_)
                                                         (_%__kont1917019171%_))))
                                                 (_%__kont1917019171%_))))
                                         (_%__kont1917019171%_))))))
                              (_%__kont1919419195%_
                               (lambda (_%g81048275%_ _%g81058277%_)
                                 (if (gx#identifier? _%g81058277%_)
                                     (_%lp8082%_
                                      _%g81048275%_
                                      _%opt?8087%_
                                      '#t)
                                     '#f)))
                              (_%__kont1919619197%_
                               (lambda (_%g81138155%_ _%g81148157%_)
                                 (let* ((_%__stx1914119142%_ _%g81148157%_)
                                        (_%g81738187%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1914119142%_))))
                                   (let ((_%__kont1914419145%_
                                          (lambda (_%g81758225%_)
                                            (if (gx#identifier? _%g81758225%_)
                                                (_%lp8082%_
                                                 _%g81138155%_
                                                 '#t
                                                 _%key?8088%_)
                                                '#f)))
                                         (_%__kont1914619147%_
                                          (lambda ()
                                            (if (gx#identifier? _%g81148157%_)
                                                (if (not _%opt?8087%_)
                                                    (_%lp8082%_
                                                     _%g81138155%_
                                                     '#f
                                                     _%key?8088%_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1914119142%_)
                                         (let ((_%e81768205%_
                                                (gx#syntax-e
                                                 _%__stx1914119142%_)))
                                           (let ((_%tl81788212%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e81768205%_)))
                                                 (_%hd81778209%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e81768205%_))))
                                             (if (gx#stx-pair? _%tl81788212%_)
                                                 (let ((_%e81798215%_
                                                        (gx#syntax-e
                                                         _%tl81788212%_)))
                                                   (let ((_%tl81818222%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e81798215%_)))
                                                         (_%hd81808219%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e81798215%_))))
                                                     (if (gx#stx-null?
                                                          _%tl81818222%_)
                                                         (_%__kont1914419145%_
                                                          _%hd81778209%_)
                                                         (_%__kont1914619147%_))))
                                                 (_%__kont1914619147%_))))
                                         (_%__kont1914619147%_))))))
                              (_%__kont1919819199%_
                               (lambda ()
                                 (if _%key?8088%_
                                     (let ((_%$e8134%_
                                            (gx#stx-null? _%rest8085%_)))
                                       (if _%$e8134%_
                                           _%$e8134%_
                                           (gx#identifier? _%rest8085%_)))
                                     '#f))))
                          (let ((_%__match1921219213%_
                                 (lambda (_%e80988298%_
                                          _%hd80998302%_
                                          _%tl81008305%_
                                          _%e81018308%_
                                          _%hd81028312%_
                                          _%tl81038315%_)
                                   (let ((_%g80958318%_ _%tl81038315%_)
                                         (_%g80968320%_ _%hd81028312%_)
                                         (_%g80978321%_ _%hd80998302%_))
                                     (if (gx#stx-keyword? _%g80978321%_)
                                         (_%__kont1919219193%_
                                          _%g80958318%_
                                          _%g80968320%_
                                          _%g80978321%_)
                                         (if (gx#stx-datum? _%hd80998302%_)
                                             (let ((_%e81098261%_
                                                    (gx#stx-e _%hd80998302%_)))
                                               (if (equal? _%e81098261%_
                                                           '#!key)
                                                   (_%__kont1919419195%_
                                                    _%tl81038315%_
                                                    _%hd81028312%_)
                                                   (_%__kont1919619197%_
                                                    _%tl81008305%_
                                                    _%hd80998302%_)))
                                             (_%__kont1919619197%_
                                              _%tl81008305%_
                                              _%hd80998302%_)))))))
                            (if (gx#stx-pair? _%__stx1918919190%_)
                                (let ((_%e80988298%_
                                       (gx#syntax-e _%__stx1918919190%_)))
                                  (let ((_%tl81008305%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e80988298%_)))
                                        (_%hd80998302%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e80988298%_))))
                                    (if (gx#stx-pair? _%tl81008305%_)
                                        (let ((_%e81018308%_
                                               (gx#syntax-e _%tl81008305%_)))
                                          (let ((_%tl81038315%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e81018308%_)))
                                                (_%hd81028312%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e81018308%_))))
                                            (_%__match1921219213%_
                                             _%e80988298%_
                                             _%hd80998302%_
                                             _%tl81008305%_
                                             _%e81018308%_
                                             _%hd81028312%_
                                             _%tl81038315%_)))
                                        (if (gx#stx-datum? _%hd80998302%_)
                                            (let ((_%e81098261%_
                                                   (gx#stx-e _%hd80998302%_)))
                                              (_%__kont1919619197%_
                                               _%tl81008305%_
                                               _%hd80998302%_))
                                            (_%__kont1919619197%_
                                             _%tl81008305%_
                                             _%hd80998302%_)))))
                                (_%__kont1919819199%_))))))))
                 (_%kw-lambda-split5328%_
                  (lambda (_%hd7812%_)
                    (let _%lp7815%_ ((_%rest7818%_ _%hd7812%_)
                                     (_%kwvar7820%_ '#f)
                                     (_%kwargs7821%_ '())
                                     (_%args7822%_ '()))
                      (let* ((_%__stx1926319264%_ _%rest7818%_)
                             (_%g78277857%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1926319264%_))))
                        (let ((_%__kont1926619267%_
                               (lambda (_%g78297976%_
                                        _%g78307978%_
                                        _%g78317979%_)
                                 (let ((_%key7993%_ (gx#stx-e _%g78317979%_)))
                                   (if (find (lambda (_%kwarg7996%_)
                                               (eq? _%key7993%_
                                                    (car _%kwarg7996%_)))
                                             _%kwargs7821%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad syntax; duplicate keyword argument"
                                        _%stx5320%_
                                        _%hd7812%_
                                        _%key7993%_)
                                       (let* ((_%__stx1923919240%_
                                               _%g78307978%_)
                                              (_%g80008015%_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx1923919240%_))))
                                         (let ((_%__kont1924219243%_
                                                (lambda (_%g80028053%_
                                                         _%g80038055%_)
                                                  (_%lp7815%_
                                                   _%g78297976%_
                                                   _%kwvar7820%_
                                                   (cons (list _%key7993%_
                                                               _%g80038055%_
                                                               _%g80028053%_)
                                                         _%kwargs7821%_)
                                                   _%args7822%_)))
                                               (_%__kont1924419245%_
                                                (lambda ()
                                                  (_%lp7815%_
                                                   _%g78297976%_
                                                   _%kwvar7820%_
                                                   (cons (list _%key7993%_
                                                               _%g78307978%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'error)
                             (cons '"Missing required keyword argument"
                                   (cons _%g78317979%_ '()))))
                 _%kwargs7821%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%args7822%_))))
                                           (if (gx#stx-pair?
                                                _%__stx1923919240%_)
                                               (let ((_%e80048033%_
                                                      (gx#syntax-e
                                                       _%__stx1923919240%_)))
                                                 (let ((_%tl80068040%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e80048033%_)))
                                                       (_%hd80058037%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e80048033%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl80068040%_)
                                                       (let ((_%e80078043%_
                                                              (gx#syntax-e
                                                               _%tl80068040%_)))
                                                         (let ((_%tl80098050%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e80078043%_)))
                       (_%hd80088047%_
                        (let () (declare (not safe)) (##car _%e80078043%_))))
                   (if (gx#stx-null? _%tl80098050%_)
                       (_%__kont1924219243%_ _%hd80088047%_ _%hd80058037%_)
                       (_%__kont1924419245%_))))
               (_%__kont1924419245%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont1924419245%_))))))))
                              (_%__kont1926819269%_
                               (lambda (_%g78387933%_ _%g78397935%_)
                                 (if _%kwvar7820%_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"bad syntax; duplicate #!key argument"
                                      _%stx5320%_
                                      _%hd7812%_
                                      _%g78397935%_)
                                     (_%lp7815%_
                                      _%g78387933%_
                                      _%g78397935%_
                                      _%kwargs7821%_
                                      _%args7822%_))))
                              (_%__kont1927019271%_
                               (lambda (_%g78477885%_ _%g78487887%_)
                                 (_%lp7815%_
                                  _%g78477885%_
                                  _%kwvar7820%_
                                  _%kwargs7821%_
                                  (cons _%g78487887%_ _%args7822%_))))
                              (_%__kont1927219273%_
                               (lambda ()
                                 (values _%kwvar7820%_
                                         (reverse _%kwargs7821%_)
                                         (foldl cons
                                                _%rest7818%_
                                                _%args7822%_)))))
                          (let ((_%__match1928619287%_
                                 (lambda (_%e78327956%_
                                          _%hd78337960%_
                                          _%tl78347963%_
                                          _%e78357966%_
                                          _%hd78367970%_
                                          _%tl78377973%_)
                                   (let ((_%g78297976%_ _%tl78377973%_)
                                         (_%g78307978%_ _%hd78367970%_)
                                         (_%g78317979%_ _%hd78337960%_))
                                     (if (gx#stx-keyword? _%g78317979%_)
                                         (_%__kont1926619267%_
                                          _%g78297976%_
                                          _%g78307978%_
                                          _%g78317979%_)
                                         (if (gx#stx-datum? _%hd78337960%_)
                                             (let ((_%e78437919%_
                                                    (gx#stx-e _%hd78337960%_)))
                                               (if (equal? _%e78437919%_
                                                           '#!key)
                                                   (_%__kont1926819269%_
                                                    _%tl78377973%_
                                                    _%hd78367970%_)
                                                   (_%__kont1927019271%_
                                                    _%tl78347963%_
                                                    _%hd78337960%_)))
                                             (_%__kont1927019271%_
                                              _%tl78347963%_
                                              _%hd78337960%_)))))))
                            (if (gx#stx-pair? _%__stx1926319264%_)
                                (let ((_%e78327956%_
                                       (gx#syntax-e _%__stx1926319264%_)))
                                  (let ((_%tl78347963%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e78327956%_)))
                                        (_%hd78337960%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e78327956%_))))
                                    (if (gx#stx-pair? _%tl78347963%_)
                                        (let ((_%e78357966%_
                                               (gx#syntax-e _%tl78347963%_)))
                                          (let ((_%tl78377973%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e78357966%_)))
                                                (_%hd78367970%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e78357966%_))))
                                            (_%__match1928619287%_
                                             _%e78327956%_
                                             _%hd78337960%_
                                             _%tl78347963%_
                                             _%e78357966%_
                                             _%hd78367970%_
                                             _%tl78377973%_)))
                                        (if (gx#stx-datum? _%hd78337960%_)
                                            (let ((_%e78437919%_
                                                   (gx#stx-e _%hd78337960%_)))
                                              (_%__kont1927019271%_
                                               _%tl78347963%_
                                               _%hd78337960%_))
                                            (_%__kont1927019271%_
                                             _%tl78347963%_
                                             _%hd78337960%_)))))
                                (_%__kont1927219273%_))))))))
                 (_%check-duplicate-bindings5329%_
                  (lambda (_%hd7504%_)
                    (let _%lp7507%_ ((_%rest7510%_ _%hd7504%_)
                                     (_%ids7512%_ '()))
                      (let* ((_%__stx1933719338%_ _%rest7510%_)
                             (_%g75157527%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1933719338%_))))
                        (let ((_%__kont1934019341%_
                               (lambda (_%g75177555%_ _%g75187557%_)
                                 (if (gx#identifier? _%g75187557%_)
                                     (_%lp7507%_
                                      _%g75177555%_
                                      (cons _%g75187557%_ _%ids7512%_))
                                     (if (gx#stx-pair? _%g75187557%_)
                                         (let* ((_%g75767590%_
                                                 (lambda (_%g75777586%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g75777586%_)))
                                                (_%g75757632%_
                                                 (lambda (_%g75777594%_)
                                                   (if (gx#stx-pair?
                                                        _%g75777594%_)
                                                       (let ((_%e75797597%_
                                                              (gx#syntax-e
                                                               _%g75777594%_)))
                                                         (let ((_%hd75807601%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e75797597%_)))
                       (_%tl75817604%_
                        (let () (declare (not safe)) (##cdr _%e75797597%_))))
                   (if (gx#stx-pair? _%tl75817604%_)
                       (let ((_%e75827607%_ (gx#syntax-e _%tl75817604%_)))
                         (let ((_%hd75837611%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e75827607%_)))
                               (_%tl75847614%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e75827607%_))))
                           (if (gx#stx-null? _%tl75847614%_)
                               ((lambda (_%g75787617%_)
                                  (_%lp7507%_
                                   _%g75177555%_
                                   (cons _%g75787617%_ _%ids7512%_)))
                                _%hd75807601%_)
                               (_%g75767590%_ _%g75777594%_))))
                       (_%g75767590%_ _%g75777594%_))))
               (_%g75767590%_ _%g75777594%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g75757632%_ _%g75187557%_))
                                         (if (gx#stx-keyword? _%g75187557%_)
                                             (let* ((_%g76387650%_
                                                     (lambda (_%g76397646%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g76397646%_)))
                                                    (_%g76377753%_
                                                     (lambda (_%g76397654%_)
                                                       (if (gx#stx-pair?
                                                            _%g76397654%_)
                                                           (let ((_%e76427657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g76397654%_)))
                     (let ((_%hd76437661%_
                            (let ()
                              (declare (not safe))
                              (##car _%e76427657%_)))
                           (_%tl76447664%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e76427657%_))))
                       ((lambda (_%g76407667%_ _%g76417669%_)
                          (let* ((_%__stx1931319314%_ _%g76417669%_)
                                 (_%g76827696%_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx1931319314%_))))
                            (let ((_%__kont1931619317%_
                                   (lambda (_%g76847734%_)
                                     (_%lp7507%_
                                      _%g76407667%_
                                      (cons _%g76847734%_ _%ids7512%_))))
                                  (_%__kont1931819319%_
                                   (lambda ()
                                     (_%lp7507%_
                                      _%g76407667%_
                                      (cons _%g76417669%_ _%ids7512%_)))))
                              (if (gx#stx-pair? _%__stx1931319314%_)
                                  (let ((_%e76857714%_
                                         (gx#syntax-e _%__stx1931319314%_)))
                                    (let ((_%tl76877721%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e76857714%_)))
                                          (_%hd76867718%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e76857714%_))))
                                      (if (gx#stx-pair? _%tl76877721%_)
                                          (let ((_%e76887724%_
                                                 (gx#syntax-e _%tl76877721%_)))
                                            (let ((_%tl76907731%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e76887724%_)))
                                                  (_%hd76897728%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e76887724%_))))
                                              (if (gx#stx-null? _%tl76907731%_)
                                                  (_%__kont1931619317%_
                                                   _%hd76867718%_)
                                                  (_%__kont1931819319%_))))
                                          (_%__kont1931819319%_))))
                                  (_%__kont1931819319%_)))))
                        _%tl76447664%_
                        _%hd76437661%_)))
                   (_%g76387650%_ _%g76397654%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g76377753%_ _%g75177555%_))
                                             (if (eq? (gx#stx-e _%g75187557%_)
                                                      '#!key)
                                                 (let* ((_%g77597771%_
                                                         (lambda (_%g77607767%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g77607767%_)))
                                                        (_%g77587802%_
                                                         (lambda (_%g77607775%_)
                                                           (if (gx#stx-pair?
                                                                _%g77607775%_)
                                                               (let ((_%e77637778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%g77607775%_)))
                         (let ((_%hd77647782%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e77637778%_)))
                               (_%tl77657785%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e77637778%_))))
                           ((lambda (_%g77617788%_ _%g77627790%_)
                              (_%lp7507%_
                               _%g77617788%_
                               (cons _%g77627790%_ _%ids7512%_)))
                            _%tl77657785%_
                            _%hd77647782%_)))
                       (_%g77597771%_ _%g77607775%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g77587802%_
                                                    _%g75177555%_))
                                                 (error '"BUG: check-duplicate-bindings"
                                                        _%stx5320%_
                                                        _%rest7510%_)))))))
                              (_%__kont1934219343%_
                               (lambda ()
                                 (gx#check-duplicate-identifiers
                                  (if (gx#stx-null? _%rest7510%_)
                                      _%ids7512%_
                                      (cons _%rest7510%_ _%ids7512%_))
                                  _%stx5320%_))))
                          (if (gx#stx-pair? _%__stx1933719338%_)
                              (let ((_%e75197545%_
                                     (gx#syntax-e _%__stx1933719338%_)))
                                (let ((_%tl75217552%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e75197545%_)))
                                      (_%hd75207549%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e75197545%_))))
                                  (_%__kont1934019341%_
                                   _%tl75217552%_
                                   _%hd75207549%_)))
                              (_%__kont1934219343%_)))))))
                 (_%generate-opt-primary5330%_
                  (lambda (_%pre7300%_ _%opt7302%_ _%tail7303%_ _%body7304%_)
                    (let* ((_%g73067347%_
                            (lambda (_%g73077343%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g73077343%_)))
                           (_%g73057500%_
                            (lambda (_%g73077351%_)
                              (if (gx#stx-pair? _%g73077351%_)
                                  (let ((_%e73127354%_
                                         (gx#syntax-e _%g73077351%_)))
                                    (let ((_%hd73137358%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e73127354%_)))
                                          (_%tl73147361%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e73127354%_))))
                                      (if (gx#stx-pair/null? _%hd73137358%_)
                                          (let ((_g20932_
                                                 (gx#syntax-split-splice
                                                  _%hd73137358%_
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
                                              (let ((_%target73157364%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20932_
                                                        0)))
                                                    (_%tl73177367%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20932_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl73177367%_)
                                                    (letrec ((_%loop73187370%_
                                                              (lambda (_%hd73167374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%pre73227377%_)
                        (if (gx#stx-pair? _%hd73167374%_)
                            (let ((_%e73197379%_ (gx#syntax-e _%hd73167374%_)))
                              (let ((_%lp-hd73207383%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e73197379%_)))
                                    (_%lp-tl73217386%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e73197379%_))))
                                (_%loop73187370%_
                                 _%lp-tl73217386%_
                                 (cons _%lp-hd73207383%_ _%pre73227377%_))))
                            (let ((_%pre73237389%_ (reverse _%pre73227377%_)))
                              (if (gx#stx-pair? _%tl73147361%_)
                                  (let ((_%e73247392%_
                                         (gx#syntax-e _%tl73147361%_)))
                                    (let ((_%hd73257396%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e73247392%_)))
                                          (_%tl73267399%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e73247392%_))))
                                      (if (gx#stx-pair/null? _%hd73257396%_)
                                          (let ((_g20934_
                                                 (gx#syntax-split-splice
                                                  _%hd73257396%_
                                                  '0)))
                                            (begin
                                              (let ((_g20935_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20934_)
                                                           (##values-length
                                                            _g20934_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20935_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20935_)))
                                              (let ((_%target73277402%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20934_
                                                        0)))
                                                    (_%tl73297405%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20934_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl73297405%_)
                                                    (letrec ((_%loop73307408%_
                                                              (lambda (_%hd73287412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%opt73347415%_)
                        (if (gx#stx-pair? _%hd73287412%_)
                            (let ((_%e73317417%_ (gx#syntax-e _%hd73287412%_)))
                              (let ((_%lp-hd73327421%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e73317417%_)))
                                    (_%lp-tl73337424%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e73317417%_))))
                                (_%loop73307408%_
                                 _%lp-tl73337424%_
                                 (cons _%lp-hd73327421%_ _%opt73347415%_))))
                            (let ((_%opt73357427%_ (reverse _%opt73347415%_)))
                              (if (gx#stx-pair? _%tl73267399%_)
                                  (let ((_%e73367430%_
                                         (gx#syntax-e _%tl73267399%_)))
                                    (let ((_%hd73377434%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e73367430%_)))
                                          (_%tl73387437%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e73367430%_))))
                                      (if (gx#stx-pair? _%tl73387437%_)
                                          (let ((_%e73397440%_
                                                 (gx#syntax-e _%tl73387437%_)))
                                            (let ((_%hd73407444%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e73397440%_)))
                                                  (_%tl73417447%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e73397440%_))))
                                              (if (gx#stx-null? _%tl73417447%_)
                                                  ((lambda (_%g73087450%_
                                                            _%g73097452%_
                                                            _%g73107453%_
                                                            _%g73117454%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda%)
                                                           (cons (foldr (lambda (_%g74837488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _%g74847491%_)
                                  (cons _%g74837488%_ _%g74847491%_))
                                (foldr (lambda (_%g74857494%_ _%g74867497%_)
                                         (cons _%g74857494%_ _%g74867497%_))
                                       _%g73097452%_
                                       _%g73107453%_)
                                _%g73117454%_)
                         _%g73087450%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%hd73407444%_
                                                   _%hd73377434%_
                                                   _%opt73357427%_
                                                   _%pre73237389%_)
                                                  (_%g73067347%_
                                                   _%g73077351%_))))
                                          (_%g73067347%_ _%g73077351%_))))
                                  (_%g73067347%_ _%g73077351%_)))))))
              (_%loop73307408%_ _%target73277402%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g73067347%_
                                                     _%g73077351%_)))))
                                          (_%g73067347%_ _%g73077351%_))))
                                  (_%g73067347%_ _%g73077351%_)))))))
              (_%loop73187370%_ _%target73157364%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g73067347%_
                                                     _%g73077351%_)))))
                                          (_%g73067347%_ _%g73077351%_))))
                                  (_%g73067347%_ _%g73077351%_)))))
                      (_%g73057500%_
                       (list _%pre7300%_
                             (map car _%opt7302%_)
                             _%tail7303%_
                             _%body7304%_)))))
                 (_%generate-opt-dispatch5331%_
                  (lambda (_%primary7294%_
                           _%pre7296%_
                           _%opt7297%_
                           _%tail7298%_)
                    (cons (list _%pre7296%_
                                (_%generate-opt-clause5333%_
                                 _%primary7294%_
                                 _%pre7296%_
                                 _%opt7297%_))
                          (_%generate-opt-dispatch*5332%_
                           _%primary7294%_
                           _%pre7296%_
                           _%opt7297%_
                           _%tail7298%_))))
                 (_%generate-opt-dispatch*5332%_
                  (lambda (_%primary6851%_
                           _%pre6853%_
                           _%opt6854%_
                           _%tail6855%_)
                    (let _%recur6857%_ ((_%opt-rest6860%_ _%opt6854%_)
                                        (_%right6862%_ '()))
                      (if (pair? _%opt-rest6860%_)
                          (let* ((_%hd6866%_ (caar _%opt-rest6860%_))
                                 (_%rest6869%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%opt-rest6860%_)))
                                 (_%right*6872%_
                                  (cons _%hd6866%_ _%right6862%_))
                                 (_%g68756892%_
                                  (lambda (_%g68766888%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g68766888%_)))
                                 (_%g68747072%_
                                  (lambda (_%g68766896%_)
                                    (if (gx#stx-pair/null? _%g68766896%_)
                                        (let ((_g20936_
                                               (gx#syntax-split-splice
                                                _%g68766896%_
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
                                            (let ((_%target68786899%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20936_
                                                      0)))
                                                  (_%tl68806902%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20936_
                                                      1))))
                                              (if (gx#stx-null? _%tl68806902%_)
                                                  (letrec ((_%loop68816905%_
                                                            (lambda (_%hd68796909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%pre-bind68856912%_)
                      (if (gx#stx-pair? _%hd68796909%_)
                          (let ((_%e68826914%_ (gx#syntax-e _%hd68796909%_)))
                            (let ((_%lp-hd68836918%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e68826914%_)))
                                  (_%lp-tl68846921%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e68826914%_))))
                              (_%loop68816905%_
                               _%lp-tl68846921%_
                               (cons _%lp-hd68836918%_ _%pre-bind68856912%_))))
                          (let ((_%pre-bind68866924%_
                                 (reverse _%pre-bind68856912%_)))
                            ((lambda (_%g68776927%_)
                               (let* ((_%g69496966%_
                                       (lambda (_%g69506962%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g69506962%_)))
                                      (_%g69487068%_
                                       (lambda (_%g69506970%_)
                                         (if (gx#stx-pair/null? _%g69506970%_)
                                             (let ((_g20938_
                                                    (gx#syntax-split-splice
                                                     _%g69506970%_
                                                     '0)))
                                               (begin
                                                 (let ((_g20939_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g20938_)
                                                              (##values-length
                                                               _g20938_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g20939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g20939_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target69526973%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g20938_
                                                           0)))
                                                       (_%tl69546976%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g20938_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl69546976%_)
                                                       (letrec ((_%loop69556979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd69536983%_ _%opt-bind69596986%_)
                           (if (gx#stx-pair? _%hd69536983%_)
                               (let ((_%e69566988%_
                                      (gx#syntax-e _%hd69536983%_)))
                                 (let ((_%lp-hd69576992%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e69566988%_)))
                                       (_%lp-tl69586995%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e69566988%_))))
                                   (_%loop69556979%_
                                    _%lp-tl69586995%_
                                    (cons _%lp-hd69576992%_
                                          _%opt-bind69596986%_))))
                               (let ((_%opt-bind69606998%_
                                      (reverse _%opt-bind69596986%_)))
                                 ((lambda (_%g69517001%_)
                                    (let* ((_%g70187026%_
                                            (lambda (_%g70197022%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g70197022%_)))
                                           (_%g70177064%_
                                            (lambda (_%g70197030%_)
                                              ((lambda (_%g70207033%_)
                                                 (cons (list (foldr (lambda (_%g70477052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g70487055%_)
                              (cons _%g70477052%_ _%g70487055%_))
                            (foldr (lambda (_%g70497058%_ _%g70507061%_)
                                     (cons _%g70497058%_ _%g70507061%_))
                                   (cons _%g70207033%_ '())
                                   _%g69517001%_)
                            _%g68776927%_)
                     (_%generate-opt-clause5333%_
                      _%primary6851%_
                      (foldr cons (reverse _%right*6872%_) _%pre6853%_)
                      _%rest6869%_))
               (_%recur6857%_ _%rest6869%_ _%right*6872%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g70197030%_))))
                                      (_%g70177064%_ _%hd6866%_)))
                                  _%opt-bind69606998%_))))))
                 (_%loop69556979%_ _%target69526973%_ '()))
               (_%g69496966%_ _%g69506970%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g69496966%_ _%g69506970%_)))))
                                 (_%g69487068%_ (reverse _%right6862%_))))
                             _%pre-bind68866924%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop68816905%_
                                                     _%target68786899%_
                                                     '()))
                                                  (_%g68756892%_
                                                   _%g68766896%_)))))
                                        (_%g68756892%_ _%g68766896%_)))))
                            (_%g68747072%_ _%pre6853%_))
                          (if (gx#stx-null? _%tail6855%_)
                              '()
                              (let* ((_%g70807121%_
                                      (lambda (_%g70817117%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g70817117%_)))
                                     (_%g70797290%_
                                      (lambda (_%g70817125%_)
                                        (if (gx#stx-pair? _%g70817125%_)
                                            (let ((_%e70867128%_
                                                   (gx#syntax-e
                                                    _%g70817125%_)))
                                              (let ((_%hd70877132%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e70867128%_)))
                                                    (_%tl70887135%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e70867128%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd70877132%_)
                                                    (let ((_g20940_
                                                           (gx#syntax-split-splice
                                                            _%hd70877132%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20941_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g20940_)
                             (##values-length _g20940_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g20941_ 2)))
                      (error "Context expects 2 values" _g20941_)))
                (let ((_%target70897138%_
                       (let () (declare (not safe)) (##values-ref _g20940_ 0)))
                      (_%tl70917141%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g20940_ 1))))
                  (if (gx#stx-null? _%tl70917141%_)
                      (letrec ((_%loop70927144%_
                                (lambda (_%hd70907148%_ _%pre70967151%_)
                                  (if (gx#stx-pair? _%hd70907148%_)
                                      (let ((_%e70937153%_
                                             (gx#syntax-e _%hd70907148%_)))
                                        (let ((_%lp-hd70947157%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e70937153%_)))
                                              (_%lp-tl70957160%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e70937153%_))))
                                          (_%loop70927144%_
                                           _%lp-tl70957160%_
                                           (cons _%lp-hd70947157%_
                                                 _%pre70967151%_))))
                                      (let ((_%pre70977163%_
                                             (reverse _%pre70967151%_)))
                                        (if (gx#stx-pair? _%tl70887135%_)
                                            (let ((_%e70987166%_
                                                   (gx#syntax-e
                                                    _%tl70887135%_)))
                                              (let ((_%hd70997170%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e70987166%_)))
                                                    (_%tl71007173%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e70987166%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd70997170%_)
                                                    (let ((_g20942_
                                                           (gx#syntax-split-splice
                                                            _%hd70997170%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20943_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g20942_)
                             (##values-length _g20942_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g20943_ 2)))
                      (error "Context expects 2 values" _g20943_)))
                (let ((_%target71017176%_
                       (let () (declare (not safe)) (##values-ref _g20942_ 0)))
                      (_%tl71037179%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g20942_ 1))))
                  (if (gx#stx-null? _%tl71037179%_)
                      (letrec ((_%loop71047182%_
                                (lambda (_%hd71027186%_ _%opt71087189%_)
                                  (if (gx#stx-pair? _%hd71027186%_)
                                      (let ((_%e71057191%_
                                             (gx#syntax-e _%hd71027186%_)))
                                        (let ((_%lp-hd71067195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e71057191%_)))
                                              (_%lp-tl71077198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e71057191%_))))
                                          (_%loop71047182%_
                                           _%lp-tl71077198%_
                                           (cons _%lp-hd71067195%_
                                                 _%opt71087189%_))))
                                      (let ((_%opt71097201%_
                                             (reverse _%opt71087189%_)))
                                        (if (gx#stx-pair? _%tl71007173%_)
                                            (let ((_%e71107204%_
                                                   (gx#syntax-e
                                                    _%tl71007173%_)))
                                              (let ((_%hd71117208%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71107204%_)))
                                                    (_%tl71127211%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71107204%_))))
                                                (if (gx#stx-pair?
                                                     _%tl71127211%_)
                                                    (let ((_%e71137214%_
                                                           (gx#syntax-e
                                                            _%tl71127211%_)))
                                                      (let ((_%hd71147218%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e71137214%_)))
                    (_%tl71157221%_
                     (let () (declare (not safe)) (##cdr _%e71137214%_))))
                (if (gx#stx-null? _%tl71157221%_)
                    ((lambda (_%g70827224%_
                              _%g70837226%_
                              _%g70847227%_
                              _%g70857228%_)
                       (list (list (foldr (lambda (_%g72577262%_ _%g72587265%_)
                                            (cons _%g72577262%_ _%g72587265%_))
                                          (foldr (lambda (_%g72597268%_
                                                          _%g72607271%_)
                                                   (cons _%g72597268%_
                                                         _%g72607271%_))
                                                 _%g70837226%_
                                                 _%g70847227%_)
                                          _%g70857228%_)
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'apply)
                                          (cons _%g70827224%_
                                                (foldr (lambda (_%g72737278%_
                                                                _%g72747281%_)
                                                         (cons _%g72737278%_
                                                               _%g72747281%_))
                                                       (foldr (lambda (_%g72757284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g72767287%_)
                        (cons _%g72757284%_ _%g72767287%_))
                      (cons _%g70837226%_ '())
                      _%g70847227%_)
               _%g70857228%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (gx#stx-source _%stx5320%_)))))
                     _%hd71147218%_
                     _%hd71117208%_
                     _%opt71097201%_
                     _%pre70977163%_)
                    (_%g70807121%_ _%g70817125%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g70807121%_
                                                     _%g70817125%_))))
                                            (_%g70807121%_ _%g70817125%_)))))))
                        (_%loop71047182%_ _%target71017176%_ '()))
                      (_%g70807121%_ _%g70817125%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g70807121%_
                                                     _%g70817125%_))))
                                            (_%g70807121%_ _%g70817125%_)))))))
                        (_%loop70927144%_ _%target70897138%_ '()))
                      (_%g70807121%_ _%g70817125%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g70807121%_
                                                     _%g70817125%_))))
                                            (_%g70807121%_ _%g70817125%_)))))
                                (_%g70797290%_
                                 (list _%pre6853%_
                                       (reverse _%right6862%_)
                                       _%tail6855%_
                                       _%primary6851%_))))))))
                 (_%generate-opt-clause5333%_
                  (lambda (_%primary6553%_ _%pre6555%_ _%opt6556%_)
                    (let _%recur6558%_ ((_%opt-rest6561%_ _%opt6556%_)
                                        (_%right6563%_ '()))
                      (if (pair? _%opt-rest6561%_)
                          (let* ((_%hd6565%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%opt-rest6561%_)))
                                 (_%rest6568%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%opt-rest6561%_)))
                                 (_%g65716579%_
                                  (lambda (_%g65726575%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g65726575%_)))
                                 (_%g65706668%_
                                  (lambda (_%g65726583%_)
                                    ((lambda (_%g65736586%_)
                                       (let* ((_%g66026610%_
                                               (lambda (_%g66036606%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g66036606%_)))
                                              (_%g66016664%_
                                               (lambda (_%g66036614%_)
                                                 ((lambda (_%g66046617%_)
                                                    (let* ((_%g66306638%_
                                                            (lambda (_%g66316634%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g66316634%_)))
                                                           (_%g66296660%_
                                                            (lambda (_%g66316642%_)
                                                              ((lambda (_%g66326645%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons (cons (cons (cons _%g65736586%_ '())
                                                 (cons _%g66046617%_ '()))
                                           '())
                                     (cons _%g66326645%_ '()))))
                       _%g66316642%_))))
              (_%g66296660%_
               (_%recur6558%_
                _%rest6568%_
                (cons _%g65736586%_ _%right6563%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g66036614%_))))
                                         (_%g66016664%_ (cdr _%hd6565%_))))
                                     _%g65726583%_))))
                            (_%g65706668%_ (car _%hd6565%_)))
                          (let* ((_%g66726709%_
                                  (lambda (_%g66736705%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g66736705%_)))
                                 (_%g66716847%_
                                  (lambda (_%g66736713%_)
                                    (if (gx#stx-pair? _%g66736713%_)
                                        (let ((_%e66776716%_
                                               (gx#syntax-e _%g66736713%_)))
                                          (let ((_%hd66786720%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e66776716%_)))
                                                (_%tl66796723%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e66776716%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd66786720%_)
                                                (let ((_g20944_
                                                       (gx#syntax-split-splice
                                                        _%hd66786720%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20945_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20944_)
                         (##values-length _g20944_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20945_ 2)))
                  (error "Context expects 2 values" _g20945_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target66806726%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20944_
                                                              0)))
                                                          (_%tl66826729%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20944_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl66826729%_)
                                                          (letrec ((_%loop66836732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd66816736%_ _%pre66876739%_)
                              (if (gx#stx-pair? _%hd66816736%_)
                                  (let ((_%e66846741%_
                                         (gx#syntax-e _%hd66816736%_)))
                                    (let ((_%lp-hd66856745%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e66846741%_)))
                                          (_%lp-tl66866748%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e66846741%_))))
                                      (_%loop66836732%_
                                       _%lp-tl66866748%_
                                       (cons _%lp-hd66856745%_
                                             _%pre66876739%_))))
                                  (let ((_%pre66886751%_
                                         (reverse _%pre66876739%_)))
                                    (if (gx#stx-pair? _%tl66796723%_)
                                        (let ((_%e66896754%_
                                               (gx#syntax-e _%tl66796723%_)))
                                          (let ((_%hd66906758%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e66896754%_)))
                                                (_%tl66916761%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e66896754%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd66906758%_)
                                                (let ((_g20946_
                                                       (gx#syntax-split-splice
                                                        _%hd66906758%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20947_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20946_)
                         (##values-length _g20946_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20947_ 2)))
                  (error "Context expects 2 values" _g20947_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target66926764%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20946_
                                                              0)))
                                                          (_%tl66946767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20946_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl66946767%_)
                                                          (letrec ((_%loop66956770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd66936774%_ _%opt66996777%_)
                              (if (gx#stx-pair? _%hd66936774%_)
                                  (let ((_%e66966779%_
                                         (gx#syntax-e _%hd66936774%_)))
                                    (let ((_%lp-hd66976783%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e66966779%_)))
                                          (_%lp-tl66986786%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e66966779%_))))
                                      (_%loop66956770%_
                                       _%lp-tl66986786%_
                                       (cons _%lp-hd66976783%_
                                             _%opt66996777%_))))
                                  (let ((_%opt67006789%_
                                         (reverse _%opt66996777%_)))
                                    (if (gx#stx-pair? _%tl66916761%_)
                                        (let ((_%e67016792%_
                                               (gx#syntax-e _%tl66916761%_)))
                                          (let ((_%hd67026796%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67016792%_)))
                                                (_%tl67036799%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67016792%_))))
                                            (if (gx#stx-null? _%tl67036799%_)
                                                ((lambda (_%g66746802%_
                                                          _%g66756804%_
                                                          _%g66766805%_)
                                                   (gx#stx-wrap-source
                                                    (cons _%g66746802%_
                                                          (foldr (lambda (_%g68306835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g68316838%_)
                           (cons _%g68306835%_ _%g68316838%_))
                         (foldr (lambda (_%g68326841%_ _%g68336844%_)
                                  (cons _%g68326841%_ _%g68336844%_))
                                '()
                                _%g66756804%_)
                         _%g66766805%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _%stx5320%_)))
                                                 _%hd67026796%_
                                                 _%opt67006789%_
                                                 _%pre66886751%_)
                                                (_%g66726709%_
                                                 _%g66736713%_))))
                                        (_%g66726709%_ _%g66736713%_)))))))
                    (_%loop66956770%_ _%target66926764%_ '()))
                  (_%g66726709%_ _%g66736713%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g66726709%_
                                                 _%g66736713%_))))
                                        (_%g66726709%_ _%g66736713%_)))))))
                    (_%loop66836732%_ _%target66806726%_ '()))
                  (_%g66726709%_ _%g66736713%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g66726709%_
                                                 _%g66736713%_))))
                                        (_%g66726709%_ _%g66736713%_)))))
                            (_%g66716847%_
                             (list _%pre6555%_
                                   (reverse _%right6563%_)
                                   _%primary6553%_)))))))
                 (_%generate-kw-primary5334%_
                  (lambda (_%key5933%_
                           _%kwargs5935%_
                           _%args5936%_
                           _%body5937%_)
                    (letrec ((_%make-body5939%_
                              (lambda (_%kwargs6422%_ _%kwvals6424%_)
                                (if (pair? _%kwargs6422%_)
                                    (let* ((_%kwarg6426%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%kwargs6422%_)))
                                           (_%var6429%_ (cadr _%kwarg6426%_))
                                           (_%default6432%_
                                            (caddr _%kwarg6426%_))
                                           (_%kwval6435%_ (car _%kwvals6424%_))
                                           (_%rest-kwargs6438%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%kwargs6422%_)))
                                           (_%rest-kwvals6441%_
                                            (cdr _%kwvals6424%_))
                                           (_%g64466469%_
                                            (lambda (_%g64476465%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g64476465%_)))
                                           (_%g64456549%_
                                            (lambda (_%g64476473%_)
                                              (if (gx#stx-pair? _%g64476473%_)
                                                  (let ((_%e64526476%_
                                                         (gx#syntax-e
                                                          _%g64476473%_)))
                                                    (let ((_%hd64536480%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e64526476%_)))
                                                          (_%tl64546483%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e64526476%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl64546483%_)
                                                          (let ((_%e64556486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl64546483%_)))
                    (let ((_%hd64566490%_
                           (let () (declare (not safe)) (##car _%e64556486%_)))
                          (_%tl64576493%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e64556486%_))))
                      (if (gx#stx-pair? _%tl64576493%_)
                          (let ((_%e64586496%_ (gx#syntax-e _%tl64576493%_)))
                            (let ((_%hd64596500%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e64586496%_)))
                                  (_%tl64606503%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e64586496%_))))
                              (if (gx#stx-pair? _%tl64606503%_)
                                  (let ((_%e64616506%_
                                         (gx#syntax-e _%tl64606503%_)))
                                    (let ((_%hd64626510%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e64616506%_)))
                                          (_%tl64636513%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e64616506%_))))
                                      (if (gx#stx-null? _%tl64636513%_)
                                          ((lambda (_%g64486516%_
                                                    _%g64496518%_
                                                    _%g64506519%_
                                                    _%g64516520%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'let-values)
                                                   (cons (cons (cons (cons _%g64516520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'eq?)
                                                     (cons _%g64506519%_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'absent-value)
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%g64496518%_
                                                     (cons _%g64506519%_
                                                           '()))))
                                   '()))
                       '())
                 (cons _%g64486516%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd64626510%_
                                           _%hd64596500%_
                                           _%hd64566490%_
                                           _%hd64536480%_)
                                          (_%g64466469%_ _%g64476473%_))))
                                  (_%g64466469%_ _%g64476473%_))))
                          (_%g64466469%_ _%g64476473%_))))
                  (_%g64466469%_ _%g64476473%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g64466469%_
                                                   _%g64476473%_)))))
                                      (_%g64456549%_
                                       (list _%var6429%_
                                             _%kwval6435%_
                                             _%default6432%_
                                             (_%make-body5939%_
                                              _%rest-kwargs6438%_
                                              _%rest-kwvals6441%_))))
                                    (cons 'begin _%body5937%_))))
                             (_%make-main5941%_
                              (lambda ()
                                (let* ((_%g62326240%_
                                        (lambda (_%g62336236%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g62336236%_)))
                                       (_%g62316414%_
                                        (lambda (_%g62336244%_)
                                          ((lambda (_%g62346247%_)
                                             (let* ((_%g62596276%_
                                                     (lambda (_%g62606272%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g62606272%_)))
                                                    (_%g62586410%_
                                                     (lambda (_%g62606280%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g62606280%_)
                                                           (let ((_g20948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g62606280%_ '0)))
                     (begin
                       (let ((_g20949_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g20948_)
                                    (##values-length _g20948_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g20949_ 2)))
                             (error "Context expects 2 values" _g20949_)))
                       (let ((_%target62626283%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g20948_ 0)))
                             (_%tl62646286%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g20948_ 1))))
                         (if (gx#stx-null? _%tl62646286%_)
                             (letrec ((_%loop62656289%_
                                       (lambda (_%hd62636293%_
                                                _%kwval62696296%_)
                                         (if (gx#stx-pair? _%hd62636293%_)
                                             (let ((_%e62666298%_
                                                    (gx#syntax-e
                                                     _%hd62636293%_)))
                                               (let ((_%lp-hd62676302%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e62666298%_)))
                                                     (_%lp-tl62686305%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e62666298%_))))
                                                 (_%loop62656289%_
                                                  _%lp-tl62686305%_
                                                  (cons _%lp-hd62676302%_
                                                        _%kwval62696296%_))))
                                             (let ((_%kwval62706308%_
                                                    (reverse _%kwval62696296%_)))
                                               ((lambda (_%g62616311%_)
                                                  (let* ((_%g63286336%_
                                                          (lambda (_%g63296332%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g63296332%_)))
                                                         (_%g63276406%_
                                                          (lambda (_%g63296340%_)
                                                            ((lambda (_%g63306343%_)
                                                               (let* ((_%g63566364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g63576360%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g63576360%_)))
                              (_%g63556394%_
                               (lambda (_%g63576368%_)
                                 ((lambda (_%g63586371%_)
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (cons _%g62346247%_
                                                       (foldr (lambda (_%g63856388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g63866391%_)
                        (cons _%g63856388%_ _%g63866391%_))
                      _%g63306343%_
                      _%g62616311%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g63586371%_ '())))
                                     (gx#stx-source _%stx5320%_)))
                                  _%g63576368%_))))
                         (_%g63556394%_
                          (_%make-body5939%_
                           _%kwargs5935%_
                           (foldr (lambda (_%g63976400%_ _%g63986403%_)
                                    (cons _%g63976400%_ _%g63986403%_))
                                  '()
                                  _%g62616311%_)))))
                     _%g63296340%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g63276406%_
                                                     _%args5936%_)))
                                                _%kwval62706308%_))))))
                               (_%loop62656289%_ _%target62626283%_ '()))
                             (_%g62596276%_ _%g62606280%_)))))
                   (_%g62596276%_ _%g62606280%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g62586410%_
                                                (gx#gentemps
                                                 (map cadr _%kwargs5935%_)))))
                                           _%g62336244%_))))
                                  (_%g62316414%_
                                   (let ((_%$e6418%_ _%key5933%_))
                                     (if _%$e6418%_
                                         _%$e6418%_
                                         (gx#syntax-local-introduce
                                          '@@keywords)))))))
                             (_%make-dispatch5942%_
                              (lambda (_%main6042%_)
                                (let* ((_%g60456053%_
                                        (lambda (_%g60466049%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g60466049%_)))
                                       (_%g60446222%_
                                        (lambda (_%g60466057%_)
                                          ((lambda (_%g60476060%_)
                                             (let* ((_%g60726089%_
                                                     (lambda (_%g60736085%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g60736085%_)))
                                                    (_%g60716183%_
                                                     (lambda (_%g60736093%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g60736093%_)
                                                           (let ((_g20950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g60736093%_ '0)))
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
                             (error "Context expects 2 values" _g20951_)))
                       (let ((_%target60756096%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g20950_ 0)))
                             (_%tl60776099%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g20950_ 1))))
                         (if (gx#stx-null? _%tl60776099%_)
                             (letrec ((_%loop60786102%_
                                       (lambda (_%hd60766106%_
                                                _%get-kw60826109%_)
                                         (if (gx#stx-pair? _%hd60766106%_)
                                             (let ((_%e60796111%_
                                                    (gx#syntax-e
                                                     _%hd60766106%_)))
                                               (let ((_%lp-hd60806115%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e60796111%_)))
                                                     (_%lp-tl60816118%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e60796111%_))))
                                                 (_%loop60786102%_
                                                  _%lp-tl60816118%_
                                                  (cons _%lp-hd60806115%_
                                                        _%get-kw60826109%_))))
                                             (let ((_%get-kw60836121%_
                                                    (reverse _%get-kw60826109%_)))
                                               ((lambda (_%g60746124%_)
                                                  (let* ((_%g61416149%_
                                                          (lambda (_%g61426145%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g61426145%_)))
                                                         (_%g61406179%_
                                                          (lambda (_%g61426153%_)
                                                            ((lambda (_%g61436156%_)
                                                               (gx#stx-wrap-source
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'lambda)
                              (cons (cons _%g60476060%_
                                          (gx#datum->syntax '#f 'args))
                                    (cons (cons (gx#datum->syntax '#f 'apply)
                                                (cons _%g61436156%_
                                                      (cons _%g60476060%_
                                                            (foldr (lambda (_%g61706173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g61716176%_)
                             (cons _%g61706173%_ _%g61716176%_))
                           (cons (gx#datum->syntax '#f 'args) '())
                           _%g60746124%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (gx#stx-source _%stx5320%_)))
                     _%g61426153%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g61406179%_
                                                     _%main6042%_)))
                                                _%get-kw60836121%_))))))
                               (_%loop60786102%_ _%target60756096%_ '()))
                             (_%g60726089%_ _%g60736093%_)))))
                   (_%g60726089%_ _%g60736093%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g60716183%_
                                                (map (lambda (_%kwarg6187%_)
                                                       (let* ((_%g61906198%_
                                                               (lambda (_%g61916194%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g61916194%_)))
                      (_%g61896218%_
                       (lambda (_%g61916202%_)
                         ((lambda (_%g61926205%_)
                            (cons (gx#datum->syntax '#f 'symbolic-table-ref)
                                  (cons _%g60476060%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%g61926205%_ '()))
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'absent-value)
                                                    '())))))
                          _%g61916202%_))))
                 (_%g61896218%_ (car _%kwarg6187%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%kwargs5935%_))))
                                           _%g60466057%_))))
                                  (_%g60446222%_
                                   (let ((_%$e6226%_ _%key5933%_))
                                     (if _%$e6226%_
                                         _%$e6226%_
                                         (gx#syntax-local-introduce
                                          '@@keywords))))))))
                      (let* ((_%g59445952%_
                              (lambda (_%g59455948%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g59455948%_)))
                             (_%g59436038%_
                              (lambda (_%g59455956%_)
                                ((lambda (_%g59465959%_)
                                   (let* ((_%g59725980%_
                                           (lambda (_%g59735976%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g59735976%_)))
                                          (_%g59716034%_
                                           (lambda (_%g59735984%_)
                                             ((lambda (_%g59745987%_)
                                                (let* ((_%g60006008%_
                                                        (lambda (_%g60016004%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g60016004%_)))
                                                       (_%g59996030%_
                                                        (lambda (_%g60016012%_)
                                                          ((lambda (_%g60026015%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons (cons (cons (cons _%g59465959%_ '())
                                             (cons _%g60026015%_ '()))
                                       '())
                                 (cons _%g59745987%_ '()))))
                   _%g60016012%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g59996030%_
                                                   (_%make-main5941%_))))
                                              _%g59735984%_))))
                                     (_%g59716034%_
                                      (_%make-dispatch5942%_ _%g59465959%_))))
                                 _%g59455956%_))))
                        (_%g59436038%_ (gx#genident 'kw-lambda-main))))))
                 (_%generate-kw-dispatch5335%_
                  (lambda (_%primary5846%_ _%kwargs5848%_ _%strict?5849%_)
                    (let* ((_%g58515870%_
                            (lambda (_%g58525866%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g58525866%_)))
                           (_%g58505929%_
                            (lambda (_%g58525874%_)
                              (if (gx#stx-pair? _%g58525874%_)
                                  (let ((_%e58565877%_
                                         (gx#syntax-e _%g58525874%_)))
                                    (let ((_%hd58575881%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e58565877%_)))
                                          (_%tl58585884%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e58565877%_))))
                                      (if (gx#stx-pair? _%tl58585884%_)
                                          (let ((_%e58595887%_
                                                 (gx#syntax-e _%tl58585884%_)))
                                            (let ((_%hd58605891%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e58595887%_)))
                                                  (_%tl58615894%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e58595887%_))))
                                              (if (gx#stx-pair? _%tl58615894%_)
                                                  (let ((_%e58625897%_
                                                         (gx#syntax-e
                                                          _%tl58615894%_)))
                                                    (let ((_%hd58635901%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e58625897%_)))
                                                          (_%tl58645904%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e58625897%_))))
                                                      (if (gx#stx-null?
                                                           _%tl58645904%_)
                                                          ((lambda (_%g58535907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g58545909%_
                            _%g58555910%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%g58535907%_
                                 (cons (cons (gx#datum->syntax '#f 'apply)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'keyword-dispatch)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g58555910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%g58545909%_ (cons _%g58535907%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _%hd58635901%_
                   _%hd58605891%_
                   _%hd58575881%_)
                  (_%g58515870%_ _%g58525874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g58515870%_
                                                   _%g58525874%_))))
                                          (_%g58515870%_ _%g58525874%_))))
                                  (_%g58515870%_ _%g58525874%_)))))
                      (_%g58505929%_
                       (list (if _%strict?5849%_
                                 (_%generate-kw-table5336%_
                                  (map car _%kwargs5848%_))
                                 '#f)
                             _%primary5846%_
                             (gx#genident 'args))))))
                 (_%generate-kw-table5336%_
                  (lambda (_%kws5820%_)
                    (let _%rehash5823%_ ((_%pht5826%_
                                          (let ((__tmp20956
                                                 (length _%kws5820%_)))
                                            (declare (not safe))
                                            (##make-vector __tmp20956 '#f))))
                      (let _%lp5829%_ ((_%rest5832%_ _%kws5820%_))
                        (if (pair? _%rest5832%_)
                            (let* ((_%key5835%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest5832%_)))
                                   (_%rest5838%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest5832%_)))
                                   (_%pos5841%_
                                    (let ((__tmp20953
                                           (keyword-hash _%key5835%_))
                                          (__tmp20952
                                           (vector-length _%pht5826%_)))
                                      (declare (not safe))
                                      (##fxmodulo __tmp20953 __tmp20952))))
                              (if (vector-ref _%pht5826%_ _%pos5841%_)
                                  (if (let ((__tmp20954
                                             (vector-length _%pht5826%_)))
                                        (declare (not safe))
                                        (##fx< __tmp20954 '8192))
                                      (_%rehash5823%_
                                       (make-vector
                                        (quotient
                                         (let ((__tmp20955
                                                (vector-length _%pht5826%_)))
                                           (declare (not safe))
                                           (##fx* '3 __tmp20955))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _%kws5820%_))
                                  (begin
                                    (vector-set!
                                     _%pht5826%_
                                     _%pos5841%_
                                     _%key5835%_)
                                    (_%lp5829%_ _%rest5838%_))))
                            _%pht5826%_))))))
          (let* ((_%__stx1935319354%_ _%stx5320%_)
                 (_%g53405371%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1935319354%_))))
            (let ((_%__kont1935619357%_
                   (lambda (_%g53425801%_ _%g53435803%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%g53435803%_ _%g53425801%_))))
                  (_%__kont1935819359%_
                   (lambda (_%g53505575%_ _%g53515577%_)
                     (let ((_g20957_ (_%opt-lambda-split5326%_ _%g53515577%_)))
                       (begin
                         (let ((_g20958_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g20957_)
                                      (##values-length _g20957_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g20958_ 3)))
                               (error "Context expects 3 values" _g20958_)))
                         (let ((_%pre5590%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g20957_ 0)))
                               (_%opt5592%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g20957_ 1)))
                               (_%tail5593%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g20957_ 2))))
                           (let* ((_%g55955603%_
                                   (lambda (_%g55965599%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g55965599%_)))
                                  (_%g55945770%_
                                   (lambda (_%g55965607%_)
                                     ((lambda (_%g55975610%_)
                                        (let* ((_%g56235631%_
                                                (lambda (_%g56245627%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g56245627%_)))
                                               (_%g56225766%_
                                                (lambda (_%g56245635%_)
                                                  ((lambda (_%g56255638%_)
                                                     (let* ((_%g56515668%_
                                                             (lambda (_%g56525664%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g56525664%_)))
                                                            (_%g56505762%_
                                                             (lambda (_%g56525672%_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g56525672%_)
                           (let ((_g20959_
                                  (gx#syntax-split-splice _%g56525672%_ '0)))
                             (begin
                               (let ((_g20960_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g20959_)
                                            (##values-length _g20959_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g20960_ 2)))
                                     (error "Context expects 2 values"
                                            _g20960_)))
                               (let ((_%target56545675%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g20959_ 0)))
                                     (_%tl56565678%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g20959_ 1))))
                                 (if (gx#stx-null? _%tl56565678%_)
                                     (letrec ((_%loop56575681%_
                                               (lambda (_%hd56555685%_
                                                        _%clause56615688%_)
                                                 (if (gx#stx-pair?
                                                      _%hd56555685%_)
                                                     (let ((_%e56585690%_
                                                            (gx#syntax-e
                                                             _%hd56555685%_)))
                                                       (let ((_%lp-hd56595694%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e56585690%_)))
                     (_%lp-tl56605697%_
                      (let () (declare (not safe)) (##cdr _%e56585690%_))))
                 (_%loop56575681%_
                  _%lp-tl56605697%_
                  (cons _%lp-hd56595694%_ _%clause56615688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause56625700%_
                                                            (reverse _%clause56615688%_)))
                                                       ((lambda (_%g56535703%_)
                                                          (let* ((_%g57205728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g57215724%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g57215724%_)))
                         (_%g57195750%_
                          (lambda (_%g57215732%_)
                            ((lambda (_%g57225735%_)
                               (cons (gx#datum->syntax '#f 'let-values)
                                     (cons (cons (cons (cons _%g55975610%_ '())
                                                       (cons _%g56255638%_
                                                             '()))
                                                 '())
                                           (cons _%g57225735%_ '()))))
                             _%g57215732%_))))
                    (_%g57195750%_
                     (gx#stx-wrap-source
                      (cons (gx#datum->syntax '#f 'case-lambda)
                            (foldr (lambda (_%g57535756%_ _%g57545759%_)
                                     (cons _%g57535756%_ _%g57545759%_))
                                   '()
                                   _%g56535703%_))
                      (gx#stx-source _%stx5320%_)))))
                _%clause56625700%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop56575681%_
                                        _%target56545675%_
                                        '()))
                                     (_%g56515668%_ _%g56525672%_)))))
                           (_%g56515668%_ _%g56525672%_)))))
               (_%g56505762%_
                (_%generate-opt-dispatch5331%_
                 _%g55975610%_
                 _%pre5590%_
                 _%opt5592%_
                 _%tail5593%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g56245635%_))))
                                          (_%g56225766%_
                                           (gx#stx-wrap-source
                                            (_%generate-opt-primary5330%_
                                             _%pre5590%_
                                             _%opt5592%_
                                             _%tail5593%_
                                             _%g53505575%_)
                                            (gx#stx-source _%stx5320%_)))))
                                      _%g55965607%_))))
                             (_%g55945770%_ (gx#genident 'opt-lambda))))))))
                  (_%__kont1936019361%_
                   (lambda (_%g53585398%_ _%g53595400%_)
                     (let* ((_%g54165423%_
                             (lambda (_%g54175419%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g54175419%_)))
                            (_%g54155544%_
                             (lambda (_%g54175427%_)
                               ((lambda ()
                                  (let ((_g20961_
                                         (_%kw-lambda-split5328%_
                                          _%g53595400%_)))
                                    (begin
                                      (let ((_g20962_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g20961_)
                                                   (##values-length _g20961_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g20962_ 3)))
                                            (error "Context expects 3 values"
                                                   _g20962_)))
                                      (let ((_%key5436%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g20961_ 0)))
                                            (_%kwargs5438%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g20961_ 1)))
                                            (_%args5439%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g20961_ 2))))
                                        (let* ((_%g54415449%_
                                                (lambda (_%g54425445%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g54425445%_)))
                                               (_%g54405540%_
                                                (lambda (_%g54425453%_)
                                                  ((lambda (_%g54435456%_)
                                                     (let* ((_%g54745482%_
                                                             (lambda (_%g54755478%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g54755478%_)))
                                                            (_%g54735536%_
                                                             (lambda (_%g54755486%_)
                                                               ((lambda (_%g54765489%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g55025510%_
                                  (lambda (_%g55035506%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g55035506%_)))
                                 (_%g55015532%_
                                  (lambda (_%g55035514%_)
                                    ((lambda (_%g55045517%_)
                                       (cons (gx#datum->syntax '#f 'let-values)
                                             (cons (cons (cons (cons _%g54435456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _%g54765489%_ '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%g55045517%_ '()))))
                                     _%g55035514%_))))
                            (_%g55015532%_
                             (gx#stx-wrap-source
                              (_%generate-kw-dispatch5335%_
                               _%g54435456%_
                               _%kwargs5438%_
                               (not _%key5436%_))
                              (gx#stx-source _%stx5320%_)))))
                        _%g54755486%_))))
               (_%g54735536%_
                (gx#stx-wrap-source
                 (_%generate-kw-primary5334%_
                  _%key5436%_
                  _%kwargs5438%_
                  _%args5439%_
                  _%g53585398%_)
                 (gx#stx-source _%stx5320%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g54425453%_))))
                                          (_%g54405540%_
                                           (gx#genident 'kw-lambda)))))))))))
                       (_%g54155544%_
                        (_%check-duplicate-bindings5329%_ _%g53595400%_))))))
              (let* ((_%__match1939819399%_
                      (lambda (_%e53605378%_
                               _%hd53615382%_
                               _%tl53625385%_
                               _%e53635388%_
                               _%hd53645392%_
                               _%tl53655395%_)
                        (let ((_%g53585398%_ _%tl53655395%_)
                              (_%g53595400%_ _%hd53645392%_))
                          (if (_%kw-lambda?5327%_ _%g53595400%_)
                              (_%__kont1936019361%_
                               _%g53585398%_
                               _%g53595400%_)
                              (let () (declare (not safe)) (_%g53405371%_))))))
                     (_%__match1938619387%_
                      (lambda (_%e53525555%_
                               _%hd53535559%_
                               _%tl53545562%_
                               _%e53555565%_
                               _%hd53565569%_
                               _%tl53575572%_)
                        (let ((_%g53505575%_ _%tl53575572%_)
                              (_%g53515577%_ _%hd53565569%_))
                          (if (_%opt-lambda?5325%_ _%g53515577%_)
                              (_%__kont1935819359%_
                               _%g53505575%_
                               _%g53515577%_)
                              (_%__match1939819399%_
                               _%e53525555%_
                               _%hd53535559%_
                               _%tl53545562%_
                               _%e53555565%_
                               _%hd53565569%_
                               _%tl53575572%_)))))
                     (_%__match1937419375%_
                      (lambda (_%e53445781%_
                               _%hd53455785%_
                               _%tl53465788%_
                               _%e53475791%_
                               _%hd53485795%_
                               _%tl53495798%_)
                        (let ((_%g53425801%_ _%tl53495798%_)
                              (_%g53435803%_ _%hd53485795%_))
                          (if (_%simple-lambda?5323%_ _%g53435803%_)
                              (_%__kont1935619357%_
                               _%g53425801%_
                               _%g53435803%_)
                              (_%__match1938619387%_
                               _%e53445781%_
                               _%hd53455785%_
                               _%tl53465788%_
                               _%e53475791%_
                               _%hd53485795%_
                               _%tl53495798%_))))))
                (if (gx#stx-pair? _%__stx1935319354%_)
                    (let ((_%e53445781%_ (gx#syntax-e _%__stx1935319354%_)))
                      (let ((_%tl53465788%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e53445781%_)))
                            (_%hd53455785%_
                             (let ()
                               (declare (not safe))
                               (##car _%e53445781%_))))
                        (if (gx#stx-pair? _%tl53465788%_)
                            (let ((_%e53475791%_ (gx#syntax-e _%tl53465788%_)))
                              (let ((_%tl53495798%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e53475791%_)))
                                    (_%hd53485795%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e53475791%_))))
                                (_%__match1937419375%_
                                 _%e53445781%_
                                 _%hd53455785%_
                                 _%tl53465788%_
                                 _%e53475791%_
                                 _%hd53485795%_
                                 _%tl53495798%_)))
                            (let () (declare (not safe)) (_%g53405371%_)))))
                    (let () (declare (not safe)) (_%g53405371%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def|
      (lambda (_%$stx8723%_)
        (let* ((_%__stx1940119402%_ _%$stx8723%_)
               (_%g87298793%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1940119402%_))))
          (let ((_%__kont1940419405%_
                 (lambda (_%g87319019%_
                          _%g87329021%_
                          _%g87339022%_
                          _%g87349023%_)
                   (cons (gx#datum->syntax '#f 'def)
                         (cons (cons _%g87349023%_ _%g87339022%_)
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%g87329021%_
                                                 (foldr (lambda (_%g90459048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g90469051%_)
                  (cons _%g90459048%_ _%g90469051%_))
                '()
                _%g87319019%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1940819409%_
                 (lambda (_%g87568913%_ _%g87578915%_ _%g87588916%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g87588916%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%g87578915%_
                                                 (foldr (lambda (_%g89358938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g89368941%_)
                  (cons _%g89358938%_ _%g89368941%_))
                '()
                _%g87568913%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1941219413%_
                 (lambda (_%g87778830%_ _%g87788832%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g87788832%_ '())
                               (cons _%g87778830%_ '()))))))
            (let* ((_%__match1949219493%_
                    (lambda (_%e87798800%_
                             _%hd87808804%_
                             _%tl87818807%_
                             _%e87828810%_
                             _%hd87838814%_
                             _%tl87848817%_
                             _%e87858820%_
                             _%hd87868824%_
                             _%tl87878827%_)
                      (let ((_%g87778830%_ _%hd87868824%_)
                            (_%g87788832%_ _%hd87838814%_))
                        (if (gx#identifier? _%g87788832%_)
                            (_%__kont1941219413%_ _%g87778830%_ _%g87788832%_)
                            (let () (declare (not safe)) (_%g87298793%_))))))
                   (_%__match1948419485%_
                    (lambda (_%e87798800%_
                             _%hd87808804%_
                             _%tl87818807%_
                             _%e87828810%_
                             _%hd87838814%_
                             _%tl87848817%_)
                      (if (gx#stx-pair? _%tl87848817%_)
                          (let ((_%e87858820%_ (gx#syntax-e _%tl87848817%_)))
                            (let ((_%tl87878827%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e87858820%_)))
                                  (_%hd87868824%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e87858820%_))))
                              (if (gx#stx-null? _%tl87878827%_)
                                  (_%__match1949219493%_
                                   _%e87798800%_
                                   _%hd87808804%_
                                   _%tl87818807%_
                                   _%e87828810%_
                                   _%hd87838814%_
                                   _%tl87848817%_
                                   _%e87858820%_
                                   _%hd87868824%_
                                   _%tl87878827%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g87298793%_)))))
                          (let () (declare (not safe)) (_%g87298793%_)))))
                   (_%__match1947219473%_
                    (lambda (_%e87598855%_
                             _%hd87608859%_
                             _%tl87618862%_
                             _%e87628865%_
                             _%hd87638869%_
                             _%tl87648872%_
                             _%e87658875%_
                             _%hd87668879%_
                             _%tl87678882%_
                             _%__splice1941019411%_
                             _%target87688885%_
                             _%tl87708888%_)
                      (letrec ((_%loop87718891%_
                                (lambda (_%hd87698895%_ _%body87758898%_)
                                  (if (gx#stx-pair? _%hd87698895%_)
                                      (let ((_%e87728900%_
                                             (gx#syntax-e _%hd87698895%_)))
                                        (let ((_%lp-tl87748907%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e87728900%_)))
                                              (_%lp-hd87738904%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e87728900%_))))
                                          (_%loop87718891%_
                                           _%lp-tl87748907%_
                                           (cons _%lp-hd87738904%_
                                                 _%body87758898%_))))
                                      (let ((_%body87768910%_
                                             (reverse _%body87758898%_)))
                                        (let ((_%g87568913%_ _%body87768910%_)
                                              (_%g87578915%_ _%tl87678882%_)
                                              (_%g87588916%_ _%hd87668879%_))
                                          (if (gx#identifier? _%g87588916%_)
                                              (_%__kont1940819409%_
                                               _%g87568913%_
                                               _%g87578915%_
                                               _%g87588916%_)
                                              (_%__match1948419485%_
                                               _%e87598855%_
                                               _%hd87608859%_
                                               _%tl87618862%_
                                               _%e87628865%_
                                               _%hd87638869%_
                                               _%tl87648872%_))))))))
                        (_%loop87718891%_ _%target87688885%_ '()))))
                   (_%__match1944619447%_
                    (lambda (_%e87358951%_
                             _%hd87368955%_
                             _%tl87378958%_
                             _%e87388961%_
                             _%hd87398965%_
                             _%tl87408968%_
                             _%e87418971%_
                             _%hd87428975%_
                             _%tl87438978%_
                             _%e87448981%_
                             _%hd87458985%_
                             _%tl87468988%_
                             _%__splice1940619407%_
                             _%target87478991%_
                             _%tl87498994%_)
                      (letrec ((_%loop87508997%_
                                (lambda (_%hd87489001%_ _%body87549004%_)
                                  (if (gx#stx-pair? _%hd87489001%_)
                                      (let ((_%e87519006%_
                                             (gx#syntax-e _%hd87489001%_)))
                                        (let ((_%lp-tl87539013%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e87519006%_)))
                                              (_%lp-hd87529010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e87519006%_))))
                                          (_%loop87508997%_
                                           _%lp-tl87539013%_
                                           (cons _%lp-hd87529010%_
                                                 _%body87549004%_))))
                                      (let ((_%body87559016%_
                                             (reverse _%body87549004%_)))
                                        (_%__kont1940419405%_
                                         _%body87559016%_
                                         _%tl87438978%_
                                         _%tl87468988%_
                                         _%hd87458985%_))))))
                        (_%loop87508997%_ _%target87478991%_ '())))))
              (if (gx#stx-pair? _%__stx1940119402%_)
                  (let ((_%e87358951%_ (gx#syntax-e _%__stx1940119402%_)))
                    (let ((_%tl87378958%_
                           (let () (declare (not safe)) (##cdr _%e87358951%_)))
                          (_%hd87368955%_
                           (let ()
                             (declare (not safe))
                             (##car _%e87358951%_))))
                      (if (gx#stx-pair? _%tl87378958%_)
                          (let ((_%e87388961%_ (gx#syntax-e _%tl87378958%_)))
                            (let ((_%tl87408968%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e87388961%_)))
                                  (_%hd87398965%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e87388961%_))))
                              (if (gx#stx-pair? _%hd87398965%_)
                                  (let ((_%e87418971%_
                                         (gx#syntax-e _%hd87398965%_)))
                                    (let ((_%tl87438978%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e87418971%_)))
                                          (_%hd87428975%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e87418971%_))))
                                      (if (gx#stx-pair? _%hd87428975%_)
                                          (let ((_%e87448981%_
                                                 (gx#syntax-e _%hd87428975%_)))
                                            (let ((_%tl87468988%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e87448981%_)))
                                                  (_%hd87458985%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e87448981%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl87408968%_)
                                                  (let ((_%__splice1940619407%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl87408968%_
                                                          '0)))
                                                    (let ((_%tl87498994%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1940619407%_
                                                              '1)))
                                                          (_%target87478991%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1940619407%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl87498994%_)
                                                          (_%__match1944619447%_
                                                           _%e87358951%_
                                                           _%hd87368955%_
                                                           _%tl87378958%_
                                                           _%e87388961%_
                                                           _%hd87398965%_
                                                           _%tl87408968%_
                                                           _%e87418971%_
                                                           _%hd87428975%_
                                                           _%tl87438978%_
                                                           _%e87448981%_
                                                           _%hd87458985%_
                                                           _%tl87468988%_
                                                           _%__splice1940619407%_
                                                           _%target87478991%_
                                                           _%tl87498994%_)
                                                          (if (gx#stx-pair?
                                                               _%tl87408968%_)
                                                              (let ((_%e87858820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl87408968%_)))
                        (let ((_%tl87878827%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e87858820%_)))
                              (_%hd87868824%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e87858820%_))))
                          (if (gx#stx-null? _%tl87878827%_)
                              (_%__match1949219493%_
                               _%e87358951%_
                               _%hd87368955%_
                               _%tl87378958%_
                               _%e87388961%_
                               _%hd87398965%_
                               _%tl87408968%_
                               _%e87858820%_
                               _%hd87868824%_
                               _%tl87878827%_)
                              (let () (declare (not safe)) (_%g87298793%_)))))
                      (let () (declare (not safe)) (_%g87298793%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl87408968%_)
                                                      (let ((_%e87858820%_
                                                             (gx#syntax-e
                                                              _%tl87408968%_)))
                                                        (let ((_%tl87878827%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e87858820%_)))
                      (_%hd87868824%_
                       (let () (declare (not safe)) (##car _%e87858820%_))))
                  (if (gx#stx-null? _%tl87878827%_)
                      (_%__match1949219493%_
                       _%e87358951%_
                       _%hd87368955%_
                       _%tl87378958%_
                       _%e87388961%_
                       _%hd87398965%_
                       _%tl87408968%_
                       _%e87858820%_
                       _%hd87868824%_
                       _%tl87878827%_)
                      (let () (declare (not safe)) (_%g87298793%_)))))
              (let () (declare (not safe)) (_%g87298793%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl87408968%_)
                                              (let ((_%__splice1941019411%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl87408968%_
                                                      '0)))
                                                (let ((_%tl87708888%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1941019411%_
                                                          '1)))
                                                      (_%target87688885%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1941019411%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl87708888%_)
                                                      (_%__match1947219473%_
                                                       _%e87358951%_
                                                       _%hd87368955%_
                                                       _%tl87378958%_
                                                       _%e87388961%_
                                                       _%hd87398965%_
                                                       _%tl87408968%_
                                                       _%e87418971%_
                                                       _%hd87428975%_
                                                       _%tl87438978%_
                                                       _%__splice1941019411%_
                                                       _%target87688885%_
                                                       _%tl87708888%_)
                                                      (if (gx#stx-pair?
                                                           _%tl87408968%_)
                                                          (let ((_%e87858820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl87408968%_)))
                    (let ((_%tl87878827%_
                           (let () (declare (not safe)) (##cdr _%e87858820%_)))
                          (_%hd87868824%_
                           (let ()
                             (declare (not safe))
                             (##car _%e87858820%_))))
                      (if (gx#stx-null? _%tl87878827%_)
                          (_%__match1949219493%_
                           _%e87358951%_
                           _%hd87368955%_
                           _%tl87378958%_
                           _%e87388961%_
                           _%hd87398965%_
                           _%tl87408968%_
                           _%e87858820%_
                           _%hd87868824%_
                           _%tl87878827%_)
                          (let () (declare (not safe)) (_%g87298793%_)))))
                  (let () (declare (not safe)) (_%g87298793%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _%tl87408968%_)
                                                  (let ((_%e87858820%_
                                                         (gx#syntax-e
                                                          _%tl87408968%_)))
                                                    (let ((_%tl87878827%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e87858820%_)))
                                                          (_%hd87868824%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e87858820%_))))
                                                      (if (gx#stx-null?
                                                           _%tl87878827%_)
                                                          (_%__match1949219493%_
                                                           _%e87358951%_
                                                           _%hd87368955%_
                                                           _%tl87378958%_
                                                           _%e87388961%_
                                                           _%hd87398965%_
                                                           _%tl87408968%_
                                                           _%e87858820%_
                                                           _%hd87868824%_
                                                           _%tl87878827%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g87298793%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g87298793%_)))))))
                                  (if (gx#stx-pair? _%tl87408968%_)
                                      (let ((_%e87858820%_
                                             (gx#syntax-e _%tl87408968%_)))
                                        (let ((_%tl87878827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e87858820%_)))
                                              (_%hd87868824%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e87858820%_))))
                                          (if (gx#stx-null? _%tl87878827%_)
                                              (_%__match1949219493%_
                                               _%e87358951%_
                                               _%hd87368955%_
                                               _%tl87378958%_
                                               _%e87388961%_
                                               _%hd87398965%_
                                               _%tl87408968%_
                                               _%e87858820%_
                                               _%hd87868824%_
                                               _%tl87878827%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g87298793%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g87298793%_))))))
                          (let () (declare (not safe)) (_%g87298793%_)))))
                  (let () (declare (not safe)) (_%g87298793%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def*|
      (lambda (_%$stx9060%_)
        (let* ((_%g90649088%_
                (lambda (_%g90659084%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g90659084%_)))
               (_%g90639171%_
                (lambda (_%g90659092%_)
                  (if (gx#stx-pair? _%g90659092%_)
                      (let ((_%e90689095%_ (gx#syntax-e _%g90659092%_)))
                        (let ((_%hd90699099%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e90689095%_)))
                              (_%tl90709102%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e90689095%_))))
                          (if (gx#stx-pair? _%tl90709102%_)
                              (let ((_%e90719105%_
                                     (gx#syntax-e _%tl90709102%_)))
                                (let ((_%hd90729109%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e90719105%_)))
                                      (_%tl90739112%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e90719105%_))))
                                  (if (gx#stx-pair/null? _%tl90739112%_)
                                      (let ((_g20963_
                                             (gx#syntax-split-splice
                                              _%tl90739112%_
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
                                          (let ((_%target90749115%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20963_ 0)))
                                                (_%tl90769118%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20963_ 1))))
                                            (if (gx#stx-null? _%tl90769118%_)
                                                (letrec ((_%loop90779121%_
                                                          (lambda (_%hd90759125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clauses90819128%_)
                    (if (gx#stx-pair? _%hd90759125%_)
                        (let ((_%e90789130%_ (gx#syntax-e _%hd90759125%_)))
                          (let ((_%lp-hd90799134%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e90789130%_)))
                                (_%lp-tl90809137%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e90789130%_))))
                            (_%loop90779121%_
                             _%lp-tl90809137%_
                             (cons _%lp-hd90799134%_ _%clauses90819128%_))))
                        (let ((_%clauses90829140%_
                               (reverse _%clauses90819128%_)))
                          ((lambda (_%g90669143%_ _%g90679145%_)
                             (if (gx#identifier? _%g90679145%_)
                                 (cons (gx#datum->syntax '#f 'define-values)
                                       (cons (cons _%g90679145%_ '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'case-lambda)
                                                         (foldr (lambda (_%g91629165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g91639168%_)
                          (cons _%g91629165%_ _%g91639168%_))
                        '()
                        _%g90669143%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 (_%g90649088%_ _%g90659092%_)))
                           _%clauses90829140%_
                           _%hd90729109%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop90779121%_
                                                   _%target90749115%_
                                                   '()))
                                                (_%g90649088%_
                                                 _%g90659092%_)))))
                                      (_%g90649088%_ _%g90659092%_))))
                              (_%g90649088%_ _%g90659092%_))))
                      (_%g90649088%_ _%g90659092%_)))))
          (_%g90639171%_ _%$stx9060%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#defvalues|
      (lambda (_%$stx9176%_)
        (let* ((_%g91809198%_
                (lambda (_%g91819194%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g91819194%_)))
               (_%g91799253%_
                (lambda (_%g91819202%_)
                  (if (gx#stx-pair? _%g91819202%_)
                      (let ((_%e91849205%_ (gx#syntax-e _%g91819202%_)))
                        (let ((_%hd91859209%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e91849205%_)))
                              (_%tl91869212%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e91849205%_))))
                          (if (gx#stx-pair? _%tl91869212%_)
                              (let ((_%e91879215%_
                                     (gx#syntax-e _%tl91869212%_)))
                                (let ((_%hd91889219%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e91879215%_)))
                                      (_%tl91899222%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e91879215%_))))
                                  (if (gx#stx-pair? _%tl91899222%_)
                                      (let ((_%e91909225%_
                                             (gx#syntax-e _%tl91899222%_)))
                                        (let ((_%hd91919229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e91909225%_)))
                                              (_%tl91929232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e91909225%_))))
                                          (if (gx#stx-null? _%tl91929232%_)
                                              ((lambda (_%g91829235%_
                                                        _%g91839237%_)
                                                 (if (gx#identifier-list?
                                                      _%g91839237%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons _%g91839237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g91829235%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g91809198%_
                                                      _%g91819202%_)))
                                               _%hd91919229%_
                                               _%hd91889219%_)
                                              (_%g91809198%_ _%g91819202%_))))
                                      (_%g91809198%_ _%g91819202%_))))
                              (_%g91809198%_ _%g91819202%_))))
                      (_%g91809198%_ _%g91819202%_)))))
          (_%g91799253%_ _%$stx9176%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#case|
      (lambda (_%$stx9257%_)
        (let* ((_%g92619285%_
                (lambda (_%g92629281%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g92629281%_)))
               (_%g92609368%_
                (lambda (_%g92629289%_)
                  (if (gx#stx-pair? _%g92629289%_)
                      (let ((_%e92659292%_ (gx#syntax-e _%g92629289%_)))
                        (let ((_%hd92669296%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e92659292%_)))
                              (_%tl92679299%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e92659292%_))))
                          (if (gx#stx-pair? _%tl92679299%_)
                              (let ((_%e92689302%_
                                     (gx#syntax-e _%tl92679299%_)))
                                (let ((_%hd92699306%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e92689302%_)))
                                      (_%tl92709309%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e92689302%_))))
                                  (if (gx#stx-pair/null? _%tl92709309%_)
                                      (let ((_g20965_
                                             (gx#syntax-split-splice
                                              _%tl92709309%_
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
                                          (let ((_%target92719312%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20965_ 0)))
                                                (_%tl92739315%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20965_ 1))))
                                            (if (gx#stx-null? _%tl92739315%_)
                                                (letrec ((_%loop92749318%_
                                                          (lambda (_%hd92729322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause92789325%_)
                    (if (gx#stx-pair? _%hd92729322%_)
                        (let ((_%e92759327%_ (gx#syntax-e _%hd92729322%_)))
                          (let ((_%lp-hd92769331%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e92759327%_)))
                                (_%lp-tl92779334%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e92759327%_))))
                            (_%loop92749318%_
                             _%lp-tl92779334%_
                             (cons _%lp-hd92769331%_ _%clause92789325%_))))
                        (let ((_%clause92799337%_
                               (reverse _%clause92789325%_)))
                          ((lambda (_%g92639340%_ _%g92649342%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (gx#datum->syntax '#f '$e)
                                               (cons _%g92649342%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '~case)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$e)
                                                           (foldr (lambda (_%g93599362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g93609365%_)
                            (cons _%g93599362%_ _%g93609365%_))
                          '()
                          _%g92639340%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%clause92799337%_
                           _%hd92699306%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop92749318%_
                                                   _%target92719312%_
                                                   '()))
                                                (_%g92619285%_
                                                 _%g92629289%_)))))
                                      (_%g92619285%_ _%g92629289%_))))
                              (_%g92619285%_ _%g92629289%_))))
                      (_%g92619285%_ _%g92629289%_)))))
          (_%g92609368%_ _%$stx9257%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case|
      (lambda (_%stx9373%_)
        (letrec ((_%parse-clauses9376%_
                  (lambda (_%e11833%_ _%clauses11835%_)
                    (let _%lp11837%_ ((_%rest11840%_ _%clauses11835%_)
                                      (_%datums11842%_ '())
                                      (_%dispatch11843%_ '())
                                      (_%default11844%_ '#f))
                      (let* ((_%__stx1959119592%_ _%rest11840%_)
                             (_%g1184711859%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1959119592%_))))
                        (let ((_%__kont1959419595%_
                               (lambda (_%g1184911891%_ _%g1185011893%_)
                                 (let* ((_%__stx1949519496%_ _%g1185011893%_)
                                        (_%g1191111984%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1949519496%_))))
                                   (let ((_%__kont1949819499%_
                                          (lambda (_%g1191312341%_)
                                            (if (gx#stx-null? _%g1184911891%_)
                                                (let* ((_%g1235612364%_
                                                        (lambda (_%g1235712360%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1235712360%_)))
                                                       (_%g1235512383%_
                                                        (lambda (_%g1235712368%_)
                                                          ((lambda (_%g1235812371%_)
                                                             (_%lp11837%_
                                                              '()
                                                              _%datums11842%_
                                                              _%dispatch11843%_
                                                              (cons _%g1191312341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g1235812371%_ '()))))
                   _%g1235712368%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1235512383%_ _%e11833%_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9373%_
                                                 _%g1185011893%_))))
                                         (_%__kont1950019501%_
                                          (lambda (_%g1192312281%_)
                                            (if (gx#stx-null? _%g1184911891%_)
                                                (_%lp11837%_
                                                 '()
                                                 _%datums11842%_
                                                 _%dispatch11843%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1229512298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1229612301%_)
                        (cons _%g1229512298%_ _%g1229612301%_))
                      '()
                      _%g1192312281%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9373%_
                                                 _%g1185011893%_))))
                                         (_%__kont1950419505%_
                                          (lambda (_%g1193612168%_
                                                   _%g1193712170%_)
                                            (if (null? (foldr (lambda (_%g1218812191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1218912194%_)
                        (cons _%g1218812191%_ _%g1218912194%_))
                      '()
                      _%g1193712170%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp11837%_
                                                 _%g1184911891%_
                                                 _%datums11842%_
                                                 _%dispatch11843%_
                                                 _%default11844%_)
                                                (let* ((_%g1219712205%_
                                                        (lambda (_%g1219812201%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1219812201%_)))
                                                       (_%g1219612232%_
                                                        (lambda (_%g1219812209%_)
                                                          ((lambda (_%g1219912212%_)
                                                             (_%lp11837%_
                                                              _%g1184911891%_
                                                              (cons (map gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (foldr (lambda (_%g1222312226%_
                                                 _%g1222412229%_)
                                          (cons _%g1222312226%_
                                                _%g1222412229%_))
                                        '()
                                        _%g1193712170%_))
                            _%datums11842%_)
                      (cons (cons _%g1193612168%_ (cons _%g1219912212%_ '()))
                            _%dispatch11843%_)
                      _%default11844%_))
                   _%g1219812209%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1219612232%_
                                                   _%e11833%_)))))
                                         (_%__kont1950819509%_
                                          (lambda (_%g1195612057%_
                                                   _%g1195712059%_)
                                            (if (null? (foldr (lambda (_%g1207812081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1207912084%_)
                        (cons _%g1207812081%_ _%g1207912084%_))
                      '()
                      _%g1195712059%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp11837%_
                                                 _%g1184911891%_
                                                 _%datums11842%_
                                                 _%dispatch11843%_
                                                 _%default11844%_)
                                                (_%lp11837%_
                                                 _%g1184911891%_
                                                 (cons (map gx#stx-e
                                                            (foldr (lambda (_%g1208612089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1208712092%_)
                             (cons _%g1208612089%_ _%g1208712092%_))
                           '()
                           _%g1195712059%_))
               _%datums11842%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (foldr (lambda (_%g1209412097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1209512100%_)
                              (cons _%g1209412097%_ _%g1209512100%_))
                            '()
                            _%g1195612057%_))
               _%dispatch11843%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%default11844%_)))))
                                     (let* ((_%__match1958819589%_
                                             (lambda (_%e1195811991%_
                                                      _%hd1195911995%_
                                                      _%tl1196011998%_
                                                      _%__splice1951019511%_
                                                      _%target1196112001%_
                                                      _%tl1196312004%_)
                                               (letrec ((_%loop1196412007%_
                                                         (lambda (_%hd1196212011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1196812014%_)
                   (if (gx#stx-pair? _%hd1196212011%_)
                       (let ((_%e1196512016%_ (gx#syntax-e _%hd1196212011%_)))
                         (let ((_%lp-tl1196712023%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1196512016%_)))
                               (_%lp-hd1196612020%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1196512016%_))))
                           (_%loop1196412007%_
                            _%lp-tl1196712023%_
                            (cons _%lp-hd1196612020%_ _%datum1196812014%_))))
                       (let ((_%datum1196912026%_
                              (reverse _%datum1196812014%_)))
                         (if (gx#stx-pair/null? _%tl1196011998%_)
                             (let ((_%__splice1951219513%_
                                    (gx#syntax-split-splice->vector
                                     _%tl1196011998%_
                                     '0)))
                               (let ((_%tl1197212032%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1951219513%_
                                         '1)))
                                     (_%target1197012029%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1951219513%_
                                         '0))))
                                 (if (gx#stx-null? _%tl1197212032%_)
                                     (letrec ((_%loop1197312035%_
                                               (lambda (_%hd1197112039%_
                                                        _%body1197712042%_)
                                                 (if (gx#stx-pair?
                                                      _%hd1197112039%_)
                                                     (let ((_%e1197412044%_
                                                            (gx#syntax-e
                                                             _%hd1197112039%_)))
                                                       (let ((_%lp-tl1197612051%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e1197412044%_)))
                     (_%lp-hd1197512048%_
                      (let () (declare (not safe)) (##car _%e1197412044%_))))
                 (_%loop1197312035%_
                  _%lp-tl1197612051%_
                  (cons _%lp-hd1197512048%_ _%body1197712042%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%body1197812054%_
                                                            (reverse _%body1197712042%_)))
                                                       (_%__kont1950819509%_
                                                        _%body1197812054%_
                                                        _%datum1196912026%_))))))
                                       (_%loop1197312035%_
                                        _%target1197012029%_
                                        '()))
                                     (let ()
                                       (declare (not safe))
                                       (_%g1191111984%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g1191111984%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1196412007%_
                                                  _%target1196112001%_
                                                  '()))))
                                            (_%__match1957419575%_
                                             (lambda (_%e1193812110%_
                                                      _%hd1193912114%_
                                                      _%tl1194012117%_
                                                      _%__splice1950619507%_
                                                      _%target1194112120%_
                                                      _%tl1194312123%_)
                                               (letrec ((_%loop1194412126%_
                                                         (lambda (_%hd1194212130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1194812133%_)
                   (if (gx#stx-pair? _%hd1194212130%_)
                       (let ((_%e1194512135%_ (gx#syntax-e _%hd1194212130%_)))
                         (let ((_%lp-tl1194712142%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1194512135%_)))
                               (_%lp-hd1194612139%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1194512135%_))))
                           (_%loop1194412126%_
                            _%lp-tl1194712142%_
                            (cons _%lp-hd1194612139%_ _%datum1194812133%_))))
                       (let ((_%datum1194912145%_
                              (reverse _%datum1194812133%_)))
                         (if (gx#stx-pair? _%tl1194012117%_)
                             (let ((_%e1195012148%_
                                    (gx#syntax-e _%tl1194012117%_)))
                               (let ((_%tl1195212155%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1195012148%_)))
                                     (_%hd1195112152%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1195012148%_))))
                                 (if (gx#identifier? _%hd1195112152%_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core/sugar~Sugar-2[1]#_g20967_|
                                          _%hd1195112152%_)
                                         (if (gx#stx-pair? _%tl1195212155%_)
                                             (let ((_%e1195312158%_
                                                    (gx#syntax-e
                                                     _%tl1195212155%_)))
                                               (let ((_%tl1195512165%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1195312158%_)))
                                                     (_%hd1195412162%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1195312158%_))))
                                                 (if (gx#stx-null?
                                                      _%tl1195512165%_)
                                                     (_%__kont1950419505%_
                                                      _%hd1195412162%_
                                                      _%datum1194912145%_)
                                                     (_%__match1958819589%_
                                                      _%e1193812110%_
                                                      _%hd1193912114%_
                                                      _%tl1194012117%_
                                                      _%__splice1950619507%_
                                                      _%target1194112120%_
                                                      _%tl1194312123%_))))
                                             (_%__match1958819589%_
                                              _%e1193812110%_
                                              _%hd1193912114%_
                                              _%tl1194012117%_
                                              _%__splice1950619507%_
                                              _%target1194112120%_
                                              _%tl1194312123%_))
                                         (_%__match1958819589%_
                                          _%e1193812110%_
                                          _%hd1193912114%_
                                          _%tl1194012117%_
                                          _%__splice1950619507%_
                                          _%target1194112120%_
                                          _%tl1194312123%_))
                                     (_%__match1958819589%_
                                      _%e1193812110%_
                                      _%hd1193912114%_
                                      _%tl1194012117%_
                                      _%__splice1950619507%_
                                      _%target1194112120%_
                                      _%tl1194312123%_))))
                             (_%__match1958819589%_
                              _%e1193812110%_
                              _%hd1193912114%_
                              _%tl1194012117%_
                              _%__splice1950619507%_
                              _%target1194112120%_
                              _%tl1194312123%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1194412126%_
                                                  _%target1194112120%_
                                                  '()))))
                                            (_%__match1956019561%_
                                             (lambda (_%e1192412243%_
                                                      _%hd1192512247%_
                                                      _%tl1192612250%_
                                                      _%__splice1950219503%_
                                                      _%target1192712253%_
                                                      _%tl1192912256%_)
                                               (letrec ((_%loop1193012259%_
                                                         (lambda (_%hd1192812263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body1193412266%_)
                   (if (gx#stx-pair? _%hd1192812263%_)
                       (let ((_%e1193112268%_ (gx#syntax-e _%hd1192812263%_)))
                         (let ((_%lp-tl1193312275%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1193112268%_)))
                               (_%lp-hd1193212272%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1193112268%_))))
                           (_%loop1193012259%_
                            _%lp-tl1193312275%_
                            (cons _%lp-hd1193212272%_ _%body1193412266%_))))
                       (let ((_%body1193512278%_ (reverse _%body1193412266%_)))
                         (_%__kont1950019501%_ _%body1193512278%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1193012259%_
                                                  _%target1192712253%_
                                                  '())))))
                                       (if (gx#stx-pair? _%__stx1949519496%_)
                                           (let ((_%e1191412311%_
                                                  (gx#syntax-e
                                                   _%__stx1949519496%_)))
                                             (let ((_%tl1191612318%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e1191412311%_)))
                                                   (_%hd1191512315%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e1191412311%_))))
                                               (if (gx#identifier?
                                                    _%hd1191512315%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/sugar~Sugar-2[1]#_g20968_|
                                                        _%hd1191512315%_)
                                                       (if (gx#stx-pair?
                                                            _%tl1191612318%_)
                                                           (let ((_%e1191712321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl1191612318%_)))
                     (let ((_%tl1191912328%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1191712321%_)))
                           (_%hd1191812325%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1191712321%_))))
                       (if (gx#identifier? _%hd1191812325%_)
                           (if (gx#free-identifier=?
                                |gerbil/core/sugar~Sugar-2[1]#_g20969_|
                                _%hd1191812325%_)
                               (if (gx#stx-pair? _%tl1191912328%_)
                                   (let ((_%e1192012331%_
                                          (gx#syntax-e _%tl1191912328%_)))
                                     (let ((_%tl1192212338%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e1192012331%_)))
                                           (_%hd1192112335%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e1192012331%_))))
                                       (if (gx#stx-null? _%tl1192212338%_)
                                           (_%__kont1949819499%_
                                            _%hd1192112335%_)
                                           (if (gx#stx-pair/null?
                                                _%tl1191612318%_)
                                               (let ((_%__splice1950219503%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl1191612318%_
                                                       '0)))
                                                 (let ((_%tl1192912256%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1950219503%_
                                                           '1)))
                                                       (_%target1192712253%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1950219503%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1192912256%_)
                                                       (_%__match1956019561%_
                                                        _%e1191412311%_
                                                        _%hd1191512315%_
                                                        _%tl1191612318%_
                                                        _%__splice1950219503%_
                                                        _%target1192712253%_
                                                        _%tl1192912256%_)
                                                       (if (gx#stx-pair/null?
                                                            _%hd1191512315%_)
                                                           (let ((_%__splice1950619507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%hd1191512315%_
                           '0)))
                     (let ((_%tl1194312123%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1950619507%_ '1)))
                           (_%target1194112120%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1950619507%_ '0))))
                       (if (gx#stx-null? _%tl1194312123%_)
                           (_%__match1957419575%_
                            _%e1191412311%_
                            _%hd1191512315%_
                            _%tl1191612318%_
                            _%__splice1950619507%_
                            _%target1194112120%_
                            _%tl1194312123%_)
                           (let () (declare (not safe)) (_%g1191111984%_)))))
                   (let () (declare (not safe)) (_%g1191111984%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _%hd1191512315%_)
                                                   (let ((_%__splice1950619507%_
                                                          (gx#syntax-split-splice->vector
                                                           _%hd1191512315%_
                                                           '0)))
                                                     (let ((_%tl1194312123%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1950619507%_
                                                               '1)))
                                                           (_%target1194112120%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1950619507%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1194312123%_)
                                                           (_%__match1957419575%_
                                                            _%e1191412311%_
                                                            _%hd1191512315%_
                                                            _%tl1191612318%_
                                                            _%__splice1950619507%_
                                                            _%target1194112120%_
                                                            _%tl1194312123%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1191111984%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1191111984%_)))))))
                                   (if (gx#stx-pair/null? _%tl1191612318%_)
                                       (let ((_%__splice1950219503%_
                                              (gx#syntax-split-splice->vector
                                               _%tl1191612318%_
                                               '0)))
                                         (let ((_%tl1192912256%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1950219503%_
                                                   '1)))
                                               (_%target1192712253%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1950219503%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1192912256%_)
                                               (_%__match1956019561%_
                                                _%e1191412311%_
                                                _%hd1191512315%_
                                                _%tl1191612318%_
                                                _%__splice1950219503%_
                                                _%target1192712253%_
                                                _%tl1192912256%_)
                                               (if (gx#stx-pair/null?
                                                    _%hd1191512315%_)
                                                   (let ((_%__splice1950619507%_
                                                          (gx#syntax-split-splice->vector
                                                           _%hd1191512315%_
                                                           '0)))
                                                     (let ((_%tl1194312123%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1950619507%_
                                                               '1)))
                                                           (_%target1194112120%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1950619507%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1194312123%_)
                                                           (_%__match1957419575%_
                                                            _%e1191412311%_
                                                            _%hd1191512315%_
                                                            _%tl1191612318%_
                                                            _%__splice1950619507%_
                                                            _%target1194112120%_
                                                            _%tl1194312123%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1191111984%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1191111984%_))))))
                                       (if (gx#stx-pair/null? _%hd1191512315%_)
                                           (let ((_%__splice1950619507%_
                                                  (gx#syntax-split-splice->vector
                                                   _%hd1191512315%_
                                                   '0)))
                                             (let ((_%tl1194312123%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1950619507%_
                                                       '1)))
                                                   (_%target1194112120%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1950619507%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1194312123%_)
                                                   (_%__match1957419575%_
                                                    _%e1191412311%_
                                                    _%hd1191512315%_
                                                    _%tl1191612318%_
                                                    _%__splice1950619507%_
                                                    _%target1194112120%_
                                                    _%tl1194312123%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1191111984%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1191111984%_)))))
                               (if (gx#stx-pair/null? _%tl1191612318%_)
                                   (let ((_%__splice1950219503%_
                                          (gx#syntax-split-splice->vector
                                           _%tl1191612318%_
                                           '0)))
                                     (let ((_%tl1192912256%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1950219503%_
                                               '1)))
                                           (_%target1192712253%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1950219503%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1192912256%_)
                                           (_%__match1956019561%_
                                            _%e1191412311%_
                                            _%hd1191512315%_
                                            _%tl1191612318%_
                                            _%__splice1950219503%_
                                            _%target1192712253%_
                                            _%tl1192912256%_)
                                           (if (gx#stx-pair/null?
                                                _%hd1191512315%_)
                                               (let ((_%__splice1950619507%_
                                                      (gx#syntax-split-splice->vector
                                                       _%hd1191512315%_
                                                       '0)))
                                                 (let ((_%tl1194312123%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1950619507%_
                                                           '1)))
                                                       (_%target1194112120%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1950619507%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1194312123%_)
                                                       (_%__match1957419575%_
                                                        _%e1191412311%_
                                                        _%hd1191512315%_
                                                        _%tl1191612318%_
                                                        _%__splice1950619507%_
                                                        _%target1194112120%_
                                                        _%tl1194312123%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g1191111984%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1191111984%_))))))
                                   (if (gx#stx-pair/null? _%hd1191512315%_)
                                       (let ((_%__splice1950619507%_
                                              (gx#syntax-split-splice->vector
                                               _%hd1191512315%_
                                               '0)))
                                         (let ((_%tl1194312123%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1950619507%_
                                                   '1)))
                                               (_%target1194112120%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1950619507%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1194312123%_)
                                               (_%__match1957419575%_
                                                _%e1191412311%_
                                                _%hd1191512315%_
                                                _%tl1191612318%_
                                                _%__splice1950619507%_
                                                _%target1194112120%_
                                                _%tl1194312123%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1191111984%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g1191111984%_)))))
                           (if (gx#stx-pair/null? _%tl1191612318%_)
                               (let ((_%__splice1950219503%_
                                      (gx#syntax-split-splice->vector
                                       _%tl1191612318%_
                                       '0)))
                                 (let ((_%tl1192912256%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1950219503%_
                                           '1)))
                                       (_%target1192712253%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1950219503%_
                                           '0))))
                                   (if (gx#stx-null? _%tl1192912256%_)
                                       (_%__match1956019561%_
                                        _%e1191412311%_
                                        _%hd1191512315%_
                                        _%tl1191612318%_
                                        _%__splice1950219503%_
                                        _%target1192712253%_
                                        _%tl1192912256%_)
                                       (if (gx#stx-pair/null? _%hd1191512315%_)
                                           (let ((_%__splice1950619507%_
                                                  (gx#syntax-split-splice->vector
                                                   _%hd1191512315%_
                                                   '0)))
                                             (let ((_%tl1194312123%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1950619507%_
                                                       '1)))
                                                   (_%target1194112120%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1950619507%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1194312123%_)
                                                   (_%__match1957419575%_
                                                    _%e1191412311%_
                                                    _%hd1191512315%_
                                                    _%tl1191612318%_
                                                    _%__splice1950619507%_
                                                    _%target1194112120%_
                                                    _%tl1194312123%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1191111984%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1191111984%_))))))
                               (if (gx#stx-pair/null? _%hd1191512315%_)
                                   (let ((_%__splice1950619507%_
                                          (gx#syntax-split-splice->vector
                                           _%hd1191512315%_
                                           '0)))
                                     (let ((_%tl1194312123%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1950619507%_
                                               '1)))
                                           (_%target1194112120%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1950619507%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1194312123%_)
                                           (_%__match1957419575%_
                                            _%e1191412311%_
                                            _%hd1191512315%_
                                            _%tl1191612318%_
                                            _%__splice1950619507%_
                                            _%target1194112120%_
                                            _%tl1194312123%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1191111984%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1191111984%_)))))))
                   (if (gx#stx-pair/null? _%tl1191612318%_)
                       (let ((_%__splice1950219503%_
                              (gx#syntax-split-splice->vector
                               _%tl1191612318%_
                               '0)))
                         (let ((_%tl1192912256%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1950219503%_ '1)))
                               (_%target1192712253%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1950219503%_ '0))))
                           (if (gx#stx-null? _%tl1192912256%_)
                               (_%__match1956019561%_
                                _%e1191412311%_
                                _%hd1191512315%_
                                _%tl1191612318%_
                                _%__splice1950219503%_
                                _%target1192712253%_
                                _%tl1192912256%_)
                               (if (gx#stx-pair/null? _%hd1191512315%_)
                                   (let ((_%__splice1950619507%_
                                          (gx#syntax-split-splice->vector
                                           _%hd1191512315%_
                                           '0)))
                                     (let ((_%tl1194312123%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1950619507%_
                                               '1)))
                                           (_%target1194112120%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1950619507%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1194312123%_)
                                           (_%__match1957419575%_
                                            _%e1191412311%_
                                            _%hd1191512315%_
                                            _%tl1191612318%_
                                            _%__splice1950619507%_
                                            _%target1194112120%_
                                            _%tl1194312123%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1191111984%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1191111984%_))))))
                       (if (gx#stx-pair/null? _%hd1191512315%_)
                           (let ((_%__splice1950619507%_
                                  (gx#syntax-split-splice->vector
                                   _%hd1191512315%_
                                   '0)))
                             (let ((_%tl1194312123%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1950619507%_
                                       '1)))
                                   (_%target1194112120%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1950619507%_
                                       '0))))
                               (if (gx#stx-null? _%tl1194312123%_)
                                   (_%__match1957419575%_
                                    _%e1191412311%_
                                    _%hd1191512315%_
                                    _%tl1191612318%_
                                    _%__splice1950619507%_
                                    _%target1194112120%_
                                    _%tl1194312123%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g1191111984%_)))))
                           (let () (declare (not safe)) (_%g1191111984%_)))))
               (if (gx#stx-pair/null? _%hd1191512315%_)
                   (let ((_%__splice1950619507%_
                          (gx#syntax-split-splice->vector
                           _%hd1191512315%_
                           '0)))
                     (let ((_%tl1194312123%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1950619507%_ '1)))
                           (_%target1194112120%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1950619507%_ '0))))
                       (if (gx#stx-null? _%tl1194312123%_)
                           (_%__match1957419575%_
                            _%e1191412311%_
                            _%hd1191512315%_
                            _%tl1191612318%_
                            _%__splice1950619507%_
                            _%target1194112120%_
                            _%tl1194312123%_)
                           (let () (declare (not safe)) (_%g1191111984%_)))))
                   (let () (declare (not safe)) (_%g1191111984%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%hd1191512315%_)
                                                       (let ((_%__splice1950619507%_
                                                              (gx#syntax-split-splice->vector
                                                               _%hd1191512315%_
                                                               '0)))
                                                         (let ((_%tl1194312123%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice1950619507%_ '1)))
                       (_%target1194112120%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice1950619507%_ '0))))
                   (if (gx#stx-null? _%tl1194312123%_)
                       (_%__match1957419575%_
                        _%e1191412311%_
                        _%hd1191512315%_
                        _%tl1191612318%_
                        _%__splice1950619507%_
                        _%target1194112120%_
                        _%tl1194312123%_)
                       (let () (declare (not safe)) (_%g1191111984%_)))))
               (let () (declare (not safe)) (_%g1191111984%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_%g1191111984%_))))))))
                              (_%__kont1959619597%_
                               (lambda ()
                                 (_%check-duplicate-datums9378%_
                                  _%datums11842%_)
                                 (values (reverse _%datums11842%_)
                                         (reverse _%dispatch11843%_)
                                         (let ((_%$e11870%_ _%default11844%_))
                                           (if _%$e11870%_
                                               _%$e11870%_
                                               '#!void))))))
                          (let ((_%g1184611874%_
                                 (lambda ()
                                   (if (gx#stx-null? _%__stx1959119592%_)
                                       (_%__kont1959619597%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g1184711859%_))))))
                            (if (gx#stx-pair? _%__stx1959119592%_)
                                (let ((_%e1185111881%_
                                       (gx#syntax-e _%__stx1959119592%_)))
                                  (let ((_%tl1185311888%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1185111881%_)))
                                        (_%hd1185211885%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1185111881%_))))
                                    (_%__kont1959419595%_
                                     _%tl1185311888%_
                                     _%hd1185211885%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g1184611874%_)))))))))
                 (_%check-duplicate-datums9378%_
                  (lambda (_%datums11821%_)
                    (let ((_%ht11824%_ (make-hash-table)))
                      (for-each
                       (lambda (_%lst11827%_)
                         (for-each
                          (lambda (_%datum11830%_)
                            (if (hash-get _%ht11824%_ _%datum11830%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _%stx9373%_
                                 _%datum11830%_)
                                (hash-put! _%ht11824%_ _%datum11830%_ '#t)))
                          _%lst11827%_))
                       _%datums11821%_))))
                 (_%count-datums9379%_
                  (lambda (_%datums11814%_)
                    (foldl (lambda (_%lst11817%_ _%r11819%_)
                             (+ (length _%lst11817%_) _%r11819%_))
                           '0
                           _%datums11814%_)))
                 (_%symbolic-datums?9380%_
                  (lambda (_%datums11808%_)
                    (andmap (lambda (_%lst11811%_)
                              (andmap symbol? _%lst11811%_))
                            _%datums11808%_)))
                 (_%char-datums?9381%_
                  (lambda (_%datums11802%_)
                    (andmap (lambda (_%lst11805%_) (andmap char? _%lst11805%_))
                            _%datums11802%_)))
                 (_%fixnum-datums?9382%_
                  (lambda (_%datums11796%_)
                    (andmap (lambda (_%lst11799%_)
                              (andmap fixnum? _%lst11799%_))
                            _%datums11796%_)))
                 (_%eq-datums?9383%_
                  (lambda (_%datums11779%_)
                    (andmap (lambda (_%lst11782%_)
                              (andmap (lambda (_%x11785%_)
                                        (let ((_%$e11788%_
                                               (symbol? _%x11785%_)))
                                          (if _%$e11788%_
                                              _%$e11788%_
                                              (let ((_%$e11792%_
                                                     (keyword? _%x11785%_)))
                                                (if _%$e11792%_
                                                    _%$e11792%_
                                                    (immediate?
                                                     _%x11785%_))))))
                                      _%lst11782%_))
                            _%datums11779%_)))
                 (_%generate-simple-case9384%_
                  (lambda (_%e11545%_
                           _%datums11547%_
                           _%dispatch11548%_
                           _%default11549%_)
                    (let* ((_%g1155111559%_
                            (lambda (_%g1155211555%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1155211555%_)))
                           (_%g1155011775%_
                            (lambda (_%g1155211563%_)
                              ((lambda (_%g1155311566%_)
                                 (let _%recur11578%_ ((_%datums11581%_
                                                       _%datums11547%_)
                                                      (_%dispatch11583%_
                                                       _%dispatch11548%_))
                                   (let* ((_%__stx1960919610%_ _%datums11581%_)
                                          (_%g1158611607%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx1960919610%_))))
                                     (let ((_%__kont1961219613%_
                                            (lambda (_%g1158811663%_
                                                     _%g1158911665%_)
                                              (let* ((_%g1168511697%_
                                                      (lambda (_%g1168611693%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1168611693%_)))
                                                     (_%g1168411767%_
                                                      (lambda (_%g1168611701%_)
                                                        (if (gx#stx-pair?
                                                             _%g1168611701%_)
                                                            (let ((_%e1168911704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%g1168611701%_)))
                      (let ((_%hd1169011708%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1168911704%_)))
                            (_%tl1169111711%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1168911704%_))))
                        ((lambda (_%g1168711714%_ _%g1168811716%_)
                           (let* ((_%g1172811736%_
                                   (lambda (_%g1172911732%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g1172911732%_)))
                                  (_%g1172711763%_
                                   (lambda (_%g1172911740%_)
                                     ((lambda (_%g1173011743%_)
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'or)
                                                          (foldr (lambda (_%g1175411757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g1175511760%_)
                           (cons (cons (gx#datum->syntax '#f '~case-test)
                                       (cons _%g1175411757%_
                                             (cons _%g1155311566%_ '())))
                                 _%g1175511760%_))
                         '()
                         _%g1158911665%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g1168811716%_
                                                          (cons _%g1173011743%_
                                                                '())))))
                                      _%g1172911740%_))))
                             (_%g1172711763%_
                              (_%recur11578%_
                               _%g1158811663%_
                               _%g1168711714%_))))
                         _%tl1169111711%_
                         _%hd1169011708%_)))
                    (_%g1168511697%_ _%g1168611701%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1168411767%_
                                                 _%dispatch11583%_))))
                                           (_%__kont1961619617%_
                                            (lambda () _%default11549%_)))
                                       (let ((_%__match1963219633%_
                                              (lambda (_%e1159011625%_
                                                       _%hd1159111629%_
                                                       _%tl1159211632%_
                                                       _%__splice1961419615%_
                                                       _%target1159311635%_
                                                       _%tl1159511638%_)
                                                (letrec ((_%loop1159611641%_
                                                          (lambda (_%hd1159411645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%datum1160011648%_)
                    (if (gx#stx-pair? _%hd1159411645%_)
                        (let ((_%e1159711650%_ (gx#syntax-e _%hd1159411645%_)))
                          (let ((_%lp-tl1159911657%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1159711650%_)))
                                (_%lp-hd1159811654%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1159711650%_))))
                            (_%loop1159611641%_
                             _%lp-tl1159911657%_
                             (cons _%lp-hd1159811654%_ _%datum1160011648%_))))
                        (let ((_%datum1160111660%_
                               (reverse _%datum1160011648%_)))
                          (_%__kont1961219613%_
                           _%tl1159211632%_
                           _%datum1160111660%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1159611641%_
                                                   _%target1159311635%_
                                                   '())))))
                                         (if (gx#stx-pair? _%__stx1960919610%_)
                                             (let ((_%e1159011625%_
                                                    (gx#syntax-e
                                                     _%__stx1960919610%_)))
                                               (let ((_%tl1159211632%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1159011625%_)))
                                                     (_%hd1159111629%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1159011625%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%hd1159111629%_)
                                                     (let ((_%__splice1961419615%_
                                                            (gx#syntax-split-splice->vector
                                                             _%hd1159111629%_
                                                             '0)))
                                                       (let ((_%tl1159511638%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice1961419615%_ '1)))
                     (_%target1159311635%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice1961419615%_ '0))))
                 (if (gx#stx-null? _%tl1159511638%_)
                     (_%__match1963219633%_
                      _%e1159011625%_
                      _%hd1159111629%_
                      _%tl1159211632%_
                      _%__splice1961419615%_
                      _%target1159311635%_
                      _%tl1159511638%_)
                     (_%__kont1961619617%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont1961619617%_))))
                                             (_%__kont1961619617%_)))))))
                               _%g1155211563%_))))
                      (_%g1155011775%_ _%e11545%_))))
                 (_%datum-dispatch-index9385%_
                  (lambda (_%datums11419%_)
                    (let _%lp11422%_ ((_%rest11425%_ _%datums11419%_)
                                      (_%ix11427%_ '0)
                                      (_%r11428%_ '()))
                      (let* ((_%__stx1963519636%_ _%rest11425%_)
                             (_%g1143111452%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1963519636%_))))
                        (let ((_%__kont1963819639%_
                               (lambda (_%g1143311508%_ _%g1143411510%_)
                                 (_%lp11422%_
                                  _%g1143311508%_
                                  (fx1+ _%ix11427%_)
                                  (foldl (lambda (_%x11529%_ _%r11531%_)
                                           (cons (cons _%x11529%_ _%ix11427%_)
                                                 _%r11531%_))
                                         _%r11428%_
                                         (foldr (lambda (_%g1153211535%_
                                                         _%g1153311538%_)
                                                  (cons _%g1153211535%_
                                                        _%g1153311538%_))
                                                '()
                                                _%g1143411510%_)))))
                              (_%__kont1964219643%_ (lambda () _%r11428%_)))
                          (let ((_%__match1965819659%_
                                 (lambda (_%e1143511470%_
                                          _%hd1143611474%_
                                          _%tl1143711477%_
                                          _%__splice1964019641%_
                                          _%target1143811480%_
                                          _%tl1144011483%_)
                                   (letrec ((_%loop1144111486%_
                                             (lambda (_%hd1143911490%_
                                                      _%datum1144511493%_)
                                               (if (gx#stx-pair?
                                                    _%hd1143911490%_)
                                                   (let ((_%e1144211495%_
                                                          (gx#syntax-e
                                                           _%hd1143911490%_)))
                                                     (let ((_%lp-tl1144411502%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e1144211495%_)))
                                                           (_%lp-hd1144311499%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e1144211495%_))))
                                                       (_%loop1144111486%_
                                                        _%lp-tl1144411502%_
                                                        (cons _%lp-hd1144311499%_
                                                              _%datum1144511493%_))))
                                                   (let ((_%datum1144611505%_
                                                          (reverse _%datum1144511493%_)))
                                                     (_%__kont1963819639%_
                                                      _%tl1143711477%_
                                                      _%datum1144611505%_))))))
                                     (_%loop1144111486%_
                                      _%target1143811480%_
                                      '())))))
                            (if (gx#stx-pair? _%__stx1963519636%_)
                                (let ((_%e1143511470%_
                                       (gx#syntax-e _%__stx1963519636%_)))
                                  (let ((_%tl1143711477%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1143511470%_)))
                                        (_%hd1143611474%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1143511470%_))))
                                    (if (gx#stx-pair/null? _%hd1143611474%_)
                                        (let ((_%__splice1964019641%_
                                               (gx#syntax-split-splice->vector
                                                _%hd1143611474%_
                                                '0)))
                                          (let ((_%tl1144011483%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1964019641%_
                                                    '1)))
                                                (_%target1143811480%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1964019641%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1144011483%_)
                                                (_%__match1965819659%_
                                                 _%e1143511470%_
                                                 _%hd1143611474%_
                                                 _%tl1143711477%_
                                                 _%__splice1964019641%_
                                                 _%target1143811480%_
                                                 _%tl1144011483%_)
                                                (_%__kont1964219643%_))))
                                        (_%__kont1964219643%_))))
                                (_%__kont1964219643%_))))))))
                 (_%duplicate-indexes?9386%_
                  (lambda (_%xs11400%_)
                    (let ((_%ht11403%_ (make-hash-table-eq)))
                      (let _%lp11406%_ ((_%rest11409%_ _%xs11400%_))
                        (if (pair? _%rest11409%_)
                            (let* ((_%ix11412%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest11409%_)))
                                   (_%$e11415%_
                                    (hash-get _%ht11403%_ _%ix11412%_)))
                              (if _%$e11415%_
                                  _%$e11415%_
                                  (begin
                                    (hash-put! _%ht11403%_ _%ix11412%_ '#t)
                                    (_%lp11406%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest11409%_))))))
                            '#f)))))
                 (_%generate-hash-dispatch-table9387%_
                  (lambda (_%indexes11369%_ _%hash-e11371%_)
                    (let _%lp11373%_ ((_%len11376%_
                                       (* '2 (length _%indexes11369%_))))
                      (let* ((_%hs11382%_
                              (map (lambda (_%x11379%_)
                                     (_%hash-e11371%_ (car _%x11379%_)))
                                   _%indexes11369%_))
                             (_%xs11388%_
                              (map (lambda (_%h11385%_)
                                     (fxmodulo _%h11385%_ _%len11376%_))
                                   _%hs11382%_)))
                        (if (_%duplicate-indexes?9386%_ _%xs11388%_)
                            (if (< _%len11376%_ '131072)
                                (_%lp11373%_
                                 (quotient
                                  (let ()
                                    (declare (not safe))
                                    (##fx* _%len11376%_ '3))
                                  '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _%stx9373%_
                                 _%indexes11369%_))
                            (let ((_%tab11393%_
                                   (make-vector _%len11376%_ '#f)))
                              (for-each
                               (lambda (_%entry11396%_ _%x11398%_)
                                 (vector-set!
                                  _%tab11393%_
                                  _%x11398%_
                                  _%entry11396%_))
                               _%indexes11369%_
                               _%xs11388%_)
                              _%tab11393%_))))))
                 (_%generate-symbolic-dispatch9388%_
                  (lambda (_%e10974%_
                           _%datums10976%_
                           _%dispatch10977%_
                           _%default10978%_)
                    (let* ((_%indexes10980%_
                            (_%datum-dispatch-index9385%_ _%datums10976%_))
                           (_%tab10983%_
                            (_%generate-hash-dispatch-table9387%_
                             _%indexes10980%_
                             symbol-hash)))
                      (if (= (length _%dispatch10977%_) '1)
                          (let* ((_%tab10991%_
                                  (vector-map
                                   (lambda (_%x10988%_)
                                     (if _%x10988%_ (car _%x10988%_) '#f))
                                   _%tab10983%_))
                                 (_%g1099411032%_
                                  (lambda (_%g1099511028%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1099511028%_)))
                                 (_%g1099311163%_
                                  (lambda (_%g1099511036%_)
                                    (if (gx#stx-pair? _%g1099511036%_)
                                        (let ((_%e1100311039%_
                                               (gx#syntax-e _%g1099511036%_)))
                                          (let ((_%hd1100411043%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1100311039%_)))
                                                (_%tl1100511046%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1100311039%_))))
                                            (if (gx#stx-pair? _%tl1100511046%_)
                                                (let ((_%e1100611049%_
                                                       (gx#syntax-e
                                                        _%tl1100511046%_)))
                                                  (let ((_%hd1100711053%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1100611049%_)))
                                                        (_%tl1100811056%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1100611049%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1100811056%_)
                                                        (let ((_%e1100911059%_
                                                               (gx#syntax-e
                                                                _%tl1100811056%_)))
                                                          (let ((_%hd1101011063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1100911059%_)))
                        (_%tl1101111066%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1100911059%_))))
                    (if (gx#stx-pair? _%tl1101111066%_)
                        (let ((_%e1101211069%_ (gx#syntax-e _%tl1101111066%_)))
                          (let ((_%hd1101311073%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1101211069%_)))
                                (_%tl1101411076%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1101211069%_))))
                            (if (gx#stx-pair? _%hd1101311073%_)
                                (let ((_%e1101511079%_
                                       (gx#syntax-e _%hd1101311073%_)))
                                  (let ((_%hd1101611083%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1101511079%_)))
                                        (_%tl1101711086%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1101511079%_))))
                                    (if (gx#stx-null? _%tl1101711086%_)
                                        (if (gx#stx-pair? _%tl1101411076%_)
                                            (let ((_%e1101811089%_
                                                   (gx#syntax-e
                                                    _%tl1101411076%_)))
                                              (let ((_%hd1101911093%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1101811089%_)))
                                                    (_%tl1102011096%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1101811089%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1102011096%_)
                                                    (let ((_%e1102111099%_
                                                           (gx#syntax-e
                                                            _%tl1102011096%_)))
                                                      (let ((_%hd1102211103%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1102111099%_)))
                    (_%tl1102311106%_
                     (let () (declare (not safe)) (##cdr _%e1102111099%_))))
                (if (gx#stx-pair? _%tl1102311106%_)
                    (let ((_%e1102411109%_ (gx#syntax-e _%tl1102311106%_)))
                      (let ((_%hd1102511113%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1102411109%_)))
                            (_%tl1102611116%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1102411109%_))))
                        (if (gx#stx-null? _%tl1102611116%_)
                            ((lambda (_%g1099611119%_
                                      _%g1099711121%_
                                      _%g1099811122%_
                                      _%g1099911123%_
                                      _%g1100011124%_
                                      _%g1100111125%_
                                      _%g1100211126%_)
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g1100111125%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _%g1099811122%_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g1100011124%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%g1099711121%_ '()))
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
                           (cons _%g1100211126%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'let*)
                                 (cons (cons (cons (gx#datum->syntax '#f 'h)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##symbol-hash)
                                                               (cons _%g1100211126%_
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
                                   (cons _%g1099611119%_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'q)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##vector-ref)
                                   (cons _%g1100011124%_
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
                             (cons _%g1100211126%_ '())))
                 (cons _%g1099911123%_ (cons (cons _%g1100111125%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _%g1100111125%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                             _%hd1102511113%_
                             _%hd1102211103%_
                             _%hd1101911093%_
                             _%hd1101611083%_
                             _%hd1101011063%_
                             _%hd1100711053%_
                             _%hd1100411043%_)
                            (_%g1099411032%_ _%g1099511036%_))))
                    (_%g1099411032%_ _%g1099511036%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1099411032%_
                                                     _%g1099511036%_))))
                                            (_%g1099411032%_ _%g1099511036%_))
                                        (_%g1099411032%_ _%g1099511036%_))))
                                (_%g1099411032%_ _%g1099511036%_))))
                        (_%g1099411032%_ _%g1099511036%_))))
                (_%g1099411032%_ _%g1099511036%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1099411032%_
                                                 _%g1099511036%_))))
                                        (_%g1099411032%_ _%g1099511036%_)))))
                            (_%g1099311163%_
                             (list _%e10974%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch10977%_
                                   _%default10978%_
                                   _%tab10991%_
                                   (vector-length _%tab10991%_))))
                          (let* ((_%g1116711211%_
                                  (lambda (_%g1116811207%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1116811207%_)))
                                 (_%g1116611365%_
                                  (lambda (_%g1116811215%_)
                                    (if (gx#stx-pair? _%g1116811215%_)
                                        (let ((_%e1117611218%_
                                               (gx#syntax-e _%g1116811215%_)))
                                          (let ((_%hd1117711222%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1117611218%_)))
                                                (_%tl1117811225%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1117611218%_))))
                                            (if (gx#stx-pair? _%tl1117811225%_)
                                                (let ((_%e1117911228%_
                                                       (gx#syntax-e
                                                        _%tl1117811225%_)))
                                                  (let ((_%hd1118011232%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1117911228%_)))
                                                        (_%tl1118111235%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1117911228%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1118111235%_)
                                                        (let ((_%e1118211238%_
                                                               (gx#syntax-e
                                                                _%tl1118111235%_)))
                                                          (let ((_%hd1118311242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1118211238%_)))
                        (_%tl1118411245%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1118211238%_))))
                    (if (gx#stx-pair? _%tl1118411245%_)
                        (let ((_%e1118511248%_ (gx#syntax-e _%tl1118411245%_)))
                          (let ((_%hd1118611252%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1118511248%_)))
                                (_%tl1118711255%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1118511248%_))))
                            (if (gx#stx-pair/null? _%hd1118611252%_)
                                (let ((_g20970_
                                       (gx#syntax-split-splice
                                        _%hd1118611252%_
                                        '0)))
                                  (begin
                                    (let ((_g20971_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g20970_)
                                                 (##values-length _g20970_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g20971_ 2)))
                                          (error "Context expects 2 values"
                                                 _g20971_)))
                                    (let ((_%target1118811258%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g20970_ 0)))
                                          (_%tl1119011261%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g20970_ 1))))
                                      (if (gx#stx-null? _%tl1119011261%_)
                                          (letrec ((_%loop1119111264%_
                                                    (lambda (_%hd1118911268%_
                                                             _%dispatch1119511271%_)
                                                      (if (gx#stx-pair?
                                                           _%hd1118911268%_)
                                                          (let ((_%e1119211273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd1118911268%_)))
                    (let ((_%lp-hd1119311277%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1119211273%_)))
                          (_%lp-tl1119411280%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1119211273%_))))
                      (_%loop1119111264%_
                       _%lp-tl1119411280%_
                       (cons _%lp-hd1119311277%_ _%dispatch1119511271%_))))
                  (let ((_%dispatch1119611283%_
                         (reverse _%dispatch1119511271%_)))
                    (if (gx#stx-pair? _%tl1118711255%_)
                        (let ((_%e1119711286%_ (gx#syntax-e _%tl1118711255%_)))
                          (let ((_%hd1119811290%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1119711286%_)))
                                (_%tl1119911293%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1119711286%_))))
                            (if (gx#stx-pair? _%tl1119911293%_)
                                (let ((_%e1120011296%_
                                       (gx#syntax-e _%tl1119911293%_)))
                                  (let ((_%hd1120111300%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1120011296%_)))
                                        (_%tl1120211303%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1120011296%_))))
                                    (if (gx#stx-pair? _%tl1120211303%_)
                                        (let ((_%e1120311306%_
                                               (gx#syntax-e _%tl1120211303%_)))
                                          (let ((_%hd1120411310%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1120311306%_)))
                                                (_%tl1120511313%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1120311306%_))))
                                            (if (gx#stx-null? _%tl1120511313%_)
                                                ((lambda (_%g1116911316%_
                                                          _%g1117011318%_
                                                          _%g1117111319%_
                                                          _%g1117211320%_
                                                          _%g1117311321%_
                                                          _%g1117411322%_
                                                          _%g1117511323%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _%g1117411322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons '()
                                                     (cons _%g1117111319%_
                                                           '())))
                                         '()))
                             (cons (cons _%g1117311321%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%g1117011318%_
                                                           '()))
                                               '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f 'symbol?)
                                               (cons _%g1117511323%_ '()))
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
                                           (cons _%g1117511323%_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'ix)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##fxmodulo)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'h)
                                                       (cons _%g1116911316%_
                                                             '())))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'q)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _%g1117311321%_
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
                           (cons _%g1117511323%_ '())))
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
                                                   (foldr (lambda (_%g1135611359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1135711362%_)
                    (cons _%g1135611359%_ _%g1135711362%_))
                  '()
                  _%g1117211320%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons (cons _%g1117411322%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%g1117411322%_ '())
                                                 '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%g1117411322%_ '())
                                                     '()))))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd1120411310%_
                                                 _%hd1120111300%_
                                                 _%hd1119811290%_
                                                 _%dispatch1119611283%_
                                                 _%hd1118311242%_
                                                 _%hd1118011232%_
                                                 _%hd1117711222%_)
                                                (_%g1116711211%_
                                                 _%g1116811215%_))))
                                        (_%g1116711211%_ _%g1116811215%_))))
                                (_%g1116711211%_ _%g1116811215%_))))
                        (_%g1116711211%_ _%g1116811215%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop1119111264%_
                                             _%target1118811258%_
                                             '()))
                                          (_%g1116711211%_ _%g1116811215%_)))))
                                (_%g1116711211%_ _%g1116811215%_))))
                        (_%g1116711211%_ _%g1116811215%_))))
                (_%g1116711211%_ _%g1116811215%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1116711211%_
                                                 _%g1116811215%_))))
                                        (_%g1116711211%_ _%g1116811215%_)))))
                            (_%g1116611365%_
                             (list _%e10974%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch10977%_
                                   _%default10978%_
                                   _%tab10983%_
                                   (vector-length _%tab10983%_))))))))
                 (_%max-char9389%_
                  (lambda (_%datums10963%_)
                    (foldl (lambda (_%lst10966%_ _%r10968%_)
                             (foldl (lambda (_%char10970%_ _%r10972%_)
                                      (max (char->integer _%char10970%_)
                                           _%r10972%_))
                                    _%r10968%_
                                    _%lst10966%_))
                           '0
                           _%datums10963%_)))
                 (_%generate-char-dispatch-table9390%_
                  (lambda (_%indexes10942%_)
                    (let* ((_%ixs10948%_
                            (map (lambda (_%x10945%_)
                                   (char->integer (car _%x10945%_)))
                                 _%indexes10942%_))
                           (_%len10951%_ (fx1+ (foldl max '0 _%ixs10948%_)))
                           (_%vec10954%_ (make-vector _%len10951%_ '#f)))
                      (for-each
                       (lambda (_%entry10959%_ _%x10961%_)
                         (vector-set!
                          _%vec10954%_
                          _%x10961%_
                          (cdr _%entry10959%_)))
                       _%indexes10942%_
                       _%ixs10948%_)
                      _%vec10954%_)))
                 (_%simple-char-range?9391%_
                  (lambda (_%tab10918%_)
                    (let ((_%end10921%_ (vector-length _%tab10918%_)))
                      (let _%lp10924%_ ((_%i10927%_ '0))
                        (let ((_%ix10930%_
                               (vector-ref _%tab10918%_ _%i10927%_)))
                          (if _%ix10930%_
                              (let _%lp210933%_ ((_%i10936%_
                                                  (fx1+ _%i10927%_)))
                                (if (fx< _%i10936%_ _%end10921%_)
                                    (let ((_%ix*10939%_
                                           (vector-ref
                                            _%tab10918%_
                                            _%i10936%_)))
                                      (if (eq? _%ix10930%_ _%ix*10939%_)
                                          (_%lp210933%_ (fx1+ _%i10936%_))
                                          '#f))
                                    '#t))
                              (_%lp10924%_ (fx1+ _%i10927%_))))))))
                 (_%char-range-start9392%_
                  (lambda (_%tab10909%_)
                    (let _%lp10912%_ ((_%i10915%_ '0))
                      (if (vector-ref _%tab10909%_ _%i10915%_)
                          _%i10915%_
                          (_%lp10912%_ (fx1+ _%i10915%_))))))
                 (_%generate-char-dispatch9393%_
                  (lambda (_%e10534%_
                           _%datums10536%_
                           _%dispatch10537%_
                           _%default10538%_)
                    (if (< (_%max-char9389%_ _%datums10536%_) '128)
                        (let* ((_%indexes10540%_
                                (_%datum-dispatch-index9385%_ _%datums10536%_))
                               (_%tab10543%_
                                (_%generate-char-dispatch-table9390%_
                                 _%indexes10540%_)))
                          (if (_%simple-char-range?9391%_ _%tab10543%_)
                              (let ((_%start10548%_
                                     (_%char-range-start9392%_ _%tab10543%_))
                                    (_%end10550%_
                                     (vector-length _%tab10543%_)))
                                (let* ((_%g1055210586%_
                                        (lambda (_%g1055310582%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g1055310582%_)))
                                       (_%g1055110703%_
                                        (lambda (_%g1055310590%_)
                                          (if (gx#stx-pair? _%g1055310590%_)
                                              (let ((_%e1056010593%_
                                                     (gx#syntax-e
                                                      _%g1055310590%_)))
                                                (let ((_%hd1056110597%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1056010593%_)))
                                                      (_%tl1056210600%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1056010593%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1056210600%_)
                                                      (let ((_%e1056310603%_
                                                             (gx#syntax-e
                                                              _%tl1056210600%_)))
                                                        (let ((_%hd1056410607%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1056310603%_)))
                      (_%tl1056510610%_
                       (let () (declare (not safe)) (##cdr _%e1056310603%_))))
                  (if (gx#stx-pair? _%tl1056510610%_)
                      (let ((_%e1056610613%_ (gx#syntax-e _%tl1056510610%_)))
                        (let ((_%hd1056710617%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1056610613%_)))
                              (_%tl1056810620%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1056610613%_))))
                          (if (gx#stx-pair? _%hd1056710617%_)
                              (let ((_%e1056910623%_
                                     (gx#syntax-e _%hd1056710617%_)))
                                (let ((_%hd1057010627%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1056910623%_)))
                                      (_%tl1057110630%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1056910623%_))))
                                  (if (gx#stx-null? _%tl1057110630%_)
                                      (if (gx#stx-pair? _%tl1056810620%_)
                                          (let ((_%e1057210633%_
                                                 (gx#syntax-e
                                                  _%tl1056810620%_)))
                                            (let ((_%hd1057310637%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1057210633%_)))
                                                  (_%tl1057410640%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1057210633%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1057410640%_)
                                                  (let ((_%e1057510643%_
                                                         (gx#syntax-e
                                                          _%tl1057410640%_)))
                                                    (let ((_%hd1057610647%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1057510643%_)))
                                                          (_%tl1057710650%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1057510643%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1057710650%_)
                                                          (let ((_%e1057810653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1057710650%_)))
                    (let ((_%hd1057910657%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1057810653%_)))
                          (_%tl1058010660%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1057810653%_))))
                      (if (gx#stx-null? _%tl1058010660%_)
                          ((lambda (_%g1055410663%_
                                    _%g1055510665%_
                                    _%g1055610666%_
                                    _%g1055710667%_
                                    _%g1055810668%_
                                    _%g1055910669%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons _%g1055810668%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g1055610666%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax '#f 'if)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'char?)
                         (cons _%g1055910669%_ '()))
                   (cons (cons (gx#datum->syntax '#f 'let)
                               (cons (cons (gx#datum->syntax '#f 'ix)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##char->integer)
                                                       (cons _%g1055910669%_
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
                                       (cons _%g1055510665%_ '())))
                           (cons (cons (gx#datum->syntax '#f '##fx<)
                                       (cons (gx#datum->syntax '#f 'ix)
                                             (cons _%g1055410663%_ '())))
                                 '())))
               (cons _%g1055710667%_ (cons (cons _%g1055810668%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (cons (cons _%g1055810668%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%hd1057910657%_
                           _%hd1057610647%_
                           _%hd1057310637%_
                           _%hd1057010627%_
                           _%hd1056410607%_
                           _%hd1056110597%_)
                          (_%g1055210586%_ _%g1055310590%_))))
                  (_%g1055210586%_ _%g1055310590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1055210586%_
                                                   _%g1055310590%_))))
                                          (_%g1055210586%_ _%g1055310590%_))
                                      (_%g1055210586%_ _%g1055310590%_))))
                              (_%g1055210586%_ _%g1055310590%_))))
                      (_%g1055210586%_ _%g1055310590%_))))
              (_%g1055210586%_ _%g1055310590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1055210586%_
                                               _%g1055310590%_)))))
                                  (_%g1055110703%_
                                   (list _%e10534%_
                                         (gx#genident 'default)
                                         _%dispatch10537%_
                                         _%default10538%_
                                         _%start10548%_
                                         _%end10550%_))))
                              (let* ((_%g1070710751%_
                                      (lambda (_%g1070810747%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g1070810747%_)))
                                     (_%g1070610905%_
                                      (lambda (_%g1070810755%_)
                                        (if (gx#stx-pair? _%g1070810755%_)
                                            (let ((_%e1071610758%_
                                                   (gx#syntax-e
                                                    _%g1070810755%_)))
                                              (let ((_%hd1071710762%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1071610758%_)))
                                                    (_%tl1071810765%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1071610758%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1071810765%_)
                                                    (let ((_%e1071910768%_
                                                           (gx#syntax-e
                                                            _%tl1071810765%_)))
                                                      (let ((_%hd1072010772%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1071910768%_)))
                    (_%tl1072110775%_
                     (let () (declare (not safe)) (##cdr _%e1071910768%_))))
                (if (gx#stx-pair? _%tl1072110775%_)
                    (let ((_%e1072210778%_ (gx#syntax-e _%tl1072110775%_)))
                      (let ((_%hd1072310782%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1072210778%_)))
                            (_%tl1072410785%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1072210778%_))))
                        (if (gx#stx-pair? _%tl1072410785%_)
                            (let ((_%e1072510788%_
                                   (gx#syntax-e _%tl1072410785%_)))
                              (let ((_%hd1072610792%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1072510788%_)))
                                    (_%tl1072710795%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1072510788%_))))
                                (if (gx#stx-pair/null? _%hd1072610792%_)
                                    (let ((_g20972_
                                           (gx#syntax-split-splice
                                            _%hd1072610792%_
                                            '0)))
                                      (begin
                                        (let ((_g20973_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g20972_)
                                                     (##values-length _g20972_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g20973_ 2)))
                                              (error "Context expects 2 values"
                                                     _g20973_)))
                                        (let ((_%target1072810798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g20972_ 0)))
                                              (_%tl1073010801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g20972_ 1))))
                                          (if (gx#stx-null? _%tl1073010801%_)
                                              (letrec ((_%loop1073110804%_
                                                        (lambda (_%hd1072910808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%dispatch1073510811%_)
                  (if (gx#stx-pair? _%hd1072910808%_)
                      (let ((_%e1073210813%_ (gx#syntax-e _%hd1072910808%_)))
                        (let ((_%lp-hd1073310817%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1073210813%_)))
                              (_%lp-tl1073410820%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1073210813%_))))
                          (_%loop1073110804%_
                           _%lp-tl1073410820%_
                           (cons _%lp-hd1073310817%_ _%dispatch1073510811%_))))
                      (let ((_%dispatch1073610823%_
                             (reverse _%dispatch1073510811%_)))
                        (if (gx#stx-pair? _%tl1072710795%_)
                            (let ((_%e1073710826%_
                                   (gx#syntax-e _%tl1072710795%_)))
                              (let ((_%hd1073810830%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1073710826%_)))
                                    (_%tl1073910833%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1073710826%_))))
                                (if (gx#stx-pair? _%tl1073910833%_)
                                    (let ((_%e1074010836%_
                                           (gx#syntax-e _%tl1073910833%_)))
                                      (let ((_%hd1074110840%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1074010836%_)))
                                            (_%tl1074210843%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1074010836%_))))
                                        (if (gx#stx-pair? _%tl1074210843%_)
                                            (let ((_%e1074310846%_
                                                   (gx#syntax-e
                                                    _%tl1074210843%_)))
                                              (let ((_%hd1074410850%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1074310846%_)))
                                                    (_%tl1074510853%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1074310846%_))))
                                                (if (gx#stx-null?
                                                     _%tl1074510853%_)
                                                    ((lambda (_%g1070910856%_
                                                              _%g1071010858%_
                                                              _%g1071110859%_
                                                              _%g1071210860%_
                                                              _%g1071310861%_
                                                              _%g1071410862%_
                                                              _%g1071510863%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons _%g1071410862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons '()
                                                         (cons _%g1071110859%_
                                                               '())))
                                             '()))
                                 (cons (cons _%g1071310861%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _%g1071010858%_
                                                               '()))
                                                   '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'char?)
                                                   (cons _%g1071510863%_ '()))
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
                                         (cons _%g1071510863%_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f '##fx<)
                                               (cons (gx#datum->syntax '#f 'ix)
                                                     (cons _%g1070910856%_
                                                           '())))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'x)
                         (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                     (cons _%g1071310861%_
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
                                                       (foldr (lambda (_%g1089610899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1089710902%_)
                        (cons _%g1089610899%_ _%g1089710902%_))
                      '()
                      _%g1071210860%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%g1071410862%_ '())
                                                 '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%g1071410862%_ '())
                                                     '()))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _%g1071410862%_
                                                               '())
                                                         '()))))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd1074410850%_
                                                     _%hd1074110840%_
                                                     _%hd1073810830%_
                                                     _%dispatch1073610823%_
                                                     _%hd1072310782%_
                                                     _%hd1072010772%_
                                                     _%hd1071710762%_)
                                                    (_%g1070710751%_
                                                     _%g1070810755%_))))
                                            (_%g1070710751%_
                                             _%g1070810755%_))))
                                    (_%g1070710751%_ _%g1070810755%_))))
                            (_%g1070710751%_ _%g1070810755%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop1073110804%_
                                                 _%target1072810798%_
                                                 '()))
                                              (_%g1070710751%_
                                               _%g1070810755%_)))))
                                    (_%g1070710751%_ _%g1070810755%_))))
                            (_%g1070710751%_ _%g1070810755%_))))
                    (_%g1070710751%_ _%g1070810755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1070710751%_
                                                     _%g1070810755%_))))
                                            (_%g1070710751%_
                                             _%g1070810755%_)))))
                                (_%g1070610905%_
                                 (list _%e10534%_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _%dispatch10537%_
                                       _%default10538%_
                                       _%tab10543%_
                                       (vector-length _%tab10543%_))))))
                        (_%generate-char-dispatch/hash9394%_
                         _%e10534%_
                         _%datums10536%_
                         _%dispatch10537%_
                         _%default10538%_))))
                 (_%generate-char-dispatch/hash9394%_
                  (lambda (_%e10314%_
                           _%datums10316%_
                           _%dispatch10317%_
                           _%default10318%_)
                    (let* ((_%indexes10320%_
                            (_%datum-dispatch-index9385%_ _%datums10316%_))
                           (_%tab10323%_
                            (_%generate-hash-dispatch-table9387%_
                             _%indexes10320%_
                             char->integer))
                           (_%g1032810372%_
                            (lambda (_%g1032910368%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1032910368%_)))
                           (_%g1032710530%_
                            (lambda (_%g1032910376%_)
                              (if (gx#stx-pair? _%g1032910376%_)
                                  (let ((_%e1033710379%_
                                         (gx#syntax-e _%g1032910376%_)))
                                    (let ((_%hd1033810383%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1033710379%_)))
                                          (_%tl1033910386%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1033710379%_))))
                                      (if (gx#stx-pair? _%tl1033910386%_)
                                          (let ((_%e1034010389%_
                                                 (gx#syntax-e
                                                  _%tl1033910386%_)))
                                            (let ((_%hd1034110393%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1034010389%_)))
                                                  (_%tl1034210396%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1034010389%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1034210396%_)
                                                  (let ((_%e1034310399%_
                                                         (gx#syntax-e
                                                          _%tl1034210396%_)))
                                                    (let ((_%hd1034410403%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1034310399%_)))
                                                          (_%tl1034510406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1034310399%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1034510406%_)
                                                          (let ((_%e1034610409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1034510406%_)))
                    (let ((_%hd1034710413%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1034610409%_)))
                          (_%tl1034810416%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1034610409%_))))
                      (if (gx#stx-pair/null? _%hd1034710413%_)
                          (let ((_g20974_
                                 (gx#syntax-split-splice _%hd1034710413%_ '0)))
                            (begin
                              (let ((_g20975_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g20974_)
                                           (##values-length _g20974_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g20975_ 2)))
                                    (error "Context expects 2 values"
                                           _g20975_)))
                              (let ((_%target1034910419%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g20974_ 0)))
                                    (_%tl1035110422%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g20974_ 1))))
                                (if (gx#stx-null? _%tl1035110422%_)
                                    (letrec ((_%loop1035210425%_
                                              (lambda (_%hd1035010429%_
                                                       _%dispatch1035610432%_)
                                                (if (gx#stx-pair?
                                                     _%hd1035010429%_)
                                                    (let ((_%e1035310434%_
                                                           (gx#syntax-e
                                                            _%hd1035010429%_)))
                                                      (let ((_%lp-hd1035410438%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1035310434%_)))
                    (_%lp-tl1035510441%_
                     (let () (declare (not safe)) (##cdr _%e1035310434%_))))
                (_%loop1035210425%_
                 _%lp-tl1035510441%_
                 (cons _%lp-hd1035410438%_ _%dispatch1035610432%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch1035710444%_
                                                           (reverse _%dispatch1035610432%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl1034810416%_)
                                                          (let ((_%e1035810447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1034810416%_)))
                    (let ((_%hd1035910451%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1035810447%_)))
                          (_%tl1036010454%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1035810447%_))))
                      (if (gx#stx-pair? _%tl1036010454%_)
                          (let ((_%e1036110457%_
                                 (gx#syntax-e _%tl1036010454%_)))
                            (let ((_%hd1036210461%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1036110457%_)))
                                  (_%tl1036310464%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1036110457%_))))
                              (if (gx#stx-pair? _%tl1036310464%_)
                                  (let ((_%e1036410467%_
                                         (gx#syntax-e _%tl1036310464%_)))
                                    (let ((_%hd1036510471%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1036410467%_)))
                                          (_%tl1036610474%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1036410467%_))))
                                      (if (gx#stx-null? _%tl1036610474%_)
                                          ((lambda (_%g1033010477%_
                                                    _%g1033110479%_
                                                    _%g1033210480%_
                                                    _%g1033310481%_
                                                    _%g1033410482%_
                                                    _%g1033510483%_
                                                    _%g1033610484%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%g1033510483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%g1033210480%_ '())))
                                   '()))
                       (cons (cons _%g1033410482%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%g1033110479%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'char?)
                                         (cons _%g1033610484%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'h)
                         (cons (cons (gx#datum->syntax '#f '##char->integer)
                                     (cons _%g1033610484%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'ix)
                               (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                           (cons (gx#datum->syntax '#f 'h)
                                                 (cons _%g1033010477%_ '())))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'q)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##vector-ref)
                                                 (cons _%g1033410482%_
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
                     (cons _%g1033610484%_ '())))
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
                                             (foldr (lambda (_%g1052110524%_
                                                             _%g1052210527%_)
                                                      (cons _%g1052110524%_
                                                            _%g1052210527%_))
                                                    '()
                                                    _%g1033310481%_)))
                                 '())))
               (cons (cons _%g1033510483%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%g1033510483%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%g1033510483%_ '())
                                               '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd1036510471%_
                                           _%hd1036210461%_
                                           _%hd1035910451%_
                                           _%dispatch1035710444%_
                                           _%hd1034410403%_
                                           _%hd1034110393%_
                                           _%hd1033810383%_)
                                          (_%g1032810372%_ _%g1032910376%_))))
                                  (_%g1032810372%_ _%g1032910376%_))))
                          (_%g1032810372%_ _%g1032910376%_))))
                  (_%g1032810372%_ _%g1032910376%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop1035210425%_
                                       _%target1034910419%_
                                       '()))
                                    (_%g1032810372%_ _%g1032910376%_)))))
                          (_%g1032810372%_ _%g1032910376%_))))
                  (_%g1032810372%_ _%g1032910376%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1032810372%_
                                                   _%g1032910376%_))))
                                          (_%g1032810372%_ _%g1032910376%_))))
                                  (_%g1032810372%_ _%g1032910376%_)))))
                      (_%g1032710530%_
                       (list _%e10314%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch10317%_
                             _%default10318%_
                             _%tab10323%_
                             (vector-length _%tab10323%_))))))
                 (_%min-fixnum9395%_
                  (lambda (_%datums10307%_)
                    (foldl (lambda (_%lst10310%_ _%r10312%_)
                             (foldl min _%r10312%_ _%lst10310%_))
                           ##max-fixnum
                           _%datums10307%_)))
                 (_%max-fixnum9396%_
                  (lambda (_%datums10300%_)
                    (foldl (lambda (_%lst10303%_ _%r10305%_)
                             (foldl max _%r10305%_ _%lst10303%_))
                           ##min-fixnum
                           _%datums10300%_)))
                 (_%generate-fixnum-dispatch-table9397%_
                  (lambda (_%indexes10282%_)
                    (let* ((_%ixs10285%_ (map car _%indexes10282%_))
                           (_%len10288%_ (fx1+ (foldl max '0 _%ixs10285%_)))
                           (_%vec10291%_ (make-vector _%len10288%_ '#f)))
                      (for-each
                       (lambda (_%entry10296%_ _%x10298%_)
                         (vector-set!
                          _%vec10291%_
                          _%x10298%_
                          (cdr _%entry10296%_)))
                       _%indexes10282%_
                       _%ixs10285%_)
                      _%vec10291%_)))
                 (_%generate-fixnum-dispatch9398%_
                  (lambda (_%e10018%_
                           _%datums10020%_
                           _%dispatch10021%_
                           _%default10022%_)
                    (if (and (>= (_%min-fixnum9395%_ _%datums10020%_) '0)
                             (< (_%max-fixnum9396%_ _%datums10020%_) '1024))
                        (let* ((_%indexes10024%_
                                (_%datum-dispatch-index9385%_ _%datums10020%_))
                               (_%tab10027%_
                                (_%generate-fixnum-dispatch-table9397%_
                                 _%indexes10024%_))
                               (_%dense?10030%_
                                (andmap values (vector->list _%tab10027%_)))
                               (_%g1003510079%_
                                (lambda (_%g1003610075%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1003610075%_)))
                               (_%g1003410278%_
                                (lambda (_%g1003610083%_)
                                  (if (gx#stx-pair? _%g1003610083%_)
                                      (let ((_%e1004410086%_
                                             (gx#syntax-e _%g1003610083%_)))
                                        (let ((_%hd1004510090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1004410086%_)))
                                              (_%tl1004610093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1004410086%_))))
                                          (if (gx#stx-pair? _%tl1004610093%_)
                                              (let ((_%e1004710096%_
                                                     (gx#syntax-e
                                                      _%tl1004610093%_)))
                                                (let ((_%hd1004810100%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1004710096%_)))
                                                      (_%tl1004910103%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1004710096%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1004910103%_)
                                                      (let ((_%e1005010106%_
                                                             (gx#syntax-e
                                                              _%tl1004910103%_)))
                                                        (let ((_%hd1005110110%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1005010106%_)))
                      (_%tl1005210113%_
                       (let () (declare (not safe)) (##cdr _%e1005010106%_))))
                  (if (gx#stx-pair? _%tl1005210113%_)
                      (let ((_%e1005310116%_ (gx#syntax-e _%tl1005210113%_)))
                        (let ((_%hd1005410120%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1005310116%_)))
                              (_%tl1005510123%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1005310116%_))))
                          (if (gx#stx-pair/null? _%hd1005410120%_)
                              (let ((_g20976_
                                     (gx#syntax-split-splice
                                      _%hd1005410120%_
                                      '0)))
                                (begin
                                  (let ((_g20977_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g20976_)
                                               (##values-length _g20976_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g20977_ 2)))
                                        (error "Context expects 2 values"
                                               _g20977_)))
                                  (let ((_%target1005610126%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g20976_ 0)))
                                        (_%tl1005810129%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g20976_ 1))))
                                    (if (gx#stx-null? _%tl1005810129%_)
                                        (letrec ((_%loop1005910132%_
                                                  (lambda (_%hd1005710136%_
                                                           _%dispatch1006310139%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1005710136%_)
                                                        (let ((_%e1006010141%_
                                                               (gx#syntax-e
                                                                _%hd1005710136%_)))
                                                          (let ((_%lp-hd1006110145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1006010141%_)))
                        (_%lp-tl1006210148%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1006010141%_))))
                    (_%loop1005910132%_
                     _%lp-tl1006210148%_
                     (cons _%lp-hd1006110145%_ _%dispatch1006310139%_))))
                (let ((_%dispatch1006410151%_
                       (reverse _%dispatch1006310139%_)))
                  (if (gx#stx-pair? _%tl1005510123%_)
                      (let ((_%e1006510154%_ (gx#syntax-e _%tl1005510123%_)))
                        (let ((_%hd1006610158%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1006510154%_)))
                              (_%tl1006710161%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1006510154%_))))
                          (if (gx#stx-pair? _%tl1006710161%_)
                              (let ((_%e1006810164%_
                                     (gx#syntax-e _%tl1006710161%_)))
                                (let ((_%hd1006910168%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1006810164%_)))
                                      (_%tl1007010171%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1006810164%_))))
                                  (if (gx#stx-pair? _%tl1007010171%_)
                                      (let ((_%e1007110174%_
                                             (gx#syntax-e _%tl1007010171%_)))
                                        (let ((_%hd1007210178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1007110174%_)))
                                              (_%tl1007310181%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1007110174%_))))
                                          (if (gx#stx-null? _%tl1007310181%_)
                                              ((lambda (_%g1003710184%_
                                                        _%g1003810186%_
                                                        _%g1003910187%_
                                                        _%g1004010188%_
                                                        _%g1004110189%_
                                                        _%g1004210190%_
                                                        _%g1004310191%_)
                                                 (let* ((_%g1023010238%_
                                                         (lambda (_%g1023110234%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g1023110234%_)))
                                                        (_%g1022910258%_
                                                         (lambda (_%g1023110242%_)
                                                           ((lambda (_%g1023210245%_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'let)
                            (cons (cons (cons _%g1004210190%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons '()
                                                                (cons _%g1003910187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons _%g1004110189%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g1003810186%_ '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fixnum?)
                                                          (cons _%g1004310191%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons (cons (gx#datum->syntax '#f 'and)
                                    (cons (cons (gx#datum->syntax '#f '##fx>=)
                                                (cons _%g1004310191%_
                                                      (cons '0 '())))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx<)
                                                      (cons _%g1004310191%_
                                                            (cons _%g1003710184%_
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
                          (cons _%g1004110189%_ (cons _%g1004310191%_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%g1023210245%_ '())))
                                    (cons (cons _%g1004210190%_ '()) '()))))
                  (cons (cons _%g1004210190%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))
                    _%g1023110242%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g1022910258%_
                                                    (if _%dense?10030%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'x)
                            (foldr (lambda (_%g1026110264%_ _%g1026210267%_)
                                     (cons _%g1026110264%_ _%g1026210267%_))
                                   '()
                                   _%g1004010188%_)))
                (cons (gx#datum->syntax '#f 'if)
                      (cons (gx#datum->syntax '#f 'x)
                            (cons (cons (gx#datum->syntax '#f '~case-dispatch)
                                        (cons (gx#datum->syntax '#f 'x)
                                              (foldr (lambda (_%g1026910272%_
                                                              _%g1027010275%_)
                                                       (cons _%g1026910272%_
                                                             _%g1027010275%_))
                                                     '()
                                                     _%g1004010188%_)))
                                  (cons (cons _%g1004210190%_ '()) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1007210178%_
                                               _%hd1006910168%_
                                               _%hd1006610158%_
                                               _%dispatch1006410151%_
                                               _%hd1005110110%_
                                               _%hd1004810100%_
                                               _%hd1004510090%_)
                                              (_%g1003510079%_
                                               _%g1003610083%_))))
                                      (_%g1003510079%_ _%g1003610083%_))))
                              (_%g1003510079%_ _%g1003610083%_))))
                      (_%g1003510079%_ _%g1003610083%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop1005910132%_
                                           _%target1005610126%_
                                           '()))
                                        (_%g1003510079%_ _%g1003610083%_)))))
                              (_%g1003510079%_ _%g1003610083%_))))
                      (_%g1003510079%_ _%g1003610083%_))))
              (_%g1003510079%_ _%g1003610083%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1003510079%_
                                               _%g1003610083%_))))
                                      (_%g1003510079%_ _%g1003610083%_)))))
                          (_%g1003410278%_
                           (list _%e10018%_
                                 (gx#genident 'default)
                                 (gx#genident 'table)
                                 _%dispatch10021%_
                                 _%default10022%_
                                 _%tab10027%_
                                 (vector-length _%tab10027%_))))
                        (_%generate-fixnum-dispatch/hash9399%_
                         _%e10018%_
                         _%datums10020%_
                         _%dispatch10021%_
                         _%default10022%_))))
                 (_%generate-fixnum-dispatch/hash9399%_
                  (lambda (_%e9798%_
                           _%datums9800%_
                           _%dispatch9801%_
                           _%default9802%_)
                    (let* ((_%indexes9804%_
                            (_%datum-dispatch-index9385%_ _%datums9800%_))
                           (_%tab9807%_
                            (_%generate-hash-dispatch-table9387%_
                             _%indexes9804%_
                             values))
                           (_%g98129856%_
                            (lambda (_%g98139852%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g98139852%_)))
                           (_%g981110014%_
                            (lambda (_%g98139860%_)
                              (if (gx#stx-pair? _%g98139860%_)
                                  (let ((_%e98219863%_
                                         (gx#syntax-e _%g98139860%_)))
                                    (let ((_%hd98229867%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e98219863%_)))
                                          (_%tl98239870%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e98219863%_))))
                                      (if (gx#stx-pair? _%tl98239870%_)
                                          (let ((_%e98249873%_
                                                 (gx#syntax-e _%tl98239870%_)))
                                            (let ((_%hd98259877%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e98249873%_)))
                                                  (_%tl98269880%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e98249873%_))))
                                              (if (gx#stx-pair? _%tl98269880%_)
                                                  (let ((_%e98279883%_
                                                         (gx#syntax-e
                                                          _%tl98269880%_)))
                                                    (let ((_%hd98289887%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e98279883%_)))
                                                          (_%tl98299890%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e98279883%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl98299890%_)
                                                          (let ((_%e98309893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl98299890%_)))
                    (let ((_%hd98319897%_
                           (let () (declare (not safe)) (##car _%e98309893%_)))
                          (_%tl98329900%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e98309893%_))))
                      (if (gx#stx-pair/null? _%hd98319897%_)
                          (let ((_g20978_
                                 (gx#syntax-split-splice _%hd98319897%_ '0)))
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
                                    (error "Context expects 2 values"
                                           _g20979_)))
                              (let ((_%target98339903%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g20978_ 0)))
                                    (_%tl98359906%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g20978_ 1))))
                                (if (gx#stx-null? _%tl98359906%_)
                                    (letrec ((_%loop98369909%_
                                              (lambda (_%hd98349913%_
                                                       _%dispatch98409916%_)
                                                (if (gx#stx-pair?
                                                     _%hd98349913%_)
                                                    (let ((_%e98379918%_
                                                           (gx#syntax-e
                                                            _%hd98349913%_)))
                                                      (let ((_%lp-hd98389922%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e98379918%_)))
                    (_%lp-tl98399925%_
                     (let () (declare (not safe)) (##cdr _%e98379918%_))))
                (_%loop98369909%_
                 _%lp-tl98399925%_
                 (cons _%lp-hd98389922%_ _%dispatch98409916%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch98419928%_
                                                           (reverse _%dispatch98409916%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl98329900%_)
                                                          (let ((_%e98429931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl98329900%_)))
                    (let ((_%hd98439935%_
                           (let () (declare (not safe)) (##car _%e98429931%_)))
                          (_%tl98449938%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e98429931%_))))
                      (if (gx#stx-pair? _%tl98449938%_)
                          (let ((_%e98459941%_ (gx#syntax-e _%tl98449938%_)))
                            (let ((_%hd98469945%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e98459941%_)))
                                  (_%tl98479948%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e98459941%_))))
                              (if (gx#stx-pair? _%tl98479948%_)
                                  (let ((_%e98489951%_
                                         (gx#syntax-e _%tl98479948%_)))
                                    (let ((_%hd98499955%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e98489951%_)))
                                          (_%tl98509958%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e98489951%_))))
                                      (if (gx#stx-null? _%tl98509958%_)
                                          ((lambda (_%g98149961%_
                                                    _%g98159963%_
                                                    _%g98169964%_
                                                    _%g98179965%_
                                                    _%g98189966%_
                                                    _%g98199967%_
                                                    _%g98209968%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%g98199967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%g98169964%_ '())))
                                   '()))
                       (cons (cons _%g98189966%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%g98159963%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                         (cons _%g98209968%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ix)
                         (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                     (cons _%g98209968%_
                                           (cons _%g98149961%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'q)
                               (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                           (cons _%g98189966%_
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
                     (cons _%g98209968%_ '())))
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
                                             (foldr (lambda (_%g1000510008%_
                                                             _%g1000610011%_)
                                                      (cons _%g1000510008%_
                                                            _%g1000610011%_))
                                                    '()
                                                    _%g98179965%_)))
                                 '())))
               (cons (cons _%g98199967%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%g98199967%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%g98199967%_ '()) '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd98499955%_
                                           _%hd98469945%_
                                           _%hd98439935%_
                                           _%dispatch98419928%_
                                           _%hd98289887%_
                                           _%hd98259877%_
                                           _%hd98229867%_)
                                          (_%g98129856%_ _%g98139860%_))))
                                  (_%g98129856%_ _%g98139860%_))))
                          (_%g98129856%_ _%g98139860%_))))
                  (_%g98129856%_ _%g98139860%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop98369909%_
                                       _%target98339903%_
                                       '()))
                                    (_%g98129856%_ _%g98139860%_)))))
                          (_%g98129856%_ _%g98139860%_))))
                  (_%g98129856%_ _%g98139860%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g98129856%_
                                                   _%g98139860%_))))
                                          (_%g98129856%_ _%g98139860%_))))
                                  (_%g98129856%_ _%g98139860%_)))))
                      (_%g981110014%_
                       (list _%e9798%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch9801%_
                             _%default9802%_
                             _%tab9807%_
                             (vector-length _%tab9807%_))))))
                 (_%generate-generic-dispatch9400%_
                  (lambda (_%e9536%_
                           _%datums9538%_
                           _%dispatch9539%_
                           _%default9540%_)
                    (let ((_g20980_
                           (if (_%eq-datums?9383%_ _%datums9538%_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_%hash-e9542%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g20980_ 0)))
                              (_%hashf9544%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g20980_ 1)))
                              (_%eqf9545%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g20980_ 2))))
                          (let* ((_%indexes9547%_
                                  (_%datum-dispatch-index9385%_
                                   _%datums9538%_))
                                 (_%tab9550%_
                                  (_%generate-hash-dispatch-table9387%_
                                   _%indexes9547%_
                                   _%hash-e9542%_))
                                 (_%g95559607%_
                                  (lambda (_%g95569603%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g95569603%_)))
                                 (_%g95549794%_
                                  (lambda (_%g95569611%_)
                                    (if (gx#stx-pair? _%g95569611%_)
                                        (let ((_%e95669614%_
                                               (gx#syntax-e _%g95569611%_)))
                                          (let ((_%hd95679618%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e95669614%_)))
                                                (_%tl95689621%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e95669614%_))))
                                            (if (gx#stx-pair? _%tl95689621%_)
                                                (let ((_%e95699624%_
                                                       (gx#syntax-e
                                                        _%tl95689621%_)))
                                                  (let ((_%hd95709628%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e95699624%_)))
                                                        (_%tl95719631%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e95699624%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl95719631%_)
                                                        (let ((_%e95729634%_
                                                               (gx#syntax-e
                                                                _%tl95719631%_)))
                                                          (let ((_%hd95739638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e95729634%_)))
                        (_%tl95749641%_
                         (let () (declare (not safe)) (##cdr _%e95729634%_))))
                    (if (gx#stx-pair? _%tl95749641%_)
                        (let ((_%e95759644%_ (gx#syntax-e _%tl95749641%_)))
                          (let ((_%hd95769648%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e95759644%_)))
                                (_%tl95779651%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e95759644%_))))
                            (if (gx#stx-pair/null? _%hd95769648%_)
                                (let ((_g20981_
                                       (gx#syntax-split-splice
                                        _%hd95769648%_
                                        '0)))
                                  (begin
                                    (let ((_g20982_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g20981_)
                                                 (##values-length _g20981_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g20982_ 2)))
                                          (error "Context expects 2 values"
                                                 _g20982_)))
                                    (let ((_%target95789654%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g20981_ 0)))
                                          (_%tl95809657%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g20981_ 1))))
                                      (if (gx#stx-null? _%tl95809657%_)
                                          (letrec ((_%loop95819660%_
                                                    (lambda (_%hd95799664%_
                                                             _%dispatch95859667%_)
                                                      (if (gx#stx-pair?
                                                           _%hd95799664%_)
                                                          (let ((_%e95829669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd95799664%_)))
                    (let ((_%lp-hd95839673%_
                           (let () (declare (not safe)) (##car _%e95829669%_)))
                          (_%lp-tl95849676%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e95829669%_))))
                      (_%loop95819660%_
                       _%lp-tl95849676%_
                       (cons _%lp-hd95839673%_ _%dispatch95859667%_))))
                  (let ((_%dispatch95869679%_ (reverse _%dispatch95859667%_)))
                    (if (gx#stx-pair? _%tl95779651%_)
                        (let ((_%e95879682%_ (gx#syntax-e _%tl95779651%_)))
                          (let ((_%hd95889686%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e95879682%_)))
                                (_%tl95899689%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e95879682%_))))
                            (if (gx#stx-pair? _%tl95899689%_)
                                (let ((_%e95909692%_
                                       (gx#syntax-e _%tl95899689%_)))
                                  (let ((_%hd95919696%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e95909692%_)))
                                        (_%tl95929699%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e95909692%_))))
                                    (if (gx#stx-pair? _%tl95929699%_)
                                        (let ((_%e95939702%_
                                               (gx#syntax-e _%tl95929699%_)))
                                          (let ((_%hd95949706%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e95939702%_)))
                                                (_%tl95959709%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e95939702%_))))
                                            (if (gx#stx-pair? _%tl95959709%_)
                                                (let ((_%e95969712%_
                                                       (gx#syntax-e
                                                        _%tl95959709%_)))
                                                  (let ((_%hd95979716%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e95969712%_)))
                                                        (_%tl95989719%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e95969712%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl95989719%_)
                                                        (let ((_%e95999722%_
                                                               (gx#syntax-e
                                                                _%tl95989719%_)))
                                                          (let ((_%hd96009726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e95999722%_)))
                        (_%tl96019729%_
                         (let () (declare (not safe)) (##cdr _%e95999722%_))))
                    (if (gx#stx-null? _%tl96019729%_)
                        ((lambda (_%g95579732%_
                                  _%g95589734%_
                                  _%g95599735%_
                                  _%g95609736%_
                                  _%g95619737%_
                                  _%g95629738%_
                                  _%g95639739%_
                                  _%g95649740%_
                                  _%g95659741%_)
                           (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (cons _%g95649740%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%g95619737%_ '())))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _%g95639739%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _%g95609736%_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'h)
                             (cons (cons _%g95589734%_
                                         (cons _%g95659741%_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'ix)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##fxmodulo)
                                               (cons (gx#datum->syntax '#f 'h)
                                                     (cons _%g95599735%_ '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'q)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##vector-ref)
                                                     (cons _%g95639739%_
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
                                               (cons (cons _%g95579732%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##car)
                               (cons (gx#datum->syntax '#f 'q) '()))
                         (cons _%g95659741%_ '())))
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
                                                 (foldr (lambda (_%g97859788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g97869791%_)
                  (cons _%g97859788%_ _%g97869791%_))
                '()
                _%g95629738%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons _%g95649740%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%g95649740%_ '()) '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))
                         _%hd96009726%_
                         _%hd95979716%_
                         _%hd95949706%_
                         _%hd95919696%_
                         _%hd95889686%_
                         _%dispatch95869679%_
                         _%hd95739638%_
                         _%hd95709628%_
                         _%hd95679618%_)
                        (_%g95559607%_ _%g95569611%_))))
                (_%g95559607%_ _%g95569611%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g95559607%_
                                                 _%g95569611%_))))
                                        (_%g95559607%_ _%g95569611%_))))
                                (_%g95559607%_ _%g95569611%_))))
                        (_%g95559607%_ _%g95569611%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop95819660%_
                                             _%target95789654%_
                                             '()))
                                          (_%g95559607%_ _%g95569611%_)))))
                                (_%g95559607%_ _%g95569611%_))))
                        (_%g95559607%_ _%g95569611%_))))
                (_%g95559607%_ _%g95569611%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g95559607%_
                                                 _%g95569611%_))))
                                        (_%g95559607%_ _%g95569611%_)))))
                            (_%g95549794%_
                             (list _%e9536%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch9539%_
                                   _%default9540%_
                                   _%tab9550%_
                                   (vector-length _%tab9550%_)
                                   _%hashf9544%_
                                   _%eqf9545%_)))))))))
          (let* ((_%g94029426%_
                  (lambda (_%g94039422%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g94039422%_)))
                 (_%g94019532%_
                  (lambda (_%g94039430%_)
                    (if (gx#stx-pair? _%g94039430%_)
                        (let ((_%e94069433%_ (gx#syntax-e _%g94039430%_)))
                          (let ((_%hd94079437%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e94069433%_)))
                                (_%tl94089440%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e94069433%_))))
                            (if (gx#stx-pair? _%tl94089440%_)
                                (let ((_%e94099443%_
                                       (gx#syntax-e _%tl94089440%_)))
                                  (let ((_%hd94109447%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e94099443%_)))
                                        (_%tl94119450%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e94099443%_))))
                                    (if (gx#stx-pair/null? _%tl94119450%_)
                                        (let ((_g20983_
                                               (gx#syntax-split-splice
                                                _%tl94119450%_
                                                '0)))
                                          (begin
                                            (let ((_g20984_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g20983_)
                                                         (##values-length
                                                          _g20983_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g20984_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g20984_)))
                                            (let ((_%target94129453%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20983_
                                                      0)))
                                                  (_%tl94149456%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20983_
                                                      1))))
                                              (if (gx#stx-null? _%tl94149456%_)
                                                  (letrec ((_%loop94159459%_
                                                            (lambda (_%hd94139463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause94199466%_)
                      (if (gx#stx-pair? _%hd94139463%_)
                          (let ((_%e94169468%_ (gx#syntax-e _%hd94139463%_)))
                            (let ((_%lp-hd94179472%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e94169468%_)))
                                  (_%lp-tl94189475%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e94169468%_))))
                              (_%loop94159459%_
                               _%lp-tl94189475%_
                               (cons _%lp-hd94179472%_ _%clause94199466%_))))
                          (let ((_%clause94209478%_
                                 (reverse _%clause94199466%_)))
                            ((lambda (_%g94049481%_ _%g94059483%_)
                               (let ((_g20985_
                                      (_%parse-clauses9376%_
                                       _%g94059483%_
                                       (foldr (lambda (_%g95019504%_
                                                       _%g95029507%_)
                                                (cons _%g95019504%_
                                                      _%g95029507%_))
                                              '()
                                              _%g94049481%_))))
                                 (begin
                                   (let ((_g20986_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g20985_)
                                                (##values-length _g20985_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g20986_ 3)))
                                         (error "Context expects 3 values"
                                                _g20986_)))
                                   (let ((_%datums9510%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g20985_ 0)))
                                         (_%dispatch9512%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g20985_ 1)))
                                         (_%default9513%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g20985_ 2))))
                                     (let ((_%datum-count9515%_
                                            (_%count-datums9379%_
                                             _%datums9510%_)))
                                       (if (< _%datum-count9515%_ '6)
                                           (_%generate-simple-case9384%_
                                            _%g94059483%_
                                            _%datums9510%_
                                            _%dispatch9512%_
                                            _%default9513%_)
                                           (if (_%char-datums?9381%_
                                                _%datums9510%_)
                                               (_%generate-char-dispatch9393%_
                                                _%g94059483%_
                                                _%datums9510%_
                                                _%dispatch9512%_
                                                _%default9513%_)
                                               (if (_%fixnum-datums?9382%_
                                                    _%datums9510%_)
                                                   (_%generate-fixnum-dispatch9398%_
                                                    _%g94059483%_
                                                    _%datums9510%_
                                                    _%dispatch9512%_
                                                    _%default9513%_)
                                                   (if (< _%datum-count9515%_
                                                          '12)
                                                       (_%generate-simple-case9384%_
                                                        _%g94059483%_
                                                        _%datums9510%_
                                                        _%dispatch9512%_
                                                        _%default9513%_)
                                                       (if (_%symbolic-datums?9380%_
                                                            _%datums9510%_)
                                                           (_%generate-symbolic-dispatch9388%_
                                                            _%g94059483%_
                                                            _%datums9510%_
                                                            _%dispatch9512%_
                                                            _%default9513%_)
                                                           (_%generate-generic-dispatch9400%_
                                                            _%g94059483%_
                                                            _%datums9510%_
                                                            _%dispatch9512%_
                                                            _%default9513%_)))))))))))
                             _%clause94209478%_
                             _%hd94109447%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop94159459%_
                                                     _%target94129453%_
                                                     '()))
                                                  (_%g94029426%_
                                                   _%g94039430%_)))))
                                        (_%g94029426%_ _%g94039430%_))))
                                (_%g94029426%_ _%g94039430%_))))
                        (_%g94029426%_ _%g94039430%_)))))
            (_%g94019532%_ _%stx9373%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-test|
      (lambda (_%stx12410%_)
        (let* ((_%g1241312431%_
                (lambda (_%g1241412427%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1241412427%_)))
               (_%g1241212503%_
                (lambda (_%g1241412435%_)
                  (if (gx#stx-pair? _%g1241412435%_)
                      (let ((_%e1241712438%_ (gx#syntax-e _%g1241412435%_)))
                        (let ((_%hd1241812442%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1241712438%_)))
                              (_%tl1241912445%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1241712438%_))))
                          (if (gx#stx-pair? _%tl1241912445%_)
                              (let ((_%e1242012448%_
                                     (gx#syntax-e _%tl1241912445%_)))
                                (let ((_%hd1242112452%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1242012448%_)))
                                      (_%tl1242212455%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1242012448%_))))
                                  (if (gx#stx-pair? _%tl1242212455%_)
                                      (let ((_%e1242312458%_
                                             (gx#syntax-e _%tl1242212455%_)))
                                        (let ((_%hd1242412462%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1242312458%_)))
                                              (_%tl1242512465%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1242312458%_))))
                                          (if (gx#stx-null? _%tl1242512465%_)
                                              ((lambda (_%g1241512468%_
                                                        _%g1241612470%_)
                                                 (let ((_%datum-e12486%_
                                                        (gx#stx-e
                                                         _%g1241612470%_)))
                                                   (if (or (symbol? _%datum-e12486%_)
                                                           (keyword?
                                                            _%datum-e12486%_)
                                                           (immediate?
                                                            _%datum-e12486%_))
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%g1241612470%_ '()))
                           (cons _%g1241512468%_ '())))
               (if (number? _%datum-e12486%_)
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g1241612470%_ '()))
                               (cons _%g1241512468%_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g1241612470%_ '()))
                               (cons _%g1241512468%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1242412462%_
                                               _%hd1242112452%_)
                                              (_%g1241312431%_
                                               _%g1241412435%_))))
                                      (_%g1241312431%_ _%g1241412435%_))))
                              (_%g1241312431%_ _%g1241412435%_))))
                      (_%g1241312431%_ _%g1241412435%_)))))
          (_%g1241212503%_ _%stx12410%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch|
      (lambda (_%$stx12507%_)
        (let* ((_%g1251112535%_
                (lambda (_%g1251212531%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1251212531%_)))
               (_%g1251012618%_
                (lambda (_%g1251212539%_)
                  (if (gx#stx-pair? _%g1251212539%_)
                      (let ((_%e1251512542%_ (gx#syntax-e _%g1251212539%_)))
                        (let ((_%hd1251612546%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1251512542%_)))
                              (_%tl1251712549%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1251512542%_))))
                          (if (gx#stx-pair? _%tl1251712549%_)
                              (let ((_%e1251812552%_
                                     (gx#syntax-e _%tl1251712549%_)))
                                (let ((_%hd1251912556%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1251812552%_)))
                                      (_%tl1252012559%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1251812552%_))))
                                  (if (gx#stx-pair/null? _%tl1252012559%_)
                                      (let ((_g20987_
                                             (gx#syntax-split-splice
                                              _%tl1252012559%_
                                              '0)))
                                        (begin
                                          (let ((_g20988_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20987_)
                                                       (##values-length
                                                        _g20987_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20988_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20988_)))
                                          (let ((_%target1252112562%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20987_ 0)))
                                                (_%tl1252312565%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20987_ 1))))
                                            (if (gx#stx-null? _%tl1252312565%_)
                                                (letrec ((_%loop1252412568%_
                                                          (lambda (_%hd1252212572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%K1252812575%_)
                    (if (gx#stx-pair? _%hd1252212572%_)
                        (let ((_%e1252512577%_ (gx#syntax-e _%hd1252212572%_)))
                          (let ((_%lp-hd1252612581%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1252512577%_)))
                                (_%lp-tl1252712584%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1252512577%_))))
                            (_%loop1252412568%_
                             _%lp-tl1252712584%_
                             (cons _%lp-hd1252612581%_ _%K1252812575%_))))
                        (let ((_%K1252912587%_ (reverse _%K1252812575%_)))
                          ((lambda (_%g1251312590%_ _%g1251412592%_)
                             (cons (gx#datum->syntax '#f '~case-dispatch*)
                                   (cons '0
                                         (cons _%g1251412592%_
                                               (foldr (lambda (_%g1260912612%_
                                                               _%g1261012615%_)
                                                        (cons _%g1260912612%_
                                                              _%g1261012615%_))
                                                      '()
                                                      _%g1251312590%_)))))
                           _%K1252912587%_
                           _%hd1251912556%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1252412568%_
                                                   _%target1252112562%_
                                                   '()))
                                                (_%g1251112535%_
                                                 _%g1251212539%_)))))
                                      (_%g1251112535%_ _%g1251212539%_))))
                              (_%g1251112535%_ _%g1251212539%_))))
                      (_%g1251112535%_ _%g1251212539%_)))))
          (_%g1251012618%_ _%$stx12507%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch*|
      (lambda (_%stx12623%_)
        (let* ((_%__stx1966119662%_ _%stx12623%_)
               (_%g1263012726%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1966119662%_))))
          (let ((_%__kont1966419665%_
                 (lambda (_%g1263213201%_ _%g1263313203%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons '#!void '()))))
                (_%__kont1966619667%_
                 (lambda (_%g1264313143%_ _%g1264413145%_ _%g1264513146%_)
                   _%g1264313143%_))
                (_%__kont1966819669%_
                 (lambda (_%g1265813040%_
                          _%g1265913042%_
                          _%g1266013043%_
                          _%g1266113044%_)
                   (let* ((_%g1306513073%_
                           (lambda (_%g1306613069%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1306613069%_)))
                          (_%g1306413092%_
                           (lambda (_%g1306613077%_)
                             ((lambda (_%g1306713080%_)
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons _%g1266013043%_
                                                        (cons _%g1306713080%_
                                                              '())))
                                            (cons _%g1265913042%_
                                                  (cons _%g1265813040%_
                                                        '())))))
                              _%g1306613077%_))))
                     (_%g1306413092%_ (gx#stx-e _%g1266113044%_)))))
                (_%__kont1967019671%_
                 (lambda (_%g1267712890%_
                          _%g1267812892%_
                          _%g1267912893%_
                          _%g1268012894%_
                          _%g1268112895%_)
                   (let* ((_%g1291912934%_
                           (lambda (_%g1292012930%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1292012930%_)))
                          (_%g1291812979%_
                           (lambda (_%g1292012938%_)
                             (if (gx#stx-pair? _%g1292012938%_)
                                 (let ((_%e1292312941%_
                                        (gx#syntax-e _%g1292012938%_)))
                                   (let ((_%hd1292412945%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e1292312941%_)))
                                         (_%tl1292512948%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e1292312941%_))))
                                     (if (gx#stx-pair? _%tl1292512948%_)
                                         (let ((_%e1292612951%_
                                                (gx#syntax-e
                                                 _%tl1292512948%_)))
                                           (let ((_%hd1292712955%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e1292612951%_)))
                                                 (_%tl1292812958%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e1292612951%_))))
                                             (if (gx#stx-null?
                                                  _%tl1292812958%_)
                                                 ((lambda (_%g1292112961%_
                                                           _%g1292212963%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons _%g1268012894%_
                                    (cons _%g1292212963%_ '())))
                        (cons _%g1267912893%_
                              (cons (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx=)
                                                      (cons _%g1268012894%_
                                                            (cons _%g1292112961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%g1267812892%_
                                                      (cons _%g1267712890%_
                                                            '()))))
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd1292712955%_
                                                  _%hd1292412945%_)
                                                 (_%g1291912934%_
                                                  _%g1292012938%_))))
                                         (_%g1291912934%_ _%g1292012938%_))))
                                 (_%g1291912934%_ _%g1292012938%_)))))
                     (_%g1291812979%_
                      (list (gx#stx-e _%g1268112895%_)
                            (fx1+ (gx#stx-e _%g1268112895%_)))))))
                (_%__kont1967219673%_
                 (lambda (_%g1270012791%_ _%g1270112793%_ _%g1270212794%_)
                   (cons (gx#datum->syntax '#f '~case-dispatch-bsearch)
                         (cons _%g1270212794%_
                               (cons _%g1270112793%_
                                     (foldr (lambda (_%g1281412817%_
                                                     _%g1281512820%_)
                                              (cons _%g1281412817%_
                                                    _%g1281512820%_))
                                            '()
                                            _%g1270012791%_)))))))
            (let ((_%__match1981819819%_
                   (lambda (_%e1270312733%_
                            _%hd1270412737%_
                            _%tl1270512740%_
                            _%e1270612743%_
                            _%hd1270712747%_
                            _%tl1270812750%_
                            _%e1270912753%_
                            _%hd1271012757%_
                            _%tl1271112760%_
                            _%__splice1967419675%_
                            _%target1271212763%_
                            _%tl1271412766%_)
                     (letrec ((_%loop1271512769%_
                               (lambda (_%hd1271312773%_ _%K1271912776%_)
                                 (if (gx#stx-pair? _%hd1271312773%_)
                                     (let ((_%e1271612778%_
                                            (gx#syntax-e _%hd1271312773%_)))
                                       (let ((_%lp-tl1271812785%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1271612778%_)))
                                             (_%lp-hd1271712782%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1271612778%_))))
                                         (_%loop1271512769%_
                                          _%lp-tl1271812785%_
                                          (cons _%lp-hd1271712782%_
                                                _%K1271912776%_))))
                                     (let ((_%K1272012788%_
                                            (reverse _%K1271912776%_)))
                                       (_%__kont1967219673%_
                                        _%K1272012788%_
                                        _%hd1271012757%_
                                        _%hd1270712747%_))))))
                       (_%loop1271512769%_ _%target1271212763%_ '())))))
              (if (gx#stx-pair? _%__stx1966119662%_)
                  (let ((_%e1263413171%_ (gx#syntax-e _%__stx1966119662%_)))
                    (let ((_%tl1263613178%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1263413171%_)))
                          (_%hd1263513175%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1263413171%_))))
                      (if (gx#stx-pair? _%tl1263613178%_)
                          (let ((_%e1263713181%_
                                 (gx#syntax-e _%tl1263613178%_)))
                            (let ((_%tl1263913188%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1263713181%_)))
                                  (_%hd1263813185%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1263713181%_))))
                              (if (gx#stx-pair? _%tl1263913188%_)
                                  (let ((_%e1264013191%_
                                         (gx#syntax-e _%tl1263913188%_)))
                                    (let ((_%tl1264213198%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1264013191%_)))
                                          (_%hd1264113195%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1264013191%_))))
                                      (if (gx#stx-null? _%tl1264213198%_)
                                          (_%__kont1966419665%_
                                           _%hd1264113195%_
                                           _%hd1263813185%_)
                                          (if (gx#stx-pair? _%tl1264213198%_)
                                              (let ((_%e1265513133%_
                                                     (gx#syntax-e
                                                      _%tl1264213198%_)))
                                                (let ((_%tl1265713140%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1265513133%_)))
                                                      (_%hd1265613137%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1265513133%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1265713140%_)
                                                      (_%__kont1966619667%_
                                                       _%hd1265613137%_
                                                       _%hd1264113195%_
                                                       _%hd1263813185%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1265713140%_)
                                                          (let ((_%e1267413030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1265713140%_)))
                    (let ((_%tl1267613037%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1267413030%_)))
                          (_%hd1267513034%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1267413030%_))))
                      (if (gx#stx-null? _%tl1267613037%_)
                          (_%__kont1966819669%_
                           _%hd1267513034%_
                           _%hd1265613137%_
                           _%hd1264113195%_
                           _%hd1263813185%_)
                          (if (gx#stx-pair? _%tl1267613037%_)
                              (let ((_%e1269712880%_
                                     (gx#syntax-e _%tl1267613037%_)))
                                (let ((_%tl1269912887%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1269712880%_)))
                                      (_%hd1269812884%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1269712880%_))))
                                  (if (gx#stx-null? _%tl1269912887%_)
                                      (_%__kont1967019671%_
                                       _%hd1269812884%_
                                       _%hd1267513034%_
                                       _%hd1265613137%_
                                       _%hd1264113195%_
                                       _%hd1263813185%_)
                                      (if (gx#stx-pair/null? _%tl1264213198%_)
                                          (let ((_%__splice1967419675%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1264213198%_
                                                  '0)))
                                            (let ((_%tl1271412766%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1967419675%_
                                                      '1)))
                                                  (_%target1271212763%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1967419675%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1271412766%_)
                                                  (_%__match1981819819%_
                                                   _%e1263413171%_
                                                   _%hd1263513175%_
                                                   _%tl1263613178%_
                                                   _%e1263713181%_
                                                   _%hd1263813185%_
                                                   _%tl1263913188%_
                                                   _%e1264013191%_
                                                   _%hd1264113195%_
                                                   _%tl1264213198%_
                                                   _%__splice1967419675%_
                                                   _%target1271212763%_
                                                   _%tl1271412766%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1263012726%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1263012726%_))))))
                              (if (gx#stx-pair/null? _%tl1264213198%_)
                                  (let ((_%__splice1967419675%_
                                         (gx#syntax-split-splice->vector
                                          _%tl1264213198%_
                                          '0)))
                                    (let ((_%tl1271412766%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1967419675%_
                                              '1)))
                                          (_%target1271212763%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1967419675%_
                                              '0))))
                                      (if (gx#stx-null? _%tl1271412766%_)
                                          (_%__match1981819819%_
                                           _%e1263413171%_
                                           _%hd1263513175%_
                                           _%tl1263613178%_
                                           _%e1263713181%_
                                           _%hd1263813185%_
                                           _%tl1263913188%_
                                           _%e1264013191%_
                                           _%hd1264113195%_
                                           _%tl1264213198%_
                                           _%__splice1967419675%_
                                           _%target1271212763%_
                                           _%tl1271412766%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g1263012726%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1263012726%_)))))))
                  (if (gx#stx-pair/null? _%tl1264213198%_)
                      (let ((_%__splice1967419675%_
                             (gx#syntax-split-splice->vector
                              _%tl1264213198%_
                              '0)))
                        (let ((_%tl1271412766%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1967419675%_ '1)))
                              (_%target1271212763%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1967419675%_ '0))))
                          (if (gx#stx-null? _%tl1271412766%_)
                              (_%__match1981819819%_
                               _%e1263413171%_
                               _%hd1263513175%_
                               _%tl1263613178%_
                               _%e1263713181%_
                               _%hd1263813185%_
                               _%tl1263913188%_
                               _%e1264013191%_
                               _%hd1264113195%_
                               _%tl1264213198%_
                               _%__splice1967419675%_
                               _%target1271212763%_
                               _%tl1271412766%_)
                              (let ()
                                (declare (not safe))
                                (_%g1263012726%_)))))
                      (let () (declare (not safe)) (_%g1263012726%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl1264213198%_)
                                                  (let ((_%__splice1967419675%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl1264213198%_
                                                          '0)))
                                                    (let ((_%tl1271412766%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1967419675%_
                                                              '1)))
                                                          (_%target1271212763%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1967419675%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl1271412766%_)
                                                          (_%__match1981819819%_
                                                           _%e1263413171%_
                                                           _%hd1263513175%_
                                                           _%tl1263613178%_
                                                           _%e1263713181%_
                                                           _%hd1263813185%_
                                                           _%tl1263913188%_
                                                           _%e1264013191%_
                                                           _%hd1264113195%_
                                                           _%tl1264213198%_
                                                           _%__splice1967419675%_
                                                           _%target1271212763%_
                                                           _%tl1271412766%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g1263012726%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1263012726%_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1263012726%_)))))
                          (let () (declare (not safe)) (_%g1263012726%_)))))
                  (let () (declare (not safe)) (_%g1263012726%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch-bsearch|
      (lambda (_%stx13223%_)
        (letrec ((_%split13226%_
                  (lambda (_%lst13581%_ _%mid13583%_)
                    (let _%lp13585%_ ((_%i13588%_ '0)
                                      (_%rest13590%_ _%lst13581%_)
                                      (_%left13591%_ '()))
                      (if (fx< _%i13588%_ _%mid13583%_)
                          (_%lp13585%_
                           (fx1+ _%i13588%_)
                           (cdr _%rest13590%_)
                           (cons (car _%rest13590%_) _%left13591%_))
                          (values (reverse _%left13591%_) _%rest13590%_))))))
          (let* ((_%g1322913257%_
                  (lambda (_%g1323013253%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1323013253%_)))
                 (_%g1322813577%_
                  (lambda (_%g1323013261%_)
                    (if (gx#stx-pair? _%g1323013261%_)
                        (let ((_%e1323413264%_ (gx#syntax-e _%g1323013261%_)))
                          (let ((_%hd1323513268%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1323413264%_)))
                                (_%tl1323613271%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1323413264%_))))
                            (if (gx#stx-pair? _%tl1323613271%_)
                                (let ((_%e1323713274%_
                                       (gx#syntax-e _%tl1323613271%_)))
                                  (let ((_%hd1323813278%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1323713274%_)))
                                        (_%tl1323913281%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1323713274%_))))
                                    (if (gx#stx-pair? _%tl1323913281%_)
                                        (let ((_%e1324013284%_
                                               (gx#syntax-e _%tl1323913281%_)))
                                          (let ((_%hd1324113288%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1324013284%_)))
                                                (_%tl1324213291%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1324013284%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl1324213291%_)
                                                (let ((_g20989_
                                                       (gx#syntax-split-splice
                                                        _%tl1324213291%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20990_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20989_)
                         (##values-length _g20989_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20990_ 2)))
                  (error "Context expects 2 values" _g20990_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target1324313294%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20989_
                                                              0)))
                                                          (_%tl1324513297%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20989_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl1324513297%_)
                                                          (letrec ((_%loop1324613300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd1324413304%_ _%K1325013307%_)
                              (if (gx#stx-pair? _%hd1324413304%_)
                                  (let ((_%e1324713309%_
                                         (gx#syntax-e _%hd1324413304%_)))
                                    (let ((_%lp-hd1324813313%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1324713309%_)))
                                          (_%lp-tl1324913316%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1324713309%_))))
                                      (_%loop1324613300%_
                                       _%lp-tl1324913316%_
                                       (cons _%lp-hd1324813313%_
                                             _%K1325013307%_))))
                                  (let ((_%K1325113319%_
                                         (reverse _%K1325013307%_)))
                                    ((lambda (_%g1323113322%_
                                              _%g1323213324%_
                                              _%g1323313325%_)
                                       (let* ((_%len13355%_
                                               (length (foldr (lambda (_%g1334613349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1334713352%_)
                        (cons _%g1334613349%_ _%g1334713352%_))
                      '()
                      _%g1323113322%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%mid13358%_
                                               (quotient _%len13355%_ '2))
                                              (_g20991_
                                               (_%split13226%_
                                                (foldr (lambda (_%g1336013363%_
                                                                _%g1336113366%_)
                                                         (cons _%g1336013363%_
                                                               _%g1336113366%_))
                                                       '()
                                                       _%g1323113322%_)
                                                _%mid13358%_)))
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
                                           (let ((_%left13369%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g20991_ 0)))
                                                 (_%right13371%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g20991_
                                                     1))))
                                             (let* ((_%g1337513416%_
                                                     (lambda (_%g1337613412%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g1337613412%_)))
                                                    (_%g1337413573%_
                                                     (lambda (_%g1337613420%_)
                                                       (if (gx#stx-pair?
                                                            _%g1337613420%_)
                                                           (let ((_%e1338113423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g1337613420%_)))
                     (let ((_%hd1338213427%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1338113423%_)))
                           (_%tl1338313430%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1338113423%_))))
                       (if (gx#stx-pair? _%tl1338313430%_)
                           (let ((_%e1338413433%_
                                  (gx#syntax-e _%tl1338313430%_)))
                             (let ((_%hd1338513437%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1338413433%_)))
                                   (_%tl1338613440%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1338413433%_))))
                               (if (gx#stx-pair/null? _%hd1338513437%_)
                                   (let ((_g20993_
                                          (gx#syntax-split-splice
                                           _%hd1338513437%_
                                           '0)))
                                     (begin
                                       (let ((_g20994_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20993_)
                                                    (##values-length _g20993_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20994_ 2)))
                                             (error "Context expects 2 values"
                                                    _g20994_)))
                                       (let ((_%target1338713443%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20993_ 0)))
                                             (_%tl1338913446%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20993_ 1))))
                                         (if (gx#stx-null? _%tl1338913446%_)
                                             (letrec ((_%loop1339013449%_
                                                       (lambda (_%hd1338813453%_
                                                                _%K-left1339413456%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1338813453%_)
                                                             (let ((_%e1339113458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1338813453%_)))
                       (let ((_%lp-hd1339213462%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1339113458%_)))
                             (_%lp-tl1339313465%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1339113458%_))))
                         (_%loop1339013449%_
                          _%lp-tl1339313465%_
                          (cons _%lp-hd1339213462%_ _%K-left1339413456%_))))
                     (let ((_%K-left1339513468%_
                            (reverse _%K-left1339413456%_)))
                       (if (gx#stx-pair? _%tl1338613440%_)
                           (let ((_%e1339613471%_
                                  (gx#syntax-e _%tl1338613440%_)))
                             (let ((_%hd1339713475%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1339613471%_)))
                                   (_%tl1339813478%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1339613471%_))))
                               (if (gx#stx-pair/null? _%hd1339713475%_)
                                   (let ((_g20995_
                                          (gx#syntax-split-splice
                                           _%hd1339713475%_
                                           '0)))
                                     (begin
                                       (let ((_g20996_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20995_)
                                                    (##values-length _g20995_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20996_ 2)))
                                             (error "Context expects 2 values"
                                                    _g20996_)))
                                       (let ((_%target1339913481%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20995_ 0)))
                                             (_%tl1340113484%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20995_ 1))))
                                         (if (gx#stx-null? _%tl1340113484%_)
                                             (letrec ((_%loop1340213487%_
                                                       (lambda (_%hd1340013491%_
                                                                _%K-right1340613494%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1340013491%_)
                                                             (let ((_%e1340313496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1340013491%_)))
                       (let ((_%lp-hd1340413500%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1340313496%_)))
                             (_%lp-tl1340513503%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1340313496%_))))
                         (_%loop1340213487%_
                          _%lp-tl1340513503%_
                          (cons _%lp-hd1340413500%_ _%K-right1340613494%_))))
                     (let ((_%K-right1340713506%_
                            (reverse _%K-right1340613494%_)))
                       (if (gx#stx-pair? _%tl1339813478%_)
                           (let ((_%e1340813509%_
                                  (gx#syntax-e _%tl1339813478%_)))
                             (let ((_%hd1340913513%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1340813509%_)))
                                   (_%tl1341013516%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1340813509%_))))
                               (if (gx#stx-null? _%tl1341013516%_)
                                   ((lambda (_%g1337713519%_
                                             _%g1337813521%_
                                             _%g1337913522%_
                                             _%g1338013523%_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '##fx<)
                                                        (cons _%g1323213324%_
                                                              (cons _%g1337713519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch*)
                                                              (cons _%g1323313325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g1323213324%_
                                  (foldr (lambda (_%g1355613561%_
                                                  _%g1355713564%_)
                                           (cons _%g1355613561%_
                                                 _%g1355713564%_))
                                         '()
                                         _%g1337913522%_))))
                (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                            (cons _%g1337713519%_
                                  (cons _%g1323213324%_
                                        (foldr (lambda (_%g1355813567%_
                                                        _%g1355913570%_)
                                                 (cons _%g1355813567%_
                                                       _%g1355913570%_))
                                               '()
                                               _%g1337813521%_))))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%hd1340913513%_
                                    _%K-right1340713506%_
                                    _%K-left1339513468%_
                                    _%hd1338213427%_)
                                   (_%g1337513416%_ _%g1337613420%_))))
                           (_%g1337513416%_ _%g1337613420%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1340213487%_
                                                _%target1339913481%_
                                                '()))
                                             (_%g1337513416%_
                                              _%g1337613420%_)))))
                                   (_%g1337513416%_ _%g1337613420%_))))
                           (_%g1337513416%_ _%g1337613420%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1339013449%_
                                                _%target1338713443%_
                                                '()))
                                             (_%g1337513416%_
                                              _%g1337613420%_)))))
                                   (_%g1337513416%_ _%g1337613420%_))))
                           (_%g1337513416%_ _%g1337613420%_))))
                   (_%g1337513416%_ _%g1337613420%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g1337413573%_
                                                (list _%mid13358%_
                                                      _%left13369%_
                                                      _%right13371%_
                                                      (fx+ _%mid13358%_
                                                           (gx#stx-e
                                                            _%g1323313325%_)))))))))
                                     _%K1325113319%_
                                     _%hd1324113288%_
                                     _%hd1323813278%_))))))
                    (_%loop1324613300%_ _%target1324313294%_ '()))
                  (_%g1322913257%_ _%g1323013261%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1322913257%_
                                                 _%g1323013261%_))))
                                        (_%g1322913257%_ _%g1323013261%_))))
                                (_%g1322913257%_ _%g1323013261%_))))
                        (_%g1322913257%_ _%g1323013261%_)))))
            (_%g1322813577%_ _%stx13223%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#begin0|
      (lambda (_%$stx13597%_)
        (let* ((_%__stx1982119822%_ _%$stx13597%_)
               (_%g1360213633%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1982119822%_))))
          (let ((_%__kont1982419825%_
                 (lambda (_%g1360413743%_) _%g1360413743%_))
                (_%__kont1982619827%_
                 (lambda (_%g1361113688%_ _%g1361213690%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$r)
                                     (cons _%g1361213690%_ '()))
                               (cons (cons (gx#datum->syntax '#f '%#expression)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1370713710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1370813713%_)
                        (cons _%g1370713710%_ _%g1370813713%_))
                      '()
                      _%g1361113688%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (gx#datum->syntax '#f '$r)
                                           '())))))))
            (let ((_%__match1986419865%_
                   (lambda (_%e1361313640%_
                            _%hd1361413644%_
                            _%tl1361513647%_
                            _%e1361613650%_
                            _%hd1361713654%_
                            _%tl1361813657%_
                            _%__splice1982819829%_
                            _%target1361913660%_
                            _%tl1362113663%_)
                     (letrec ((_%loop1362213666%_
                               (lambda (_%hd1362013670%_ _%rest1362613673%_)
                                 (if (gx#stx-pair? _%hd1362013670%_)
                                     (let ((_%e1362313675%_
                                            (gx#syntax-e _%hd1362013670%_)))
                                       (let ((_%lp-tl1362513682%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1362313675%_)))
                                             (_%lp-hd1362413679%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1362313675%_))))
                                         (_%loop1362213666%_
                                          _%lp-tl1362513682%_
                                          (cons _%lp-hd1362413679%_
                                                _%rest1362613673%_))))
                                     (let ((_%rest1362713685%_
                                            (reverse _%rest1362613673%_)))
                                       (_%__kont1982619827%_
                                        _%rest1362713685%_
                                        _%hd1361713654%_))))))
                       (_%loop1362213666%_ _%target1361913660%_ '())))))
              (if (gx#stx-pair? _%__stx1982119822%_)
                  (let ((_%e1360513723%_ (gx#syntax-e _%__stx1982119822%_)))
                    (let ((_%tl1360713730%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1360513723%_)))
                          (_%hd1360613727%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1360513723%_))))
                      (if (gx#stx-pair? _%tl1360713730%_)
                          (let ((_%e1360813733%_
                                 (gx#syntax-e _%tl1360713730%_)))
                            (let ((_%tl1361013740%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1360813733%_)))
                                  (_%hd1360913737%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1360813733%_))))
                              (if (gx#stx-null? _%tl1361013740%_)
                                  (_%__kont1982419825%_ _%hd1360913737%_)
                                  (if (gx#stx-pair/null? _%tl1361013740%_)
                                      (let ((_%__splice1982819829%_
                                             (gx#syntax-split-splice->vector
                                              _%tl1361013740%_
                                              '0)))
                                        (let ((_%tl1362113663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1982819829%_
                                                  '1)))
                                              (_%target1361913660%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1982819829%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1362113663%_)
                                              (_%__match1986419865%_
                                               _%e1360513723%_
                                               _%hd1360613727%_
                                               _%tl1360713730%_
                                               _%e1360813733%_
                                               _%hd1360913737%_
                                               _%tl1361013740%_
                                               _%__splice1982819829%_
                                               _%target1361913660%_
                                               _%tl1362113663%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1360213633%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1360213633%_))))))
                          (let () (declare (not safe)) (_%g1360213633%_)))))
                  (let () (declare (not safe)) (_%g1360213633%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#rec|
      (lambda (_%$stx13761%_)
        (let* ((_%__stx1986719868%_ _%$stx13761%_)
               (_%g1376713820%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1986719868%_))))
          (let ((_%__kont1987019871%_
                 (lambda (_%g1376914020%_ _%g1377014022%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%g1377014022%_
                                           (cons _%g1376914020%_ '()))
                                     '())
                               (cons _%g1377014022%_ '())))))
                (_%__kont1987219873%_
                 (lambda (_%g1378013964%_ _%g1378113966%_)
                   (cons (gx#datum->syntax '#f 'letrec-values)
                         (cons (cons (cons _%g1378113966%_
                                           (cons _%g1378013964%_ '()))
                                     '())
                               (cons (cons (gx#datum->syntax '#f 'values)
                                           _%g1378113966%_)
                                     '())))))
                (_%__kont1987419875%_
                 (lambda (_%g1379413885%_ _%g1379513887%_ _%g1379613888%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%g1379613888%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons _%g1379513887%_
                                                             (foldr (lambda (_%g1390813911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1390913914%_)
                              (cons _%g1390813911%_ _%g1390913914%_))
                            '()
                            _%g1379413885%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons _%g1379613888%_ '()))))))
            (let* ((_%__match1995419955%_
                    (lambda (_%e1379713827%_
                             _%hd1379813831%_
                             _%tl1379913834%_
                             _%e1380013837%_
                             _%hd1380113841%_
                             _%tl1380213844%_
                             _%e1380313847%_
                             _%hd1380413851%_
                             _%tl1380513854%_
                             _%__splice1987619877%_
                             _%target1380613857%_
                             _%tl1380813860%_)
                      (letrec ((_%loop1380913863%_
                                (lambda (_%hd1380713867%_ _%body1381313870%_)
                                  (if (gx#stx-pair? _%hd1380713867%_)
                                      (let ((_%e1381013872%_
                                             (gx#syntax-e _%hd1380713867%_)))
                                        (let ((_%lp-tl1381213879%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1381013872%_)))
                                              (_%lp-hd1381113876%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1381013872%_))))
                                          (_%loop1380913863%_
                                           _%lp-tl1381213879%_
                                           (cons _%lp-hd1381113876%_
                                                 _%body1381313870%_))))
                                      (let ((_%body1381413882%_
                                             (reverse _%body1381313870%_)))
                                        (let ((_%g1379413885%_
                                               _%body1381413882%_)
                                              (_%g1379513887%_
                                               _%tl1380513854%_)
                                              (_%g1379613888%_
                                               _%hd1380413851%_))
                                          (if (gx#identifier? _%g1379613888%_)
                                              (_%__kont1987419875%_
                                               _%g1379413885%_
                                               _%g1379513887%_
                                               _%g1379613888%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1376713820%_)))))))))
                        (_%loop1380913863%_ _%target1380613857%_ '()))))
                   (_%__match1992819929%_
                    (lambda (_%e1378213924%_
                             _%hd1378313928%_
                             _%tl1378413931%_
                             _%e1378513934%_
                             _%hd1378613938%_
                             _%tl1378713941%_
                             _%e1378813944%_
                             _%hd1378913948%_
                             _%tl1379013951%_
                             _%e1379113954%_
                             _%hd1379213958%_
                             _%tl1379313961%_)
                      (let ((_%g1378013964%_ _%hd1379213958%_)
                            (_%g1378113966%_ _%tl1379013951%_))
                        (if (gx#identifier-list? _%g1378113966%_)
                            (_%__kont1987219873%_
                             _%g1378013964%_
                             _%g1378113966%_)
                            (if (gx#stx-pair/null? _%tl1378713941%_)
                                (let ((_%__splice1987619877%_
                                       (gx#syntax-split-splice->vector
                                        _%tl1378713941%_
                                        '0)))
                                  (let ((_%tl1380813860%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1987619877%_
                                            '1)))
                                        (_%target1380613857%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1987619877%_
                                            '0))))
                                    (if (gx#stx-null? _%tl1380813860%_)
                                        (_%__match1995419955%_
                                         _%e1378213924%_
                                         _%hd1378313928%_
                                         _%tl1378413931%_
                                         _%e1378513934%_
                                         _%hd1378613938%_
                                         _%tl1378713941%_
                                         _%e1378813944%_
                                         _%hd1378913948%_
                                         _%tl1379013951%_
                                         _%__splice1987619877%_
                                         _%target1380613857%_
                                         _%tl1380813860%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1376713820%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1376713820%_)))))))
                   (_%__match1989819899%_
                    (lambda (_%e1377113990%_
                             _%hd1377213994%_
                             _%tl1377313997%_
                             _%e1377414000%_
                             _%hd1377514004%_
                             _%tl1377614007%_
                             _%e1377714010%_
                             _%hd1377814014%_
                             _%tl1377914017%_)
                      (let ((_%g1376914020%_ _%hd1377814014%_)
                            (_%g1377014022%_ _%hd1377514004%_))
                        (if (gx#identifier? _%g1377014022%_)
                            (_%__kont1987019871%_
                             _%g1376914020%_
                             _%g1377014022%_)
                            (if (gx#stx-pair? _%hd1377514004%_)
                                (let ((_%e1378813944%_
                                       (gx#syntax-e _%hd1377514004%_)))
                                  (let ((_%tl1379013951%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1378813944%_)))
                                        (_%hd1378913948%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1378813944%_))))
                                    (if (gx#identifier? _%hd1378913948%_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core/sugar~Sugar-2[1]#_g20997_|
                                             _%hd1378913948%_)
                                            (_%__match1992819929%_
                                             _%e1377113990%_
                                             _%hd1377213994%_
                                             _%tl1377313997%_
                                             _%e1377414000%_
                                             _%hd1377514004%_
                                             _%tl1377614007%_
                                             _%e1378813944%_
                                             _%hd1378913948%_
                                             _%tl1379013951%_
                                             _%e1377714010%_
                                             _%hd1377814014%_
                                             _%tl1377914017%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl1377614007%_)
                                                (let ((_%__splice1987619877%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl1377614007%_
                                                        '0)))
                                                  (let ((_%tl1380813860%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1987619877%_
                                                            '1)))
                                                        (_%target1380613857%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1987619877%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl1380813860%_)
                                                        (_%__match1995419955%_
                                                         _%e1377113990%_
                                                         _%hd1377213994%_
                                                         _%tl1377313997%_
                                                         _%e1377414000%_
                                                         _%hd1377514004%_
                                                         _%tl1377614007%_
                                                         _%e1378813944%_
                                                         _%hd1378913948%_
                                                         _%tl1379013951%_
                                                         _%__splice1987619877%_
                                                         _%target1380613857%_
                                                         _%tl1380813860%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g1376713820%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1376713820%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl1377614007%_)
                                            (let ((_%__splice1987619877%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl1377614007%_
                                                    '0)))
                                              (let ((_%tl1380813860%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1987619877%_
                                                        '1)))
                                                    (_%target1380613857%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1987619877%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1380813860%_)
                                                    (_%__match1995419955%_
                                                     _%e1377113990%_
                                                     _%hd1377213994%_
                                                     _%tl1377313997%_
                                                     _%e1377414000%_
                                                     _%hd1377514004%_
                                                     _%tl1377614007%_
                                                     _%e1378813944%_
                                                     _%hd1378913948%_
                                                     _%tl1379013951%_
                                                     _%__splice1987619877%_
                                                     _%target1380613857%_
                                                     _%tl1380813860%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1376713820%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g1376713820%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1376713820%_))))))))
              (if (gx#stx-pair? _%__stx1986719868%_)
                  (let ((_%e1377113990%_ (gx#syntax-e _%__stx1986719868%_)))
                    (let ((_%tl1377313997%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1377113990%_)))
                          (_%hd1377213994%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1377113990%_))))
                      (if (gx#stx-pair? _%tl1377313997%_)
                          (let ((_%e1377414000%_
                                 (gx#syntax-e _%tl1377313997%_)))
                            (let ((_%tl1377614007%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1377414000%_)))
                                  (_%hd1377514004%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1377414000%_))))
                              (if (gx#stx-pair? _%tl1377614007%_)
                                  (let ((_%e1377714010%_
                                         (gx#syntax-e _%tl1377614007%_)))
                                    (let ((_%tl1377914017%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1377714010%_)))
                                          (_%hd1377814014%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1377714010%_))))
                                      (if (gx#stx-null? _%tl1377914017%_)
                                          (_%__match1989819899%_
                                           _%e1377113990%_
                                           _%hd1377213994%_
                                           _%tl1377313997%_
                                           _%e1377414000%_
                                           _%hd1377514004%_
                                           _%tl1377614007%_
                                           _%e1377714010%_
                                           _%hd1377814014%_
                                           _%tl1377914017%_)
                                          (if (gx#stx-pair? _%hd1377514004%_)
                                              (let ((_%e1378813944%_
                                                     (gx#syntax-e
                                                      _%hd1377514004%_)))
                                                (let ((_%tl1379013951%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1378813944%_)))
                                                      (_%hd1378913948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1378813944%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl1377614007%_)
                                                      (let ((_%__splice1987619877%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl1377614007%_
                                                              '0)))
                                                        (let ((_%tl1380813860%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice1987619877%_ '1)))
                      (_%target1380613857%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice1987619877%_ '0))))
                  (if (gx#stx-null? _%tl1380813860%_)
                      (_%__match1995419955%_
                       _%e1377113990%_
                       _%hd1377213994%_
                       _%tl1377313997%_
                       _%e1377414000%_
                       _%hd1377514004%_
                       _%tl1377614007%_
                       _%e1378813944%_
                       _%hd1378913948%_
                       _%tl1379013951%_
                       _%__splice1987619877%_
                       _%target1380613857%_
                       _%tl1380813860%_)
                      (let () (declare (not safe)) (_%g1376713820%_)))))
              (let () (declare (not safe)) (_%g1376713820%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1376713820%_))))))
                                  (if (gx#stx-pair? _%hd1377514004%_)
                                      (let ((_%e1378813944%_
                                             (gx#syntax-e _%hd1377514004%_)))
                                        (let ((_%tl1379013951%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1378813944%_)))
                                              (_%hd1378913948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1378813944%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1377614007%_)
                                              (let ((_%__splice1987619877%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1377614007%_
                                                      '0)))
                                                (let ((_%tl1380813860%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1987619877%_
                                                          '1)))
                                                      (_%target1380613857%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1987619877%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1380813860%_)
                                                      (_%__match1995419955%_
                                                       _%e1377113990%_
                                                       _%hd1377213994%_
                                                       _%tl1377313997%_
                                                       _%e1377414000%_
                                                       _%hd1377514004%_
                                                       _%tl1377614007%_
                                                       _%e1378813944%_
                                                       _%hd1378913948%_
                                                       _%tl1379013951%_
                                                       _%__splice1987619877%_
                                                       _%target1380613857%_
                                                       _%tl1380813860%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1376713820%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1376713820%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1376713820%_))))))
                          (let () (declare (not safe)) (_%g1376713820%_)))))
                  (let () (declare (not safe)) (_%g1376713820%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet|
      (lambda (_%stx14042%_)
        (letrec ((_%let-bind?14045%_
                  (lambda (_%x14954%_)
                    (let* ((_%__stx1995719958%_ _%x14954%_)
                           (_%g1495914978%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1995719958%_))))
                      (let ((_%__kont1996019961%_
                             (lambda (_%g1496115046%_ _%g1496215048%_)
                               (_%let-head?14048%_ _%g1496215048%_)))
                            (_%__kont1996219963%_
                             (lambda (_%g1496915006%_) '#t))
                            (_%__kont1996419965%_ (lambda () '#f)))
                        (if (gx#stx-pair? _%__stx1995719958%_)
                            (let ((_%e1496315026%_
                                   (gx#syntax-e _%__stx1995719958%_)))
                              (let ((_%tl1496515033%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1496315026%_)))
                                    (_%hd1496415030%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1496315026%_))))
                                (if (gx#stx-pair? _%tl1496515033%_)
                                    (let ((_%e1496615036%_
                                           (gx#syntax-e _%tl1496515033%_)))
                                      (let ((_%tl1496815043%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1496615036%_)))
                                            (_%hd1496715040%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1496615036%_))))
                                        (if (gx#stx-null? _%tl1496815043%_)
                                            (_%__kont1996019961%_
                                             _%hd1496715040%_
                                             _%hd1496415030%_)
                                            (_%__kont1996419965%_))))
                                    (if (gx#stx-null? _%tl1496515033%_)
                                        (_%__kont1996219963%_ _%hd1496415030%_)
                                        (_%__kont1996419965%_)))))
                            (_%__kont1996419965%_))))))
                 (_%let-bind14047%_
                  (lambda (_%x14856%_)
                    (let* ((_%__stx1999119992%_ _%x14856%_)
                           (_%g1486014879%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1999119992%_))))
                      (let ((_%__kont1999419995%_
                             (lambda (_%g1486214935%_ _%g1486314937%_)
                               _%x14856%_))
                            (_%__kont1999619997%_
                             (lambda (_%g1487014896%_)
                               (cons (gx#datum->syntax '#f '_)
                                     (cons _%g1487014896%_ '())))))
                        (if (gx#stx-pair? _%__stx1999119992%_)
                            (let ((_%e1486414915%_
                                   (gx#syntax-e _%__stx1999119992%_)))
                              (let ((_%tl1486614922%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1486414915%_)))
                                    (_%hd1486514919%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1486414915%_))))
                                (if (gx#stx-pair? _%tl1486614922%_)
                                    (let ((_%e1486714925%_
                                           (gx#syntax-e _%tl1486614922%_)))
                                      (let ((_%tl1486914932%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1486714925%_)))
                                            (_%hd1486814929%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1486714925%_))))
                                        (if (gx#stx-null? _%tl1486914932%_)
                                            (_%__kont1999419995%_
                                             _%hd1486814929%_
                                             _%hd1486514919%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1486014879%_)))))
                                    (if (gx#stx-null? _%tl1486614922%_)
                                        (_%__kont1999619997%_ _%hd1486514919%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1486014879%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g1486014879%_)))))))
                 (_%let-head?14048%_
                  (lambda (_%x14796%_)
                    (let* ((_%__stx2002320024%_ _%x14796%_)
                           (_%g1480014811%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2002320024%_))))
                      (let ((_%__kont2002620027%_
                             (lambda (_%g1480214839%_)
                               (gx#stx-andmap gx#identifier? _%g1480214839%_)))
                            (_%__kont2002820029%_
                             (lambda () (gx#identifier? _%x14796%_))))
                        (if (gx#stx-pair? _%__stx2002320024%_)
                            (let ((_%e1480314829%_
                                   (gx#syntax-e _%__stx2002320024%_)))
                              (let ((_%tl1480514836%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1480314829%_)))
                                    (_%hd1480414833%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1480314829%_))))
                                (if (gx#identifier? _%hd1480414833%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g20998_|
                                         _%hd1480414833%_)
                                        (_%__kont2002620027%_ _%tl1480514836%_)
                                        (_%__kont2002820029%_))
                                    (_%__kont2002820029%_))))
                            (_%__kont2002820029%_))))))
                 (_%let-head14049%_
                  (lambda (_%x14736%_)
                    (let* ((_%__stx2004320044%_ _%x14736%_)
                           (_%g1474014751%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2004320044%_))))
                      (let ((_%__kont2004620047%_
                             (lambda (_%g1474214779%_) _%g1474214779%_))
                            (_%__kont2004820049%_
                             (lambda () (list _%x14736%_))))
                        (if (gx#stx-pair? _%__stx2004320044%_)
                            (let ((_%e1474314769%_
                                   (gx#syntax-e _%__stx2004320044%_)))
                              (let ((_%tl1474514776%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1474314769%_)))
                                    (_%hd1474414773%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1474314769%_))))
                                (if (gx#identifier? _%hd1474414773%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g20999_|
                                         _%hd1474414773%_)
                                        (_%__kont2004620047%_ _%tl1474514776%_)
                                        (_%__kont2004820049%_))
                                    (_%__kont2004820049%_))))
                            (_%__kont2004820049%_)))))))
          (let* ((_%__stx2006320064%_ _%stx14042%_)
                 (_%g1405314125%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2006320064%_))))
            (let ((_%__kont2006620067%_
                   (lambda (_%g1405514709%_
                            _%g1405614711%_
                            _%g1405714712%_
                            _%g1405814713%_)
                     (cons _%g1405814713%_
                           (cons (cons (cons _%g1405714712%_
                                             (cons _%g1405614711%_ '()))
                                       '())
                                 _%g1405514709%_))))
                  (_%__kont2006820069%_
                   (lambda (_%g1407114631%_ _%g1407214633%_)
                     (cons (gx#datum->syntax '#f 'and)
                           (cons _%g1407214633%_
                                 (cons (cons (gx#datum->syntax '#f 'let)
                                             (cons '()
                                                   (foldr (lambda (_%g1465314656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1465414659%_)
                    (cons _%g1465314656%_ _%g1465414659%_))
                  '()
                  _%g1407114631%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                  (_%__kont2007220073%_
                   (lambda (_%g1409414208%_ _%g1409514210%_)
                     (let* ((_%g1424114267%_
                             (lambda (_%g1424214263%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g1424214263%_)))
                            (_%g1424014544%_
                             (lambda (_%g1424214271%_)
                               (if (gx#stx-pair/null? _%g1424214271%_)
                                   (let ((_g21000_
                                          (gx#syntax-split-splice
                                           _%g1424214271%_
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
                                       (let ((_%target1424514274%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21000_ 0)))
                                             (_%tl1424714277%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21000_ 1))))
                                         (if (gx#stx-null? _%tl1424714277%_)
                                             (letrec ((_%loop1424814280%_
                                                       (lambda (_%hd1424614284%_
                                                                _%e1425214287%_
                                                                _%hd1425314288%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1424614284%_)
                                                             (let ((_%e1424914290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1424614284%_)))
                       (let ((_%lp-hd1425014294%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1424914290%_)))
                             (_%lp-tl1425114297%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1424914290%_))))
                         (if (gx#stx-pair? _%lp-hd1425014294%_)
                             (let ((_%e1425614300%_
                                    (gx#syntax-e _%lp-hd1425014294%_)))
                               (let ((_%hd1425714304%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1425614300%_)))
                                     (_%tl1425814307%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1425614300%_))))
                                 (if (gx#stx-pair? _%tl1425814307%_)
                                     (let ((_%e1425914310%_
                                            (gx#syntax-e _%tl1425814307%_)))
                                       (let ((_%hd1426014314%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1425914310%_)))
                                             (_%tl1426114317%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1425914310%_))))
                                         (if (gx#stx-null? _%tl1426114317%_)
                                             (_%loop1424814280%_
                                              _%lp-tl1425114297%_
                                              (cons _%hd1426014314%_
                                                    _%e1425214287%_)
                                              (cons _%hd1425714304%_
                                                    _%hd1425314288%_))
                                             (_%g1424114267%_
                                              _%g1424214271%_))))
                                     (_%g1424114267%_ _%g1424214271%_))))
                             (_%g1424114267%_ _%g1424214271%_))))
                     (let ((_%e1425414320%_ (reverse _%e1425214287%_))
                           (_%hd1425514322%_ (reverse _%hd1425314288%_)))
                       ((lambda (_%g1424314324%_ _%g1424414326%_)
                          (let* ((_%g1434214359%_
                                  (lambda (_%g1434314355%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1434314355%_)))
                                 (_%g1434114532%_
                                  (lambda (_%g1434314363%_)
                                    (if (gx#stx-pair/null? _%g1434314363%_)
                                        (let ((_g21002_
                                               (gx#syntax-split-splice
                                                _%g1434314363%_
                                                '0)))
                                          (begin
                                            (let ((_g21003_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g21002_)
                                                         (##values-length
                                                          _g21002_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g21003_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g21003_)))
                                            (let ((_%target1434514366%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21002_
                                                      0)))
                                                  (_%tl1434714369%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21002_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl1434714369%_)
                                                  (letrec ((_%loop1434814372%_
                                                            (lambda (_%hd1434614376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$e1435214379%_)
                      (if (gx#stx-pair? _%hd1434614376%_)
                          (let ((_%e1434914381%_
                                 (gx#syntax-e _%hd1434614376%_)))
                            (let ((_%lp-hd1435014385%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1434914381%_)))
                                  (_%lp-tl1435114388%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1434914381%_))))
                              (_%loop1434814372%_
                               _%lp-tl1435114388%_
                               (cons _%lp-hd1435014385%_ _%$e1435214379%_))))
                          (let ((_%$e1435314391%_ (reverse _%$e1435214379%_)))
                            ((lambda (_%g1434414394%_)
                               (let* ((_%g1441114428%_
                                       (lambda (_%g1441214424%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1441214424%_)))
                                      (_%g1441014520%_
                                       (lambda (_%g1441214432%_)
                                         (if (gx#stx-pair/null?
                                              _%g1441214432%_)
                                             (let ((_g21004_
                                                    (gx#syntax-split-splice
                                                     _%g1441214432%_
                                                     '0)))
                                               (begin
                                                 (let ((_g21005_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g21004_)
                                                              (##values-length
                                                               _g21004_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g21005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g21005_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target1441414435%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g21004_
                                                           0)))
                                                       (_%tl1441614438%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g21004_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl1441614438%_)
                                                       (letrec ((_%loop1441714441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd1441514445%_ _%hd-bind1442114448%_)
                           (if (gx#stx-pair? _%hd1441514445%_)
                               (let ((_%e1441814450%_
                                      (gx#syntax-e _%hd1441514445%_)))
                                 (let ((_%lp-hd1441914454%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1441814450%_)))
                                       (_%lp-tl1442014457%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1441814450%_))))
                                   (_%loop1441714441%_
                                    _%lp-tl1442014457%_
                                    (cons _%lp-hd1441914454%_
                                          _%hd-bind1442114448%_))))
                               (let ((_%hd-bind1442214460%_
                                      (reverse _%hd-bind1442114448%_)))
                                 ((lambda (_%g1441314463%_)
                                    (cons (gx#datum->syntax '#f 'let-values)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%g1424314324%_
                                                   _%g1434414394%_)
                                                  (foldr (lambda (_%g1448114492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1448214495%_
                          _%g1448314497%_)
                   (cons (cons (cons _%g1448214495%_ '())
                               (cons _%g1448114492%_ '()))
                         _%g1448314497%_))
                 '()
                 _%g1424314324%_
                 _%g1434414394%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'and)
                                                            (foldr (lambda (_%g1448414500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1448514503%_)
                             (cons _%g1448414500%_ _%g1448514503%_))
                           (cons (cons (gx#datum->syntax '#f 'let-values)
                                       (cons (begin
                                               (gx#syntax-check-splice-targets
                                                _%g1434414394%_
                                                _%g1441314463%_)
                                               (foldr (lambda (_%g1448614506%_
                                                               _%g1448714509%_
                                                               _%g1448814511%_)
                                                        (cons (cons _%g1448714509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g1448614506%_ '()))
                      _%g1448814511%_))
              '()
              _%g1434414394%_
              _%g1441314463%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (foldr (lambda (_%g1448914514%_
                                                             _%g1449014517%_)
                                                      (cons _%g1448914514%_
                                                            _%g1449014517%_))
                                                    '()
                                                    _%g1409414208%_)))
                                 '())
                           _%g1434414394%_))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%hd-bind1442214460%_))))))
                 (_%loop1441714441%_ _%target1441414435%_ '()))
               (_%g1441114428%_ _%g1441214432%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g1441114428%_
                                              _%g1441214432%_)))))
                                 (_%g1441014520%_
                                  (gx#stx-map
                                   _%let-head14049%_
                                   (foldr (lambda (_%g1452314526%_
                                                   _%g1452414529%_)
                                            (cons _%g1452314526%_
                                                  _%g1452414529%_))
                                          '()
                                          _%g1424414326%_)))))
                             _%$e1435314391%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop1434814372%_
                                                     _%target1434514366%_
                                                     '()))
                                                  (_%g1434214359%_
                                                   _%g1434314363%_)))))
                                        (_%g1434214359%_ _%g1434314363%_)))))
                            (_%g1434114532%_
                             (gx#gentemps
                              (foldr (lambda (_%g1453514538%_ _%g1453614541%_)
                                       (cons _%g1453514538%_ _%g1453614541%_))
                                     '()
                                     _%g1424414326%_)))))
                        _%e1425414320%_
                        _%hd1425514322%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1424814280%_
                                                _%target1424514274%_
                                                '()
                                                '()))
                                             (_%g1424114267%_
                                              _%g1424214271%_)))))
                                   (_%g1424114267%_ _%g1424214271%_)))))
                       (_%g1424014544%_
                        (gx#stx-map
                         _%let-bind14047%_
                         (foldr (lambda (_%g1454714550%_ _%g1454814553%_)
                                  (cons _%g1454714550%_ _%g1454814553%_))
                                '()
                                _%g1409514210%_)))))))
              (let* ((_%__match2016020161%_
                      (lambda (_%e1409614132%_
                               _%hd1409714136%_
                               _%tl1409814139%_
                               _%e1409914142%_
                               _%hd1410014146%_
                               _%tl1410114149%_
                               _%__splice2007420075%_
                               _%target1410214152%_
                               _%tl1410414155%_)
                        (letrec ((_%loop1410514158%_
                                  (lambda (_%hd1410314162%_ _%bind1410914165%_)
                                    (if (gx#stx-pair? _%hd1410314162%_)
                                        (let ((_%e1410614167%_
                                               (gx#syntax-e _%hd1410314162%_)))
                                          (let ((_%lp-tl1410814174%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1410614167%_)))
                                                (_%lp-hd1410714171%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1410614167%_))))
                                            (_%loop1410514158%_
                                             _%lp-tl1410814174%_
                                             (cons _%lp-hd1410714171%_
                                                   _%bind1410914165%_))))
                                        (let ((_%bind1411014177%_
                                               (reverse _%bind1410914165%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl1410114149%_)
                                              (let ((_%__splice2007620077%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1410114149%_
                                                      '0)))
                                                (let ((_%tl1411314183%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2007620077%_
                                                          '1)))
                                                      (_%target1411114180%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2007620077%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1411314183%_)
                                                      (letrec ((_%loop1411414186%_
                                                                (lambda (_%hd1411214190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body1411814193%_)
                          (if (gx#stx-pair? _%hd1411214190%_)
                              (let ((_%e1411514195%_
                                     (gx#syntax-e _%hd1411214190%_)))
                                (let ((_%lp-tl1411714202%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1411514195%_)))
                                      (_%lp-hd1411614199%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1411514195%_))))
                                  (_%loop1411414186%_
                                   _%lp-tl1411714202%_
                                   (cons _%lp-hd1411614199%_
                                         _%body1411814193%_))))
                              (let ((_%body1411914205%_
                                     (reverse _%body1411814193%_)))
                                (let ((_%g1409414208%_ _%body1411914205%_)
                                      (_%g1409514210%_ _%bind1411014177%_))
                                  (if (gx#stx-andmap
                                       _%let-bind?14045%_
                                       (foldr (lambda (_%g1423214235%_
                                                       _%g1423314238%_)
                                                (cons _%g1423214235%_
                                                      _%g1423314238%_))
                                              '()
                                              _%g1409514210%_))
                                      (_%__kont2007220073%_
                                       _%g1409414208%_
                                       _%g1409514210%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g1405314125%_)))))))))
                (_%loop1411414186%_ _%target1411114180%_ '()))
              (let () (declare (not safe)) (_%g1405314125%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1405314125%_))))))))
                          (_%loop1410514158%_ _%target1410214152%_ '()))))
                     (_%__match2014020141%_
                      (lambda (_%e1407314563%_
                               _%hd1407414567%_
                               _%tl1407514570%_
                               _%e1407614573%_
                               _%hd1407714577%_
                               _%tl1407814580%_
                               _%e1407914583%_
                               _%hd1408014587%_
                               _%tl1408114590%_
                               _%e1408214593%_
                               _%hd1408314597%_
                               _%tl1408414600%_
                               _%__splice2007020071%_
                               _%target1408514603%_
                               _%tl1408714606%_)
                        (letrec ((_%loop1408814609%_
                                  (lambda (_%hd1408614613%_ _%body1409214616%_)
                                    (if (gx#stx-pair? _%hd1408614613%_)
                                        (let ((_%e1408914618%_
                                               (gx#syntax-e _%hd1408614613%_)))
                                          (let ((_%lp-tl1409114625%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1408914618%_)))
                                                (_%lp-hd1409014622%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1408914618%_))))
                                            (_%loop1408814609%_
                                             _%lp-tl1409114625%_
                                             (cons _%lp-hd1409014622%_
                                                   _%body1409214616%_))))
                                        (let ((_%body1409314628%_
                                               (reverse _%body1409214616%_)))
                                          (_%__kont2006820069%_
                                           _%body1409314628%_
                                           _%hd1408314597%_))))))
                          (_%loop1408814609%_ _%target1408514603%_ '()))))
                     (_%__match2010420105%_
                      (lambda (_%e1405914669%_
                               _%hd1406014673%_
                               _%tl1406114676%_
                               _%e1406214679%_
                               _%hd1406314683%_
                               _%tl1406414686%_
                               _%e1406514689%_
                               _%hd1406614693%_
                               _%tl1406714696%_
                               _%e1406814699%_
                               _%hd1406914703%_
                               _%tl1407014706%_)
                        (let ((_%g1405514709%_ _%tl1406414686%_)
                              (_%g1405614711%_ _%hd1406914703%_)
                              (_%g1405714712%_ _%hd1406614693%_)
                              (_%g1405814713%_ _%hd1406014673%_))
                          (if (_%let-head?14048%_ _%g1405714712%_)
                              (_%__kont2006620067%_
                               _%g1405514709%_
                               _%g1405614711%_
                               _%g1405714712%_
                               _%g1405814713%_)
                              (if (gx#stx-pair? _%hd1406614693%_)
                                  (let ((_%e1408214593%_
                                         (gx#syntax-e _%hd1406614693%_)))
                                    (let ((_%tl1408414600%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1408214593%_)))
                                          (_%hd1408314597%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1408214593%_))))
                                      (if (gx#stx-pair/null? _%hd1406314683%_)
                                          (let ((_%__splice2007420075%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd1406314683%_
                                                  '0)))
                                            (let ((_%tl1410414155%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2007420075%_
                                                      '1)))
                                                  (_%target1410214152%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2007420075%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1410414155%_)
                                                  (_%__match2016020161%_
                                                   _%e1405914669%_
                                                   _%hd1406014673%_
                                                   _%tl1406114676%_
                                                   _%e1406214679%_
                                                   _%hd1406314683%_
                                                   _%tl1406414686%_
                                                   _%__splice2007420075%_
                                                   _%target1410214152%_
                                                   _%tl1410414155%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1405314125%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1405314125%_)))))
                                  (if (gx#stx-pair/null? _%hd1406314683%_)
                                      (let ((_%__splice2007420075%_
                                             (gx#syntax-split-splice->vector
                                              _%hd1406314683%_
                                              '0)))
                                        (let ((_%tl1410414155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2007420075%_
                                                  '1)))
                                              (_%target1410214152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2007420075%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1410414155%_)
                                              (_%__match2016020161%_
                                               _%e1405914669%_
                                               _%hd1406014673%_
                                               _%tl1406114676%_
                                               _%e1406214679%_
                                               _%hd1406314683%_
                                               _%tl1406414686%_
                                               _%__splice2007420075%_
                                               _%target1410214152%_
                                               _%tl1410414155%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1405314125%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1405314125%_)))))))))
                (if (gx#stx-pair? _%__stx2006320064%_)
                    (let ((_%e1405914669%_ (gx#syntax-e _%__stx2006320064%_)))
                      (let ((_%tl1406114676%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1405914669%_)))
                            (_%hd1406014673%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1405914669%_))))
                        (if (gx#stx-pair? _%tl1406114676%_)
                            (let ((_%e1406214679%_
                                   (gx#syntax-e _%tl1406114676%_)))
                              (let ((_%tl1406414686%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1406214679%_)))
                                    (_%hd1406314683%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1406214679%_))))
                                (if (gx#stx-pair? _%hd1406314683%_)
                                    (let ((_%e1406514689%_
                                           (gx#syntax-e _%hd1406314683%_)))
                                      (let ((_%tl1406714696%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1406514689%_)))
                                            (_%hd1406614693%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1406514689%_))))
                                        (if (gx#stx-pair? _%tl1406714696%_)
                                            (let ((_%e1406814699%_
                                                   (gx#syntax-e
                                                    _%tl1406714696%_)))
                                              (let ((_%tl1407014706%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1406814699%_)))
                                                    (_%hd1406914703%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1406814699%_))))
                                                (if (gx#stx-null?
                                                     _%tl1407014706%_)
                                                    (_%__match2010420105%_
                                                     _%e1405914669%_
                                                     _%hd1406014673%_
                                                     _%tl1406114676%_
                                                     _%e1406214679%_
                                                     _%hd1406314683%_
                                                     _%tl1406414686%_
                                                     _%e1406514689%_
                                                     _%hd1406614693%_
                                                     _%tl1406714696%_
                                                     _%e1406814699%_
                                                     _%hd1406914703%_
                                                     _%tl1407014706%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1406614693%_)
                                                        (let ((_%e1408214593%_
                                                               (gx#syntax-e
                                                                _%hd1406614693%_)))
                                                          (let ((_%tl1408414600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e1408214593%_)))
                        (_%hd1408314597%_
                         (let ()
                           (declare (not safe))
                           (##car _%e1408214593%_))))
                    (if (gx#stx-pair/null? _%hd1406314683%_)
                        (let ((_%__splice2007420075%_
                               (gx#syntax-split-splice->vector
                                _%hd1406314683%_
                                '0)))
                          (let ((_%tl1410414155%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2007420075%_ '1)))
                                (_%target1410214152%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2007420075%_ '0))))
                            (if (gx#stx-null? _%tl1410414155%_)
                                (_%__match2016020161%_
                                 _%e1405914669%_
                                 _%hd1406014673%_
                                 _%tl1406114676%_
                                 _%e1406214679%_
                                 _%hd1406314683%_
                                 _%tl1406414686%_
                                 _%__splice2007420075%_
                                 _%target1410214152%_
                                 _%tl1410414155%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1405314125%_)))))
                        (let () (declare (not safe)) (_%g1405314125%_)))))
                (if (gx#stx-pair/null? _%hd1406314683%_)
                    (let ((_%__splice2007420075%_
                           (gx#syntax-split-splice->vector
                            _%hd1406314683%_
                            '0)))
                      (let ((_%tl1410414155%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2007420075%_ '1)))
                            (_%target1410214152%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2007420075%_ '0))))
                        (if (gx#stx-null? _%tl1410414155%_)
                            (_%__match2016020161%_
                             _%e1405914669%_
                             _%hd1406014673%_
                             _%tl1406114676%_
                             _%e1406214679%_
                             _%hd1406314683%_
                             _%tl1406414686%_
                             _%__splice2007420075%_
                             _%target1410214152%_
                             _%tl1410414155%_)
                            (let () (declare (not safe)) (_%g1405314125%_)))))
                    (let () (declare (not safe)) (_%g1405314125%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%hd1406614693%_)
                                                (let ((_%e1408214593%_
                                                       (gx#syntax-e
                                                        _%hd1406614693%_)))
                                                  (let ((_%tl1408414600%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1408214593%_)))
                                                        (_%hd1408314597%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1408214593%_))))
                                                    (if (gx#stx-null?
                                                         _%tl1408414600%_)
                                                        (if (gx#stx-null?
                                                             _%tl1406714696%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl1406414686%_)
                        (let ((_%__splice2007020071%_
                               (gx#syntax-split-splice->vector
                                _%tl1406414686%_
                                '0)))
                          (let ((_%tl1408714606%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2007020071%_ '1)))
                                (_%target1408514603%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2007020071%_ '0))))
                            (if (gx#stx-null? _%tl1408714606%_)
                                (_%__match2014020141%_
                                 _%e1405914669%_
                                 _%hd1406014673%_
                                 _%tl1406114676%_
                                 _%e1406214679%_
                                 _%hd1406314683%_
                                 _%tl1406414686%_
                                 _%e1406514689%_
                                 _%hd1406614693%_
                                 _%tl1406714696%_
                                 _%e1408214593%_
                                 _%hd1408314597%_
                                 _%tl1408414600%_
                                 _%__splice2007020071%_
                                 _%target1408514603%_
                                 _%tl1408714606%_)
                                (if (gx#stx-pair/null? _%hd1406314683%_)
                                    (let ((_%__splice2007420075%_
                                           (gx#syntax-split-splice->vector
                                            _%hd1406314683%_
                                            '0)))
                                      (let ((_%tl1410414155%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2007420075%_
                                                '1)))
                                            (_%target1410214152%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2007420075%_
                                                '0))))
                                        (if (gx#stx-null? _%tl1410414155%_)
                                            (_%__match2016020161%_
                                             _%e1405914669%_
                                             _%hd1406014673%_
                                             _%tl1406114676%_
                                             _%e1406214679%_
                                             _%hd1406314683%_
                                             _%tl1406414686%_
                                             _%__splice2007420075%_
                                             _%target1410214152%_
                                             _%tl1410414155%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1405314125%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g1405314125%_))))))
                        (if (gx#stx-pair/null? _%hd1406314683%_)
                            (let ((_%__splice2007420075%_
                                   (gx#syntax-split-splice->vector
                                    _%hd1406314683%_
                                    '0)))
                              (let ((_%tl1410414155%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2007420075%_
                                        '1)))
                                    (_%target1410214152%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2007420075%_
                                        '0))))
                                (if (gx#stx-null? _%tl1410414155%_)
                                    (_%__match2016020161%_
                                     _%e1405914669%_
                                     _%hd1406014673%_
                                     _%tl1406114676%_
                                     _%e1406214679%_
                                     _%hd1406314683%_
                                     _%tl1406414686%_
                                     _%__splice2007420075%_
                                     _%target1410214152%_
                                     _%tl1410414155%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g1405314125%_)))))
                            (let () (declare (not safe)) (_%g1405314125%_))))
                    (if (gx#stx-pair/null? _%hd1406314683%_)
                        (let ((_%__splice2007420075%_
                               (gx#syntax-split-splice->vector
                                _%hd1406314683%_
                                '0)))
                          (let ((_%tl1410414155%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2007420075%_ '1)))
                                (_%target1410214152%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2007420075%_ '0))))
                            (if (gx#stx-null? _%tl1410414155%_)
                                (_%__match2016020161%_
                                 _%e1405914669%_
                                 _%hd1406014673%_
                                 _%tl1406114676%_
                                 _%e1406214679%_
                                 _%hd1406314683%_
                                 _%tl1406414686%_
                                 _%__splice2007420075%_
                                 _%target1410214152%_
                                 _%tl1410414155%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1405314125%_)))))
                        (let () (declare (not safe)) (_%g1405314125%_))))
                (if (gx#stx-pair/null? _%hd1406314683%_)
                    (let ((_%__splice2007420075%_
                           (gx#syntax-split-splice->vector
                            _%hd1406314683%_
                            '0)))
                      (let ((_%tl1410414155%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2007420075%_ '1)))
                            (_%target1410214152%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2007420075%_ '0))))
                        (if (gx#stx-null? _%tl1410414155%_)
                            (_%__match2016020161%_
                             _%e1405914669%_
                             _%hd1406014673%_
                             _%tl1406114676%_
                             _%e1406214679%_
                             _%hd1406314683%_
                             _%tl1406414686%_
                             _%__splice2007420075%_
                             _%target1410214152%_
                             _%tl1410414155%_)
                            (let () (declare (not safe)) (_%g1405314125%_)))))
                    (let () (declare (not safe)) (_%g1405314125%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%hd1406314683%_)
                                                    (let ((_%__splice2007420075%_
                                                           (gx#syntax-split-splice->vector
                                                            _%hd1406314683%_
                                                            '0)))
                                                      (let ((_%tl1410414155%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice2007420075%_ '1)))
                    (_%target1410214152%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice2007420075%_ '0))))
                (if (gx#stx-null? _%tl1410414155%_)
                    (_%__match2016020161%_
                     _%e1405914669%_
                     _%hd1406014673%_
                     _%tl1406114676%_
                     _%e1406214679%_
                     _%hd1406314683%_
                     _%tl1406414686%_
                     _%__splice2007420075%_
                     _%target1410214152%_
                     _%tl1410414155%_)
                    (let () (declare (not safe)) (_%g1405314125%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1405314125%_)))))))
                                    (if (gx#stx-pair/null? _%hd1406314683%_)
                                        (let ((_%__splice2007420075%_
                                               (gx#syntax-split-splice->vector
                                                _%hd1406314683%_
                                                '0)))
                                          (let ((_%tl1410414155%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2007420075%_
                                                    '1)))
                                                (_%target1410214152%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2007420075%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1410414155%_)
                                                (_%__match2016020161%_
                                                 _%e1405914669%_
                                                 _%hd1406014673%_
                                                 _%tl1406114676%_
                                                 _%e1406214679%_
                                                 _%hd1406314683%_
                                                 _%tl1406414686%_
                                                 _%__splice2007420075%_
                                                 _%target1410214152%_
                                                 _%tl1410414155%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1405314125%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g1405314125%_))))))
                            (let () (declare (not safe)) (_%g1405314125%_)))))
                    (let () (declare (not safe)) (_%g1405314125%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet*|
      (lambda (_%$stx15071%_)
        (let* ((_%__stx2016320164%_ _%$stx15071%_)
               (_%g1507715128%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2016320164%_))))
          (let ((_%__kont2016620167%_ (lambda () '#t))
                (_%__kont2016820169%_
                 (lambda (_%g1508515282%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g1529815301%_ _%g1529915304%_)
                                        (cons _%g1529815301%_ _%g1529915304%_))
                                      '()
                                      _%g1508515282%_)))))
                (_%__kont2017220173%_
                 (lambda (_%g1510115193%_
                          _%g1510215195%_
                          _%g1510315196%_
                          _%g1510415197%_)
                   (cons (gx#datum->syntax '#f 'alet)
                         (cons (cons _%g1510315196%_ '())
                               (cons (cons _%g1510415197%_
                                           (cons _%g1510215195%_
                                                 (foldr (lambda (_%g1521815221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1521915224%_)
                  (cons _%g1521815221%_ _%g1521915224%_))
                '()
                _%g1510115193%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match2024020241%_
                    (lambda (_%e1510515135%_
                             _%hd1510615139%_
                             _%tl1510715142%_
                             _%e1510815145%_
                             _%hd1510915149%_
                             _%tl1511015152%_
                             _%e1511115155%_
                             _%hd1511215159%_
                             _%tl1511315162%_
                             _%__splice2017420175%_
                             _%target1511415165%_
                             _%tl1511615168%_)
                      (letrec ((_%loop1511715171%_
                                (lambda (_%hd1511515175%_ _%body1512115178%_)
                                  (if (gx#stx-pair? _%hd1511515175%_)
                                      (let ((_%e1511815180%_
                                             (gx#syntax-e _%hd1511515175%_)))
                                        (let ((_%lp-tl1512015187%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1511815180%_)))
                                              (_%lp-hd1511915184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1511815180%_))))
                                          (_%loop1511715171%_
                                           _%lp-tl1512015187%_
                                           (cons _%lp-hd1511915184%_
                                                 _%body1512115178%_))))
                                      (let ((_%body1512215190%_
                                             (reverse _%body1512115178%_)))
                                        (_%__kont2017220173%_
                                         _%body1512215190%_
                                         _%tl1511315162%_
                                         _%hd1511215159%_
                                         _%hd1510615139%_))))))
                        (_%loop1511715171%_ _%target1511415165%_ '()))))
                   (_%__match2021420215%_
                    (lambda (_%e1508615234%_
                             _%hd1508715238%_
                             _%tl1508815241%_
                             _%e1508915244%_
                             _%hd1509015248%_
                             _%tl1509115251%_
                             _%__splice2017020171%_
                             _%target1509215254%_
                             _%tl1509415257%_)
                      (letrec ((_%loop1509515260%_
                                (lambda (_%hd1509315264%_ _%body1509915267%_)
                                  (if (gx#stx-pair? _%hd1509315264%_)
                                      (let ((_%e1509615269%_
                                             (gx#syntax-e _%hd1509315264%_)))
                                        (let ((_%lp-tl1509815276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1509615269%_)))
                                              (_%lp-hd1509715273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1509615269%_))))
                                          (_%loop1509515260%_
                                           _%lp-tl1509815276%_
                                           (cons _%lp-hd1509715273%_
                                                 _%body1509915267%_))))
                                      (let ((_%body1510015279%_
                                             (reverse _%body1509915267%_)))
                                        (_%__kont2016820169%_
                                         _%body1510015279%_))))))
                        (_%loop1509515260%_ _%target1509215254%_ '())))))
              (if (gx#stx-pair? _%__stx2016320164%_)
                  (let ((_%e1507915314%_ (gx#syntax-e _%__stx2016320164%_)))
                    (let ((_%tl1508115321%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1507915314%_)))
                          (_%hd1508015318%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1507915314%_))))
                      (if (gx#stx-pair? _%tl1508115321%_)
                          (let ((_%e1508215324%_
                                 (gx#syntax-e _%tl1508115321%_)))
                            (let ((_%tl1508415331%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1508215324%_)))
                                  (_%hd1508315328%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1508215324%_))))
                              (if (gx#stx-null? _%hd1508315328%_)
                                  (if (gx#stx-null? _%tl1508415331%_)
                                      (_%__kont2016620167%_)
                                      (if (gx#stx-pair/null? _%tl1508415331%_)
                                          (let ((_%__splice2017020171%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1508415331%_
                                                  '0)))
                                            (let ((_%tl1509415257%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2017020171%_
                                                      '1)))
                                                  (_%target1509215254%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2017020171%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1509415257%_)
                                                  (_%__match2021420215%_
                                                   _%e1507915314%_
                                                   _%hd1508015318%_
                                                   _%tl1508115321%_
                                                   _%e1508215324%_
                                                   _%hd1508315328%_
                                                   _%tl1508415331%_
                                                   _%__splice2017020171%_
                                                   _%target1509215254%_
                                                   _%tl1509415257%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1507715128%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1507715128%_))))
                                  (if (gx#stx-pair? _%hd1508315328%_)
                                      (let ((_%e1511115155%_
                                             (gx#syntax-e _%hd1508315328%_)))
                                        (let ((_%tl1511315162%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1511115155%_)))
                                              (_%hd1511215159%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1511115155%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1508415331%_)
                                              (let ((_%__splice2017420175%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1508415331%_
                                                      '0)))
                                                (let ((_%tl1511615168%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2017420175%_
                                                          '1)))
                                                      (_%target1511415165%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2017420175%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1511615168%_)
                                                      (_%__match2024020241%_
                                                       _%e1507915314%_
                                                       _%hd1508015318%_
                                                       _%tl1508115321%_
                                                       _%e1508215324%_
                                                       _%hd1508315328%_
                                                       _%tl1508415331%_
                                                       _%e1511115155%_
                                                       _%hd1511215159%_
                                                       _%tl1511315162%_
                                                       _%__splice2017420175%_
                                                       _%target1511415165%_
                                                       _%tl1511615168%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1507715128%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1507715128%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1507715128%_))))))
                          (let () (declare (not safe)) (_%g1507715128%_)))))
                  (let () (declare (not safe)) (_%g1507715128%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#@list|
      (lambda (_%$stx15344%_)
        (let* ((_%__stx2024320244%_ _%$stx15344%_)
               (_%g1535515433%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2024320244%_))))
          (let ((_%__kont2024620247%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'quote) (cons '() '()))))
                (_%__kont2024820249%_
                 (lambda (_%g1536015764%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1536015764%_ '()))))
                (_%__kont2025020251%_
                 (lambda (_%g1537015712%_)
                   (cons (gx#datum->syntax '#f 'quasiquote)
                         (cons _%g1537015712%_ '()))))
                (_%__kont2025220253%_
                 (lambda (_%g1538015659%_) _%g1538015659%_))
                (_%__kont2025420255%_
                 (lambda (_%g1539115601%_ _%g1539215603%_) _%g1539215603%_))
                (_%__kont2025620257%_
                 (lambda (_%g1540215543%_
                          _%g1540315545%_
                          _%g1540415546%_
                          _%g1540515547%_)
                   (cons (gx#datum->syntax '#f 'foldr)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (cons _%g1540515547%_ _%g1540215543%_)
                                     (cons _%g1540415546%_ '()))))))
                (_%__kont2025820259%_
                 (lambda (_%g1541515489%_ _%g1541615491%_ _%g1541715492%_)
                   (cons (gx#datum->syntax '#f 'cons)
                         (cons _%g1541615491%_
                               (cons (cons _%g1541715492%_ _%g1541515489%_)
                                     '())))))
                (_%__kont2026020261%_
                 (lambda (_%g1542415450%_) _%g1542415450%_)))
            (let* ((_%__match2038220383%_
                    (lambda (_%e1540615513%_
                             _%hd1540715517%_
                             _%tl1540815520%_
                             _%e1540915523%_
                             _%hd1541015527%_
                             _%tl1541115530%_
                             _%e1541215533%_
                             _%hd1541315537%_
                             _%tl1541415540%_)
                      (let ((_%g1540215543%_ _%tl1541415540%_)
                            (_%g1540315545%_ _%hd1541315537%_)
                            (_%g1540415546%_ _%hd1541015527%_)
                            (_%g1540515547%_ _%hd1540715517%_))
                        (if (gx#ellipsis? _%g1540315545%_)
                            (_%__kont2025620257%_
                             _%g1540215543%_
                             _%g1540315545%_
                             _%g1540415546%_
                             _%g1540515547%_)
                            (_%__kont2025820259%_
                             _%tl1541115530%_
                             _%hd1541015527%_
                             _%hd1540715517%_)))))
                   (_%__match2036420365%_
                    (lambda (_%e1539315571%_
                             _%hd1539415575%_
                             _%tl1539515578%_
                             _%e1539615581%_
                             _%hd1539715585%_
                             _%tl1539815588%_
                             _%e1539915591%_
                             _%hd1540015595%_
                             _%tl1540115598%_)
                      (let ((_%g1539115601%_ _%hd1540015595%_)
                            (_%g1539215603%_ _%hd1539715585%_))
                        (if (gx#ellipsis? _%g1539115601%_)
                            (_%__kont2025420255%_
                             _%g1539115601%_
                             _%g1539215603%_)
                            (_%__match2038220383%_
                             _%e1539315571%_
                             _%hd1539415575%_
                             _%tl1539515578%_
                             _%e1539615581%_
                             _%hd1539715585%_
                             _%tl1539815588%_
                             _%e1539915591%_
                             _%hd1540015595%_
                             _%tl1540115598%_))))))
              (if (gx#stx-pair? _%__stx2024320244%_)
                  (let ((_%e1535715786%_ (gx#syntax-e _%__stx2024320244%_)))
                    (let ((_%tl1535915793%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1535715786%_)))
                          (_%hd1535815790%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1535715786%_))))
                      (if (gx#stx-null? _%tl1535915793%_)
                          (_%__kont2024620247%_)
                          (if (gx#stx-pair? _%tl1535915793%_)
                              (let ((_%e1536415744%_
                                     (gx#syntax-e _%tl1535915793%_)))
                                (let ((_%tl1536615751%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1536415744%_)))
                                      (_%hd1536515748%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1536415744%_))))
                                  (if (gx#identifier? _%hd1536515748%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21006_|
                                           _%hd1536515748%_)
                                          (if (gx#stx-pair? _%tl1536615751%_)
                                              (let ((_%e1536715754%_
                                                     (gx#syntax-e
                                                      _%tl1536615751%_)))
                                                (let ((_%tl1536915761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1536715754%_)))
                                                      (_%hd1536815758%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1536715754%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1536915761%_)
                                                      (_%__kont2024820249%_
                                                       _%hd1536815758%_)
                                                      (_%__match2038220383%_
                                                       _%e1535715786%_
                                                       _%hd1535815790%_
                                                       _%tl1535915793%_
                                                       _%e1536415744%_
                                                       _%hd1536515748%_
                                                       _%tl1536615751%_
                                                       _%e1536715754%_
                                                       _%hd1536815758%_
                                                       _%tl1536915761%_))))
                                              (_%__kont2025820259%_
                                               _%tl1536615751%_
                                               _%hd1536515748%_
                                               _%hd1535815790%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21007_|
                                               _%hd1536515748%_)
                                              (if (gx#stx-pair?
                                                   _%tl1536615751%_)
                                                  (let ((_%e1537715702%_
                                                         (gx#syntax-e
                                                          _%tl1536615751%_)))
                                                    (let ((_%tl1537915709%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1537715702%_)))
                                                          (_%hd1537815706%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1537715702%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1537915709%_)
                                                          (_%__kont2025020251%_
                                                           _%hd1537815706%_)
                                                          (_%__match2038220383%_
                                                           _%e1535715786%_
                                                           _%hd1535815790%_
                                                           _%tl1535915793%_
                                                           _%e1536415744%_
                                                           _%hd1536515748%_
                                                           _%tl1536615751%_
                                                           _%e1537715702%_
                                                           _%hd1537815706%_
                                                           _%tl1537915709%_))))
                                                  (_%__kont2025820259%_
                                                   _%tl1536615751%_
                                                   _%hd1536515748%_
                                                   _%hd1535815790%_))
                                              (if (gx#stx-pair?
                                                   _%tl1536615751%_)
                                                  (let ((_%e1539915591%_
                                                         (gx#syntax-e
                                                          _%tl1536615751%_)))
                                                    (let ((_%tl1540115598%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1539915591%_)))
                                                          (_%hd1540015595%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1539915591%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1540115598%_)
                                                          (_%__match2036420365%_
                                                           _%e1535715786%_
                                                           _%hd1535815790%_
                                                           _%tl1535915793%_
                                                           _%e1536415744%_
                                                           _%hd1536515748%_
                                                           _%tl1536615751%_
                                                           _%e1539915591%_
                                                           _%hd1540015595%_
                                                           _%tl1540115598%_)
                                                          (_%__match2038220383%_
                                                           _%e1535715786%_
                                                           _%hd1535815790%_
                                                           _%tl1535915793%_
                                                           _%e1536415744%_
                                                           _%hd1536515748%_
                                                           _%tl1536615751%_
                                                           _%e1539915591%_
                                                           _%hd1540015595%_
                                                           _%tl1540115598%_))))
                                                  (_%__kont2025820259%_
                                                   _%tl1536615751%_
                                                   _%hd1536515748%_
                                                   _%hd1535815790%_))))
                                      (if (gx#stx-datum? _%hd1536515748%_)
                                          (let ((_%e1538715645%_
                                                 (gx#stx-e _%hd1536515748%_)))
                                            (if (equal? _%e1538715645%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl1536615751%_)
                                                    (let ((_%e1538815649%_
                                                           (gx#syntax-e
                                                            _%tl1536615751%_)))
                                                      (let ((_%tl1539015656%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1538815649%_)))
                    (_%hd1538915653%_
                     (let () (declare (not safe)) (##car _%e1538815649%_))))
                (if (gx#stx-null? _%tl1539015656%_)
                    (_%__kont2025220253%_ _%hd1538915653%_)
                    (_%__match2038220383%_
                     _%e1535715786%_
                     _%hd1535815790%_
                     _%tl1535915793%_
                     _%e1536415744%_
                     _%hd1536515748%_
                     _%tl1536615751%_
                     _%e1538815649%_
                     _%hd1538915653%_
                     _%tl1539015656%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2025820259%_
                                                     _%tl1536615751%_
                                                     _%hd1536515748%_
                                                     _%hd1535815790%_))
                                                (if (gx#stx-pair?
                                                     _%tl1536615751%_)
                                                    (let ((_%e1539915591%_
                                                           (gx#syntax-e
                                                            _%tl1536615751%_)))
                                                      (let ((_%tl1540115598%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1539915591%_)))
                    (_%hd1540015595%_
                     (let () (declare (not safe)) (##car _%e1539915591%_))))
                (if (gx#stx-null? _%tl1540115598%_)
                    (_%__match2036420365%_
                     _%e1535715786%_
                     _%hd1535815790%_
                     _%tl1535915793%_
                     _%e1536415744%_
                     _%hd1536515748%_
                     _%tl1536615751%_
                     _%e1539915591%_
                     _%hd1540015595%_
                     _%tl1540115598%_)
                    (_%__match2038220383%_
                     _%e1535715786%_
                     _%hd1535815790%_
                     _%tl1535915793%_
                     _%e1536415744%_
                     _%hd1536515748%_
                     _%tl1536615751%_
                     _%e1539915591%_
                     _%hd1540015595%_
                     _%tl1540115598%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2025820259%_
                                                     _%tl1536615751%_
                                                     _%hd1536515748%_
                                                     _%hd1535815790%_))))
                                          (if (gx#stx-pair? _%tl1536615751%_)
                                              (let ((_%e1539915591%_
                                                     (gx#syntax-e
                                                      _%tl1536615751%_)))
                                                (let ((_%tl1540115598%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1539915591%_)))
                                                      (_%hd1540015595%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1539915591%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1540115598%_)
                                                      (_%__match2036420365%_
                                                       _%e1535715786%_
                                                       _%hd1535815790%_
                                                       _%tl1535915793%_
                                                       _%e1536415744%_
                                                       _%hd1536515748%_
                                                       _%tl1536615751%_
                                                       _%e1539915591%_
                                                       _%hd1540015595%_
                                                       _%tl1540115598%_)
                                                      (_%__match2038220383%_
                                                       _%e1535715786%_
                                                       _%hd1535815790%_
                                                       _%tl1535915793%_
                                                       _%e1536415744%_
                                                       _%hd1536515748%_
                                                       _%tl1536615751%_
                                                       _%e1539915591%_
                                                       _%hd1540015595%_
                                                       _%tl1540115598%_))))
                                              (_%__kont2025820259%_
                                               _%tl1536615751%_
                                               _%hd1536515748%_
                                               _%hd1535815790%_))))))
                              (_%__kont2026020261%_ _%tl1535915793%_)))))
                  (let () (declare (not safe)) (_%g1535515433%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#quasiquote|
      (lambda (_%stx15804%_)
        (letrec ((_%simple-quote?15807%_
                  (lambda (_%e16497%_)
                    (let* ((_%__stx2040320404%_ _%e16497%_)
                           (_%g1650516542%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2040320404%_))))
                      (let ((_%__kont2040620407%_ (lambda () '#f))
                            (_%__kont2040820409%_ (lambda () '#f))
                            (_%__kont2041020411%_
                             (lambda (_%g1651916654%_ _%g1652016656%_)
                               (if (_%simple-quote?15807%_ _%g1652016656%_)
                                   (_%simple-quote?15807%_ _%g1651916654%_)
                                   '#f)))
                            (_%__kont2041220413%_
                             (lambda (_%g1652416615%_)
                               (_%simple-quote?15807%_
                                (foldr (lambda (_%g1662816631%_
                                                _%g1662916634%_)
                                         (cons _%g1662816631%_
                                               _%g1662916634%_))
                                       '()
                                       _%g1652416615%_))))
                            (_%__kont2041620417%_
                             (lambda (_%g1653516564%_)
                               (_%simple-quote?15807%_ _%g1653516564%_)))
                            (_%__kont2041820419%_ (lambda () '#t)))
                        (let* ((_%g1650316576%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2040320404%_)
                                      (let ((_%e1653616560%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2040320404%_))))
                                        (_%__kont2041620417%_ _%e1653616560%_))
                                      (_%__kont2041820419%_))))
                               (_%__match2047420475%_
                                (lambda (_%e1652516583%_
                                         _%__splice2041420415%_
                                         _%target1652616587%_
                                         _%tl1652816590%_)
                                  (letrec ((_%loop1652916593%_
                                            (lambda (_%hd1652716597%_
                                                     _%e1653316600%_)
                                              (if (gx#stx-pair?
                                                   _%hd1652716597%_)
                                                  (let ((_%e1653016602%_
                                                         (gx#syntax-e
                                                          _%hd1652716597%_)))
                                                    (let ((_%lp-tl1653216609%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1653016602%_)))
                                                          (_%lp-hd1653116606%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1653016602%_))))
                                                      (_%loop1652916593%_
                                                       _%lp-tl1653216609%_
                                                       (cons _%lp-hd1653116606%_
                                                             _%e1653316600%_))))
                                                  (let ((_%e1653416612%_
                                                         (reverse _%e1653316600%_)))
                                                    (_%__kont2041220413%_
                                                     _%e1653416612%_))))))
                                    (_%loop1652916593%_
                                     _%target1652616587%_
                                     '()))))
                               (_%g1650216637%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2040320404%_)
                                      (let ((_%e1652516583%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2040320404%_))))
                                        (if (gx#stx-pair/null? _%e1652516583%_)
                                            (let ((_%__splice2041420415%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e1652516583%_
                                                    '0)))
                                              (let ((_%tl1652816590%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2041420415%_
                                                        '1)))
                                                    (_%target1652616587%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2041420415%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1652816590%_)
                                                    (_%__match2047420475%_
                                                     _%e1652516583%_
                                                     _%__splice2041420415%_
                                                     _%target1652616587%_
                                                     _%tl1652816590%_)
                                                    (_%__kont2041820419%_))))
                                            (_%__kont2041820419%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1650316576%_))))))
                          (if (gx#stx-pair? _%__stx2040320404%_)
                              (let ((_%e1650716705%_
                                     (gx#syntax-e _%__stx2040320404%_)))
                                (let ((_%tl1650916712%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1650716705%_)))
                                      (_%hd1650816709%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1650716705%_))))
                                  (if (gx#identifier? _%hd1650816709%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21008_|
                                           _%hd1650816709%_)
                                          (if (gx#stx-pair? _%tl1650916712%_)
                                              (let ((_%e1651016715%_
                                                     (gx#syntax-e
                                                      _%tl1650916712%_)))
                                                (let ((_%tl1651216722%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1651016715%_)))
                                                      (_%hd1651116719%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1651016715%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1651216722%_)
                                                      (_%__kont2040620407%_)
                                                      (_%__kont2041020411%_
                                                       _%tl1650916712%_
                                                       _%hd1650816709%_))))
                                              (_%__kont2041020411%_
                                               _%tl1650916712%_
                                               _%hd1650816709%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21009_|
                                               _%hd1650816709%_)
                                              (if (gx#stx-pair?
                                                   _%tl1650916712%_)
                                                  (let ((_%e1651616684%_
                                                         (gx#syntax-e
                                                          _%tl1650916712%_)))
                                                    (let ((_%tl1651816691%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1651616684%_)))
                                                          (_%hd1651716688%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1651616684%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1651816691%_)
                                                          (_%__kont2040820409%_)
                                                          (_%__kont2041020411%_
                                                           _%tl1650916712%_
                                                           _%hd1650816709%_))))
                                                  (_%__kont2041020411%_
                                                   _%tl1650916712%_
                                                   _%hd1650816709%_))
                                              (_%__kont2041020411%_
                                               _%tl1650916712%_
                                               _%hd1650816709%_)))
                                      (_%__kont2041020411%_
                                       _%tl1650916712%_
                                       _%hd1650816709%_))))
                              (let ()
                                (declare (not safe))
                                (_%g1650216637%_))))))))
                 (_%generate15809%_
                  (lambda (_%e15871%_ _%d15873%_)
                    (let* ((_%__stx2048120482%_ _%e15871%_)
                           (_%g1588215940%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2048120482%_))))
                      (let ((_%__kont2048420485%_
                             (lambda (_%g1588416449%_)
                               (let* ((_%g1646216470%_
                                       (lambda (_%g1646316466%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1646316466%_)))
                                      (_%g1646116489%_
                                       (lambda (_%g1646316474%_)
                                         ((lambda (_%g1646416477%_)
                                            (cons (gx#datum->syntax '#f 'list)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quasiquote)
                            '()))
                (cons _%g1646416477%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1646316474%_))))
                                 (_%g1646116489%_
                                  (_%generate15809%_
                                   _%g1588416449%_
                                   (fx1+ _%d15873%_))))))
                            (_%__kont2048620487%_
                             (lambda (_%g1589116378%_)
                               (if (fxzero? _%d15873%_)
                                   _%g1589116378%_
                                   (let* ((_%g1639116399%_
                                           (lambda (_%g1639216395%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1639216395%_)))
                                          (_%g1639016418%_
                                           (lambda (_%g1639216403%_)
                                             ((lambda (_%g1639316406%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote) '()))
                    (cons _%g1639316406%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1639216403%_))))
                                     (_%g1639016418%_
                                      (_%generate15809%_
                                       _%g1589116378%_
                                       (fx1- _%d15873%_)))))))
                            (_%__kont2048820489%_
                             (lambda (_%g1589816307%_)
                               (if (fxzero? _%d15873%_)
                                   (cons (gx#datum->syntax '#f 'foldr)
                                         (cons (gx#datum->syntax '#f 'cons)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons '() '()))
                                                     (cons _%g1589816307%_
                                                           '()))))
                                   (let* ((_%g1632016328%_
                                           (lambda (_%g1632116324%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1632116324%_)))
                                          (_%g1631916347%_
                                           (lambda (_%g1632116332%_)
                                             ((lambda (_%g1632216335%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote-splicing) '()))
                    (cons _%g1632216335%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1632116332%_))))
                                     (_%g1631916347%_
                                      (_%generate15809%_
                                       _%g1589816307%_
                                       (fx1- _%d15873%_)))))))
                            (_%__kont2049020491%_
                             (lambda (_%g1590516232%_ _%g1590616234%_)
                               (let* ((_%g1624916257%_
                                       (lambda (_%g1625016253%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1625016253%_)))
                                      (_%g1624816276%_
                                       (lambda (_%g1625016261%_)
                                         ((lambda (_%g1625116264%_)
                                            (cons (gx#datum->syntax '#f 'foldr)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'cons)
                                                        (cons _%g1625116264%_
                                                              (cons _%g1590616234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1625016261%_))))
                                 (_%g1624816276%_
                                  (_%generate15809%_
                                   _%g1590516232%_
                                   _%d15873%_)))))
                            (_%__kont2049220493%_
                             (lambda (_%g1591616118%_ _%g1591716120%_)
                               (let* ((_%g1613116146%_
                                       (lambda (_%g1613216142%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1613216142%_)))
                                      (_%g1613016191%_
                                       (lambda (_%g1613216150%_)
                                         (if (gx#stx-pair? _%g1613216150%_)
                                             (let ((_%e1613516153%_
                                                    (gx#syntax-e
                                                     _%g1613216150%_)))
                                               (let ((_%hd1613616157%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1613516153%_)))
                                                     (_%tl1613716160%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1613516153%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl1613716160%_)
                                                     (let ((_%e1613816163%_
                                                            (gx#syntax-e
                                                             _%tl1613716160%_)))
                                                       (let ((_%hd1613916167%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e1613816163%_)))
                     (_%tl1614016170%_
                      (let () (declare (not safe)) (##cdr _%e1613816163%_))))
                 (if (gx#stx-null? _%tl1614016170%_)
                     ((lambda (_%g1613316173%_ _%g1613416175%_)
                        (cons (gx#datum->syntax '#f 'cons)
                              (cons _%g1613416175%_
                                    (cons _%g1613316173%_ '()))))
                      _%hd1613916167%_
                      _%hd1613616157%_)
                     (_%g1613116146%_ _%g1613216150%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1613116146%_
                                                      _%g1613216150%_))))
                                             (_%g1613116146%_
                                              _%g1613216150%_)))))
                                 (_%g1613016191%_
                                  (list (_%generate15809%_
                                         _%g1591716120%_
                                         _%d15873%_)
                                        (_%generate15809%_
                                         _%g1591616118%_
                                         _%d15873%_))))))
                            (_%__kont2049420495%_
                             (lambda (_%g1592116048%_)
                               (let* ((_%g1606216070%_
                                       (lambda (_%g1606316066%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1606316066%_)))
                                      (_%g1606116089%_
                                       (lambda (_%g1606316074%_)
                                         ((lambda (_%g1606416077%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'list->vector)
                                                  (cons _%g1606416077%_ '())))
                                          _%g1606316074%_))))
                                 (_%g1606116089%_
                                  (_%generate15809%_
                                   (foldr (lambda (_%g1609216095%_
                                                   _%g1609316098%_)
                                            (cons _%g1609216095%_
                                                  _%g1609316098%_))
                                          '()
                                          _%g1592116048%_)
                                   _%d15873%_)))))
                            (_%__kont2049820499%_
                             (lambda (_%g1593215968%_)
                               (let* ((_%g1597815986%_
                                       (lambda (_%g1597915982%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1597915982%_)))
                                      (_%g1597716005%_
                                       (lambda (_%g1597915990%_)
                                         ((lambda (_%g1598015993%_)
                                            (cons (gx#datum->syntax '#f 'box)
                                                  (cons _%g1598015993%_ '())))
                                          _%g1597915990%_))))
                                 (_%g1597716005%_
                                  (_%generate15809%_
                                   _%g1593215968%_
                                   _%d15873%_)))))
                            (_%__kont2050020501%_
                             (lambda (_%g1593415947%_)
                               (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g1593415947%_ '())))))
                        (let* ((_%g1588016009%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2048120482%_)
                                      (let ((_%e1593315964%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2048120482%_))))
                                        (_%__kont2049820499%_ _%e1593315964%_))
                                      (_%__kont2050020501%_
                                       _%__stx2048120482%_))))
                               (_%__match2060020601%_
                                (lambda (_%e1592216016%_
                                         _%__splice2049620497%_
                                         _%target1592316020%_
                                         _%tl1592516023%_)
                                  (letrec ((_%loop1592616026%_
                                            (lambda (_%hd1592416030%_
                                                     _%e1593016033%_)
                                              (if (gx#stx-pair?
                                                   _%hd1592416030%_)
                                                  (let ((_%e1592716035%_
                                                         (gx#syntax-e
                                                          _%hd1592416030%_)))
                                                    (let ((_%lp-tl1592916042%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1592716035%_)))
                                                          (_%lp-hd1592816039%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1592716035%_))))
                                                      (_%loop1592616026%_
                                                       _%lp-tl1592916042%_
                                                       (cons _%lp-hd1592816039%_
                                                             _%e1593016033%_))))
                                                  (let ((_%e1593116045%_
                                                         (reverse _%e1593016033%_)))
                                                    (_%__kont2049420495%_
                                                     _%e1593116045%_))))))
                                    (_%loop1592616026%_
                                     _%target1592316020%_
                                     '()))))
                               (_%g1587916101%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2048120482%_)
                                      (let ((_%e1592216016%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2048120482%_))))
                                        (if (gx#stx-pair/null? _%e1592216016%_)
                                            (let ((_%__splice2049620497%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e1592216016%_
                                                    '0)))
                                              (let ((_%tl1592516023%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2049620497%_
                                                        '1)))
                                                    (_%target1592316020%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2049620497%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1592516023%_)
                                                    (_%__match2060020601%_
                                                     _%e1592216016%_
                                                     _%__splice2049620497%_
                                                     _%target1592316020%_
                                                     _%tl1592516023%_)
                                                    (_%__kont2050020501%_
                                                     _%__stx2048120482%_))))
                                            (_%__kont2050020501%_
                                             _%__stx2048120482%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1588016009%_))))))
                          (if (gx#stx-pair? _%__stx2048120482%_)
                              (let ((_%e1588516429%_
                                     (gx#syntax-e _%__stx2048120482%_)))
                                (let ((_%tl1588716436%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1588516429%_)))
                                      (_%hd1588616433%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1588516429%_))))
                                  (if (gx#identifier? _%hd1588616433%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21010_|
                                           _%hd1588616433%_)
                                          (if (gx#stx-pair? _%tl1588716436%_)
                                              (let ((_%e1588816439%_
                                                     (gx#syntax-e
                                                      _%tl1588716436%_)))
                                                (let ((_%tl1589016446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1588816439%_)))
                                                      (_%hd1588916443%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1588816439%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1589016446%_)
                                                      (_%__kont2048420485%_
                                                       _%hd1588916443%_)
                                                      (_%__kont2049220493%_
                                                       _%tl1588716436%_
                                                       _%hd1588616433%_))))
                                              (_%__kont2049220493%_
                                               _%tl1588716436%_
                                               _%hd1588616433%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21011_|
                                               _%hd1588616433%_)
                                              (if (gx#stx-pair?
                                                   _%tl1588716436%_)
                                                  (let ((_%e1589516368%_
                                                         (gx#syntax-e
                                                          _%tl1588716436%_)))
                                                    (let ((_%tl1589716375%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1589516368%_)))
                                                          (_%hd1589616372%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1589516368%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1589716375%_)
                                                          (_%__kont2048620487%_
                                                           _%hd1589616372%_)
                                                          (_%__kont2049220493%_
                                                           _%tl1588716436%_
                                                           _%hd1588616433%_))))
                                                  (_%__kont2049220493%_
                                                   _%tl1588716436%_
                                                   _%hd1588616433%_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21012_|
                                                   _%hd1588616433%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1588716436%_)
                                                      (let ((_%e1590216297%_
                                                             (gx#syntax-e
                                                              _%tl1588716436%_)))
                                                        (let ((_%tl1590416304%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1590216297%_)))
                      (_%hd1590316301%_
                       (let () (declare (not safe)) (##car _%e1590216297%_))))
                  (if (gx#stx-null? _%tl1590416304%_)
                      (_%__kont2048820489%_ _%hd1590316301%_)
                      (_%__kont2049220493%_
                       _%tl1588716436%_
                       _%hd1588616433%_))))
              (_%__kont2049220493%_ _%tl1588716436%_ _%hd1588616433%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2049220493%_
                                                   _%tl1588716436%_
                                                   _%hd1588616433%_))))
                                      (if (gx#stx-pair? _%hd1588616433%_)
                                          (let ((_%e1591016212%_
                                                 (gx#syntax-e
                                                  _%hd1588616433%_)))
                                            (let ((_%tl1591216219%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1591016212%_)))
                                                  (_%hd1591116216%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1591016212%_))))
                                              (if (gx#identifier?
                                                   _%hd1591116216%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-2[1]#_g21013_|
                                                       _%hd1591116216%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1591216219%_)
                                                          (let ((_%e1591316222%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1591216219%_)))
                    (let ((_%tl1591516229%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1591316222%_)))
                          (_%hd1591416226%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1591316222%_))))
                      (if (gx#stx-null? _%tl1591516229%_)
                          (if (fxzero? _%d15873%_)
                              (let ((_%g1590516232%_ _%tl1588716436%_)
                                    (_%g1590616234%_ _%hd1591416226%_))
                                (_%__kont2049020491%_
                                 _%g1590516232%_
                                 _%g1590616234%_))
                              (_%__kont2049220493%_
                               _%tl1588716436%_
                               _%hd1588616433%_))
                          (_%__kont2049220493%_
                           _%tl1588716436%_
                           _%hd1588616433%_))))
                  (_%__kont2049220493%_ _%tl1588716436%_ _%hd1588616433%_))
              (_%__kont2049220493%_ _%tl1588716436%_ _%hd1588616433%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2049220493%_
                                                   _%tl1588716436%_
                                                   _%hd1588616433%_))))
                                          (_%__kont2049220493%_
                                           _%tl1588716436%_
                                           _%hd1588616433%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g1587916101%_)))))))))
          (let* ((_%g1581115825%_
                  (lambda (_%g1581215821%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1581215821%_)))
                 (_%g1581015867%_
                  (lambda (_%g1581215829%_)
                    (if (gx#stx-pair? _%g1581215829%_)
                        (let ((_%e1581415832%_ (gx#syntax-e _%g1581215829%_)))
                          (let ((_%hd1581515836%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1581415832%_)))
                                (_%tl1581615839%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1581415832%_))))
                            (if (gx#stx-pair? _%tl1581615839%_)
                                (let ((_%e1581715842%_
                                       (gx#syntax-e _%tl1581615839%_)))
                                  (let ((_%hd1581815846%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1581715842%_)))
                                        (_%tl1581915849%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1581715842%_))))
                                    (if (gx#stx-null? _%tl1581915849%_)
                                        ((lambda (_%g1581315852%_)
                                           (if (_%simple-quote?15807%_
                                                _%g1581315852%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%g1581315852%_
                                                           '()))
                                               (_%generate15809%_
                                                _%g1581315852%_
                                                '0)))
                                         _%hd1581815846%_)
                                        (_%g1581115825%_ _%g1581215829%_))))
                                (_%g1581115825%_ _%g1581215829%_))))
                        (_%g1581115825%_ _%g1581215829%_)))))
            (_%g1581015867%_ _%stx15804%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay|
      (lambda (_%$stx16735%_)
        (let* ((_%__stx2060720608%_ _%$stx16735%_)
               (_%g1674116775%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2060720608%_))))
          (let ((_%__kont2061020611%_
                 (lambda (_%g1674316907%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1674316907%_ '()))))
                (_%__kont2061220613%_
                 (lambda (_%g1675016863%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1675016863%_ '()))))
                (_%__kont2061420615%_
                 (lambda (_%g1676316802%_)
                   (cons (gx#datum->syntax '#f 'make-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%g1676316802%_ '())))
                               '())))))
            (let ((_%__match2063020631%_
                   (lambda (_%e1674416887%_
                            _%hd1674516891%_
                            _%tl1674616894%_
                            _%e1674716897%_
                            _%hd1674816901%_
                            _%tl1674916904%_)
                     (let ((_%g1674316907%_ _%hd1674816901%_))
                       (if (gx#stx-datum? _%g1674316907%_)
                           (_%__kont2061020611%_ _%g1674316907%_)
                           (if (gx#stx-pair? _%hd1674816901%_)
                               (let ((_%e1675716843%_
                                      (gx#syntax-e _%hd1674816901%_)))
                                 (let ((_%tl1675916850%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1675716843%_)))
                                       (_%hd1675816847%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1675716843%_))))
                                   (if (gx#identifier? _%hd1675816847%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/sugar~Sugar-2[1]#_g21014_|
                                            _%hd1675816847%_)
                                           (if (gx#stx-pair? _%tl1675916850%_)
                                               (let ((_%e1676016853%_
                                                      (gx#syntax-e
                                                       _%tl1675916850%_)))
                                                 (let ((_%tl1676216860%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e1676016853%_)))
                                                       (_%hd1676116857%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e1676016853%_))))
                                                   (if (gx#stx-null?
                                                        _%tl1676216860%_)
                                                       (_%__kont2061220613%_
                                                        _%hd1676116857%_)
                                                       (_%__kont2061420615%_
                                                        _%hd1674816901%_))))
                                               (_%__kont2061420615%_
                                                _%hd1674816901%_))
                                           (_%__kont2061420615%_
                                            _%hd1674816901%_))
                                       (_%__kont2061420615%_
                                        _%hd1674816901%_))))
                               (_%__kont2061420615%_ _%hd1674816901%_)))))))
              (if (gx#stx-pair? _%__stx2060720608%_)
                  (let ((_%e1674416887%_ (gx#syntax-e _%__stx2060720608%_)))
                    (let ((_%tl1674616894%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1674416887%_)))
                          (_%hd1674516891%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1674416887%_))))
                      (if (gx#stx-pair? _%tl1674616894%_)
                          (let ((_%e1674716897%_
                                 (gx#syntax-e _%tl1674616894%_)))
                            (let ((_%tl1674916904%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1674716897%_)))
                                  (_%hd1674816901%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1674716897%_))))
                              (if (gx#stx-null? _%tl1674916904%_)
                                  (_%__match2063020631%_
                                   _%e1674416887%_
                                   _%hd1674516891%_
                                   _%tl1674616894%_
                                   _%e1674716897%_
                                   _%hd1674816901%_
                                   _%tl1674916904%_)
                                  (if (gx#stx-pair? _%hd1674816901%_)
                                      (let ((_%e1675716843%_
                                             (gx#syntax-e _%hd1674816901%_)))
                                        (let ((_%tl1675916850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1675716843%_)))
                                              (_%hd1675816847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1675716843%_))))
                                          (if (gx#identifier? _%hd1675816847%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21014_|
                                                   _%hd1675816847%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1675916850%_)
                                                      (let ((_%e1676016853%_
                                                             (gx#syntax-e
                                                              _%tl1675916850%_)))
                                                        (let ((_%tl1676216860%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1676016853%_)))
                      (_%hd1676116857%_
                       (let () (declare (not safe)) (##car _%e1676016853%_))))
                  (let () (declare (not safe)) (_%g1674116775%_))))
              (let () (declare (not safe)) (_%g1674116775%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1674116775%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1674116775%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1674116775%_))))))
                          (let () (declare (not safe)) (_%g1674116775%_)))))
                  (let () (declare (not safe)) (_%g1674116775%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay-atomic|
      (lambda (_%$stx16924%_)
        (let* ((_%__stx2067920680%_ _%$stx16924%_)
               (_%g1693016964%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2067920680%_))))
          (let ((_%__kont2068220683%_
                 (lambda (_%g1693217096%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1693217096%_ '()))))
                (_%__kont2068420685%_
                 (lambda (_%g1693917052%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1693917052%_ '()))))
                (_%__kont2068620687%_
                 (lambda (_%g1695216991%_)
                   (cons (gx#datum->syntax '#f 'make-atomic-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%g1695216991%_ '())))
                               '())))))
            (let ((_%__match2070220703%_
                   (lambda (_%e1693317076%_
                            _%hd1693417080%_
                            _%tl1693517083%_
                            _%e1693617086%_
                            _%hd1693717090%_
                            _%tl1693817093%_)
                     (let ((_%g1693217096%_ _%hd1693717090%_))
                       (if (gx#stx-datum? _%g1693217096%_)
                           (_%__kont2068220683%_ _%g1693217096%_)
                           (if (gx#stx-pair? _%hd1693717090%_)
                               (let ((_%e1694617032%_
                                      (gx#syntax-e _%hd1693717090%_)))
                                 (let ((_%tl1694817039%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1694617032%_)))
                                       (_%hd1694717036%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1694617032%_))))
                                   (if (gx#identifier? _%hd1694717036%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/sugar~Sugar-2[1]#_g21015_|
                                            _%hd1694717036%_)
                                           (if (gx#stx-pair? _%tl1694817039%_)
                                               (let ((_%e1694917042%_
                                                      (gx#syntax-e
                                                       _%tl1694817039%_)))
                                                 (let ((_%tl1695117049%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e1694917042%_)))
                                                       (_%hd1695017046%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e1694917042%_))))
                                                   (if (gx#stx-null?
                                                        _%tl1695117049%_)
                                                       (_%__kont2068420685%_
                                                        _%hd1695017046%_)
                                                       (_%__kont2068620687%_
                                                        _%hd1693717090%_))))
                                               (_%__kont2068620687%_
                                                _%hd1693717090%_))
                                           (_%__kont2068620687%_
                                            _%hd1693717090%_))
                                       (_%__kont2068620687%_
                                        _%hd1693717090%_))))
                               (_%__kont2068620687%_ _%hd1693717090%_)))))))
              (if (gx#stx-pair? _%__stx2067920680%_)
                  (let ((_%e1693317076%_ (gx#syntax-e _%__stx2067920680%_)))
                    (let ((_%tl1693517083%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1693317076%_)))
                          (_%hd1693417080%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1693317076%_))))
                      (if (gx#stx-pair? _%tl1693517083%_)
                          (let ((_%e1693617086%_
                                 (gx#syntax-e _%tl1693517083%_)))
                            (let ((_%tl1693817093%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1693617086%_)))
                                  (_%hd1693717090%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1693617086%_))))
                              (if (gx#stx-null? _%tl1693817093%_)
                                  (_%__match2070220703%_
                                   _%e1693317076%_
                                   _%hd1693417080%_
                                   _%tl1693517083%_
                                   _%e1693617086%_
                                   _%hd1693717090%_
                                   _%tl1693817093%_)
                                  (if (gx#stx-pair? _%hd1693717090%_)
                                      (let ((_%e1694617032%_
                                             (gx#syntax-e _%hd1693717090%_)))
                                        (let ((_%tl1694817039%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1694617032%_)))
                                              (_%hd1694717036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1694617032%_))))
                                          (if (gx#identifier? _%hd1694717036%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21015_|
                                                   _%hd1694717036%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1694817039%_)
                                                      (let ((_%e1694917042%_
                                                             (gx#syntax-e
                                                              _%tl1694817039%_)))
                                                        (let ((_%tl1695117049%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1694917042%_)))
                      (_%hd1695017046%_
                       (let () (declare (not safe)) (##car _%e1694917042%_))))
                  (let () (declare (not safe)) (_%g1693016964%_))))
              (let () (declare (not safe)) (_%g1693016964%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1693016964%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1693016964%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1693016964%_))))))
                          (let () (declare (not safe)) (_%g1693016964%_)))))
                  (let () (declare (not safe)) (_%g1693016964%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#cut|
      (lambda (_%stx17113%_)
        (letrec ((_%generate17116%_
                  (lambda (_%rest17235%_)
                    (let _%lp17238%_ ((_%rest17241%_ _%rest17235%_)
                                      (_%hd17243%_ '())
                                      (_%body17244%_ '()))
                      (let* ((_%__stx2077120772%_ _%rest17241%_)
                             (_%g1724717259%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx2077120772%_))))
                        (let ((_%__kont2077420775%_
                               (lambda (_%g1724917287%_ _%g1725017289%_)
                                 (let* ((_%__stx2075120752%_ _%g1725017289%_)
                                        (_%g1730617313%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx2075120752%_))))
                                   (let ((_%__kont2075420755%_
                                          (lambda ()
                                            (let ((_%arg17349%_ (gx#genident)))
                                              (_%lp17238%_
                                               _%g1724917287%_
                                               (cons _%arg17349%_ _%hd17243%_)
                                               (cons _%arg17349%_
                                                     _%body17244%_)))))
                                         (_%__kont2075620757%_
                                          (lambda ()
                                            (if (gx#stx-null? _%g1724917287%_)
                                                (let ((_%tail17335%_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail17335%_
                         _%hd17243%_)
                  (foldl cons (list _%tail17335%_) _%body17244%_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; cut ellipsis <...> not in tail position"
                                                 _%stx17113%_
                                                 _%g1725017289%_))))
                                         (_%__kont2075820759%_
                                          (lambda ()
                                            (_%lp17238%_
                                             _%g1724917287%_
                                             _%hd17243%_
                                             (cons _%g1725017289%_
                                                   _%body17244%_)))))
                                     (if (gx#identifier? _%__stx2075120752%_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core/sugar~Sugar-2[1]#_g21016_|
                                              _%__stx2075120752%_)
                                             (_%__kont2075420755%_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core/sugar~Sugar-2[1]#_g21017_|
                                                  _%__stx2075120752%_)
                                                 (_%__kont2075620757%_)
                                                 (_%__kont2075820759%_)))
                                         (_%__kont2075820759%_))))))
                              (_%__kont2077620777%_
                               (lambda ()
                                 (values (reverse _%hd17243%_)
                                         (reverse _%body17244%_)
                                         '#f))))
                          (if (gx#stx-pair? _%__stx2077120772%_)
                              (let ((_%e1725117277%_
                                     (gx#syntax-e _%__stx2077120772%_)))
                                (let ((_%tl1725317284%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1725117277%_)))
                                      (_%hd1725217281%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1725117277%_))))
                                  (_%__kont2077420775%_
                                   _%tl1725317284%_
                                   _%hd1725217281%_)))
                              (_%__kont2077620777%_))))))))
          (let* ((_%g1711917130%_
                  (lambda (_%g1712017126%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1712017126%_)))
                 (_%g1711817231%_
                  (lambda (_%g1712017134%_)
                    (if (gx#stx-pair? _%g1712017134%_)
                        (let ((_%e1712217137%_ (gx#syntax-e _%g1712017134%_)))
                          (let ((_%hd1712317141%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1712217137%_)))
                                (_%tl1712417144%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1712217137%_))))
                            ((lambda (_%g1712117147%_)
                               (if (and (gx#stx-list? _%g1712117147%_)
                                        (not (gx#stx-null? _%g1712117147%_)))
                                   (let ((_g21018_
                                          (_%generate17116%_ _%g1712117147%_)))
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
                                       (let ((_%hd17160%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21018_ 0)))
                                             (_%body17162%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21018_ 1)))
                                             (_%tail?17163%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21018_ 2))))
                                         (let* ((_%g1716517173%_
                                                 (lambda (_%g1716617169%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g1716617169%_)))
                                                (_%g1716417227%_
                                                 (lambda (_%g1716617177%_)
                                                   ((lambda (_%g1716717180%_)
                                                      (let* ((_%g1719317201%_
                                                              (lambda (_%g1719417197%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g1719417197%_)))
                     (_%g1719217223%_
                      (lambda (_%g1719417205%_)
                        ((lambda (_%g1719517208%_)
                           (if _%tail?17163%_
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%g1716717180%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'apply)
                                                       _%g1719517208%_)
                                                 '())))
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%g1716717180%_
                                           (cons _%g1719517208%_ '())))))
                         _%g1719417205%_))))
                (_%g1719217223%_ _%body17162%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g1716617177%_))))
                                           (_%g1716417227%_ _%hd17160%_)))))
                                   (_%g1711917130%_ _%g1712017134%_)))
                             _%tl1712417144%_)))
                        (_%g1711917130%_ _%g1712017134%_)))))
            (_%g1711817231%_ _%stx17113%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<>|
      (lambda (_%$stx17361%_)
        (let ((_%g1736417371%_
               (lambda (_%g1736517367%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1736517367%_))))
          (_%g1736417371%_ _%$stx17361%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<...>|
      (lambda (_%$stx17375%_)
        (let ((_%g1737817385%_
               (lambda (_%g1737917381%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1737917381%_))))
          (_%g1737817385%_ _%$stx17375%_))))))

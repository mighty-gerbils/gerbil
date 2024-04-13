(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-2[1]#_g20920_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20921_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20922_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20958_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20959_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20960_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20967_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20968_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20969_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20970_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20971_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20972_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20973_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20974_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20975_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20976_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-2[:0:]#lambda|
      (lambda (_%stx5286%_)
        (letrec ((_%simple-lambda?5289%_
                  (lambda (_%hd8695%_)
                    (gx#stx-andmap gx#identifier? _%hd8695%_)))
                 (_%opt-lambda?5291%_
                  (lambda (_%hd8547%_)
                    (let _%lp8550%_ ((_%rest8553%_ _%hd8547%_)
                                     (_%opt?8555%_ '#f))
                      (let* ((_%__stx1914419145%_ _%rest8553%_)
                             (_%g85588570%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1914419145%_))))
                        (let ((_%__kont1914719148%_
                               (lambda (_%L8602%_ _%L8604%_)
                                 (let* ((_%__stx1912019121%_ _%L8604%_)
                                        (_%g86208634%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1912019121%_))))
                                   (let ((_%__kont1912319124%_
                                          (lambda (_%L8672%_)
                                            (_%lp8550%_ _%L8602%_ '#t)))
                                         (_%__kont1912519126%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8604%_)
                                                (if (not _%opt?8555%_)
                                                    (_%lp8550%_ _%L8602%_ '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((_%__match1914119142%_
                                            (lambda (_%e86238652%_
                                                     _%hd86248656%_
                                                     _%tl86258659%_
                                                     _%e86268662%_
                                                     _%hd86278666%_
                                                     _%tl86288669%_)
                                              (let ((_%L8672%_ _%hd86248656%_))
                                                (if (gx#identifier? _%L8672%_)
                                                    (_%__kont1912319124%_
                                                     _%L8672%_)
                                                    (_%__kont1912519126%_))))))
                                       (if (gx#stx-pair? _%__stx1912019121%_)
                                           (let ((_%e86238652%_
                                                  (gx#syntax-e
                                                   _%__stx1912019121%_)))
                                             (let ((_%tl86258659%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e86238652%_)))
                                                   (_%hd86248656%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e86238652%_))))
                                               (if (gx#stx-pair?
                                                    _%tl86258659%_)
                                                   (let ((_%e86268662%_
                                                          (gx#syntax-e
                                                           _%tl86258659%_)))
                                                     (let ((_%tl86288669%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e86268662%_)))
                                                           (_%hd86278666%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e86268662%_))))
                                                       (if (gx#stx-null?
                                                            _%tl86288669%_)
                                                           (_%__match1914119142%_
                                                            _%e86238652%_
                                                            _%hd86248656%_
                                                            _%tl86258659%_
                                                            _%e86268662%_
                                                            _%hd86278666%_
                                                            _%tl86288669%_)
                                                           (_%__kont1912519126%_))))
                                                   (_%__kont1912519126%_))))
                                           (_%__kont1912519126%_)))))))
                              (_%__kont1914919150%_
                               (lambda ()
                                 (if _%opt?8555%_
                                     (let ((_%$e8581%_
                                            (gx#stx-null? _%rest8553%_)))
                                       (if _%$e8581%_
                                           _%$e8581%_
                                           (gx#identifier? _%rest8553%_)))
                                     '#f))))
                          (if (gx#stx-pair? _%__stx1914419145%_)
                              (let ((_%e85628592%_
                                     (gx#syntax-e _%__stx1914419145%_)))
                                (let ((_%tl85648599%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e85628592%_)))
                                      (_%hd85638596%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e85628592%_))))
                                  (_%__kont1914719148%_
                                   _%tl85648599%_
                                   _%hd85638596%_)))
                              (_%__kont1914919150%_)))))))
                 (_%opt-lambda-split5292%_
                  (lambda (_%hd8399%_)
                    (let _%lp8402%_ ((_%rest8405%_ _%hd8399%_)
                                     (_%pre8407%_ '())
                                     (_%opt8408%_ '()))
                      (let* ((_%__stx1918419185%_ _%rest8405%_)
                             (_%g84118423%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1918419185%_))))
                        (let ((_%__kont1918719188%_
                               (lambda (_%L8451%_ _%L8453%_)
                                 (let* ((_%__stx1916019161%_ _%L8453%_)
                                        (_%g84698484%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1916019161%_))))
                                   (let ((_%__kont1916319164%_
                                          (lambda (_%L8522%_ _%L8524%_)
                                            (_%lp8402%_
                                             _%L8451%_
                                             _%pre8407%_
                                             (cons (cons _%L8524%_ _%L8522%_)
                                                   _%opt8408%_))))
                                         (_%__kont1916519166%_
                                          (lambda ()
                                            (_%lp8402%_
                                             _%L8451%_
                                             (cons _%L8453%_ _%pre8407%_)
                                             _%opt8408%_))))
                                     (if (gx#stx-pair? _%__stx1916019161%_)
                                         (let ((_%e84738502%_
                                                (gx#syntax-e
                                                 _%__stx1916019161%_)))
                                           (let ((_%tl84758509%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e84738502%_)))
                                                 (_%hd84748506%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e84738502%_))))
                                             (if (gx#stx-pair? _%tl84758509%_)
                                                 (let ((_%e84768512%_
                                                        (gx#syntax-e
                                                         _%tl84758509%_)))
                                                   (let ((_%tl84788519%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e84768512%_)))
                                                         (_%hd84778516%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e84768512%_))))
                                                     (if (gx#stx-null?
                                                          _%tl84788519%_)
                                                         (_%__kont1916319164%_
                                                          _%hd84778516%_
                                                          _%hd84748506%_)
                                                         (_%__kont1916519166%_))))
                                                 (_%__kont1916519166%_))))
                                         (_%__kont1916519166%_))))))
                              (_%__kont1918919190%_
                               (lambda ()
                                 (values (reverse _%pre8407%_)
                                         (reverse _%opt8408%_)
                                         _%rest8405%_))))
                          (if (gx#stx-pair? _%__stx1918419185%_)
                              (let ((_%e84158441%_
                                     (gx#syntax-e _%__stx1918419185%_)))
                                (let ((_%tl84178448%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e84158441%_)))
                                      (_%hd84168445%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e84158441%_))))
                                  (_%__kont1918719188%_
                                   _%tl84178448%_
                                   _%hd84168445%_)))
                              (_%__kont1918919190%_)))))))
                 (_%kw-lambda?5293%_
                  (lambda (_%hd8067%_)
                    (let _%lp8070%_ ((_%rest8073%_ _%hd8067%_)
                                     (_%opt?8075%_ '#f)
                                     (_%key?8076%_ '#f))
                      (let* ((_%__stx1924819249%_ _%rest8073%_)
                             (_%g80818111%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1924819249%_))))
                        (let ((_%__kont1925119252%_
                               (lambda (_%L8306%_ _%L8308%_ _%L8309%_)
                                 (let* ((_%__stx1922419225%_ _%L8308%_)
                                        (_%g83248338%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1922419225%_))))
                                   (let ((_%__kont1922719228%_
                                          (lambda (_%L8376%_)
                                            (if (gx#identifier? _%L8376%_)
                                                (_%lp8070%_
                                                 _%L8306%_
                                                 _%opt?8075%_
                                                 '#t)
                                                '#f)))
                                         (_%__kont1922919230%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8308%_)
                                                (_%lp8070%_
                                                 _%L8306%_
                                                 _%opt?8075%_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1922419225%_)
                                         (let ((_%e83278356%_
                                                (gx#syntax-e
                                                 _%__stx1922419225%_)))
                                           (let ((_%tl83298363%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e83278356%_)))
                                                 (_%hd83288360%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e83278356%_))))
                                             (if (gx#stx-pair? _%tl83298363%_)
                                                 (let ((_%e83308366%_
                                                        (gx#syntax-e
                                                         _%tl83298363%_)))
                                                   (let ((_%tl83328373%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e83308366%_)))
                                                         (_%hd83318370%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e83308366%_))))
                                                     (if (gx#stx-null?
                                                          _%tl83328373%_)
                                                         (_%__kont1922719228%_
                                                          _%hd83288360%_)
                                                         (_%__kont1922919230%_))))
                                                 (_%__kont1922919230%_))))
                                         (_%__kont1922919230%_))))))
                              (_%__kont1925319254%_
                               (lambda (_%L8263%_ _%L8265%_)
                                 (if (gx#identifier? _%L8265%_)
                                     (_%lp8070%_ _%L8263%_ _%opt?8075%_ '#t)
                                     '#f)))
                              (_%__kont1925519256%_
                               (lambda (_%L8143%_ _%L8145%_)
                                 (let* ((_%__stx1920019201%_ _%L8145%_)
                                        (_%g81618175%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1920019201%_))))
                                   (let ((_%__kont1920319204%_
                                          (lambda (_%L8213%_)
                                            (if (gx#identifier? _%L8213%_)
                                                (_%lp8070%_
                                                 _%L8143%_
                                                 '#t
                                                 _%key?8076%_)
                                                '#f)))
                                         (_%__kont1920519206%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8145%_)
                                                (if (not _%opt?8075%_)
                                                    (_%lp8070%_
                                                     _%L8143%_
                                                     '#f
                                                     _%key?8076%_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1920019201%_)
                                         (let ((_%e81648193%_
                                                (gx#syntax-e
                                                 _%__stx1920019201%_)))
                                           (let ((_%tl81668200%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e81648193%_)))
                                                 (_%hd81658197%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e81648193%_))))
                                             (if (gx#stx-pair? _%tl81668200%_)
                                                 (let ((_%e81678203%_
                                                        (gx#syntax-e
                                                         _%tl81668200%_)))
                                                   (let ((_%tl81698210%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e81678203%_)))
                                                         (_%hd81688207%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e81678203%_))))
                                                     (if (gx#stx-null?
                                                          _%tl81698210%_)
                                                         (_%__kont1920319204%_
                                                          _%hd81658197%_)
                                                         (_%__kont1920519206%_))))
                                                 (_%__kont1920519206%_))))
                                         (_%__kont1920519206%_))))))
                              (_%__kont1925719258%_
                               (lambda ()
                                 (if _%key?8076%_
                                     (let ((_%$e8122%_
                                            (gx#stx-null? _%rest8073%_)))
                                       (if _%$e8122%_
                                           _%$e8122%_
                                           (gx#identifier? _%rest8073%_)))
                                     '#f))))
                          (let ((_%__match1927119272%_
                                 (lambda (_%e80868286%_
                                          _%hd80878290%_
                                          _%tl80888293%_
                                          _%e80898296%_
                                          _%hd80908300%_
                                          _%tl80918303%_)
                                   (let ((_%L8306%_ _%tl80918303%_)
                                         (_%L8308%_ _%hd80908300%_)
                                         (_%L8309%_ _%hd80878290%_))
                                     (if (gx#stx-keyword? _%L8309%_)
                                         (_%__kont1925119252%_
                                          _%L8306%_
                                          _%L8308%_
                                          _%L8309%_)
                                         (if (gx#stx-datum? _%hd80878290%_)
                                             (let ((_%e80978249%_
                                                    (gx#stx-e _%hd80878290%_)))
                                               (if (equal? _%e80978249%_
                                                           '#!key)
                                                   (_%__kont1925319254%_
                                                    _%tl80918303%_
                                                    _%hd80908300%_)
                                                   (_%__kont1925519256%_
                                                    _%tl80888293%_
                                                    _%hd80878290%_)))
                                             (_%__kont1925519256%_
                                              _%tl80888293%_
                                              _%hd80878290%_)))))))
                            (if (gx#stx-pair? _%__stx1924819249%_)
                                (let ((_%e80868286%_
                                       (gx#syntax-e _%__stx1924819249%_)))
                                  (let ((_%tl80888293%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e80868286%_)))
                                        (_%hd80878290%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e80868286%_))))
                                    (if (gx#stx-pair? _%tl80888293%_)
                                        (let ((_%e80898296%_
                                               (gx#syntax-e _%tl80888293%_)))
                                          (let ((_%tl80918303%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e80898296%_)))
                                                (_%hd80908300%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e80898296%_))))
                                            (_%__match1927119272%_
                                             _%e80868286%_
                                             _%hd80878290%_
                                             _%tl80888293%_
                                             _%e80898296%_
                                             _%hd80908300%_
                                             _%tl80918303%_)))
                                        (if (gx#stx-datum? _%hd80878290%_)
                                            (let ((_%e80978249%_
                                                   (gx#stx-e _%hd80878290%_)))
                                              (_%__kont1925519256%_
                                               _%tl80888293%_
                                               _%hd80878290%_))
                                            (_%__kont1925519256%_
                                             _%tl80888293%_
                                             _%hd80878290%_)))))
                                (_%__kont1925719258%_))))))))
                 (_%kw-lambda-split5294%_
                  (lambda (_%hd7800%_)
                    (let _%lp7803%_ ((_%rest7806%_ _%hd7800%_)
                                     (_%kwvar7808%_ '#f)
                                     (_%kwargs7809%_ '())
                                     (_%args7810%_ '()))
                      (let* ((_%__stx1932219323%_ _%rest7806%_)
                             (_%g78157845%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1932219323%_))))
                        (let ((_%__kont1932519326%_
                               (lambda (_%L7964%_ _%L7966%_ _%L7967%_)
                                 (let ((_%key7981%_ (gx#stx-e _%L7967%_)))
                                   (if (find (lambda (_%kwarg7984%_)
                                               (eq? _%key7981%_
                                                    (car _%kwarg7984%_)))
                                             _%kwargs7809%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad syntax; duplicate keyword argument"
                                        _%stx5286%_
                                        _%hd7800%_
                                        _%key7981%_)
                                       (let* ((_%__stx1929819299%_ _%L7966%_)
                                              (_%g79888003%_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx1929819299%_))))
                                         (let ((_%__kont1930119302%_
                                                (lambda (_%L8041%_ _%L8043%_)
                                                  (_%lp7803%_
                                                   _%L7964%_
                                                   _%kwvar7808%_
                                                   (cons (list _%key7981%_
                                                               _%L8043%_
                                                               _%L8041%_)
                                                         _%kwargs7809%_)
                                                   _%args7810%_)))
                                               (_%__kont1930319304%_
                                                (lambda ()
                                                  (_%lp7803%_
                                                   _%L7964%_
                                                   _%kwvar7808%_
                                                   (cons (list _%key7981%_
                                                               _%L7966%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'error)
                             (cons '"Missing required keyword argument"
                                   (cons _%L7967%_ '()))))
                 _%kwargs7809%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%args7810%_))))
                                           (if (gx#stx-pair?
                                                _%__stx1929819299%_)
                                               (let ((_%e79928021%_
                                                      (gx#syntax-e
                                                       _%__stx1929819299%_)))
                                                 (let ((_%tl79948028%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e79928021%_)))
                                                       (_%hd79938025%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e79928021%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl79948028%_)
                                                       (let ((_%e79958031%_
                                                              (gx#syntax-e
                                                               _%tl79948028%_)))
                                                         (let ((_%tl79978038%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e79958031%_)))
                       (_%hd79968035%_
                        (let () (declare (not safe)) (##car _%e79958031%_))))
                   (if (gx#stx-null? _%tl79978038%_)
                       (_%__kont1930119302%_ _%hd79968035%_ _%hd79938025%_)
                       (_%__kont1930319304%_))))
               (_%__kont1930319304%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont1930319304%_))))))))
                              (_%__kont1932719328%_
                               (lambda (_%L7921%_ _%L7923%_)
                                 (if _%kwvar7808%_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"bad syntax; duplicate #!key argument"
                                      _%stx5286%_
                                      _%hd7800%_
                                      _%L7923%_)
                                     (_%lp7803%_
                                      _%L7921%_
                                      _%L7923%_
                                      _%kwargs7809%_
                                      _%args7810%_))))
                              (_%__kont1932919330%_
                               (lambda (_%L7873%_ _%L7875%_)
                                 (_%lp7803%_
                                  _%L7873%_
                                  _%kwvar7808%_
                                  _%kwargs7809%_
                                  (cons _%L7875%_ _%args7810%_))))
                              (_%__kont1933119332%_
                               (lambda ()
                                 (values _%kwvar7808%_
                                         (reverse _%kwargs7809%_)
                                         (foldl cons
                                                _%rest7806%_
                                                _%args7810%_)))))
                          (let ((_%__match1934519346%_
                                 (lambda (_%e78207944%_
                                          _%hd78217948%_
                                          _%tl78227951%_
                                          _%e78237954%_
                                          _%hd78247958%_
                                          _%tl78257961%_)
                                   (let ((_%L7964%_ _%tl78257961%_)
                                         (_%L7966%_ _%hd78247958%_)
                                         (_%L7967%_ _%hd78217948%_))
                                     (if (gx#stx-keyword? _%L7967%_)
                                         (_%__kont1932519326%_
                                          _%L7964%_
                                          _%L7966%_
                                          _%L7967%_)
                                         (if (gx#stx-datum? _%hd78217948%_)
                                             (let ((_%e78317907%_
                                                    (gx#stx-e _%hd78217948%_)))
                                               (if (equal? _%e78317907%_
                                                           '#!key)
                                                   (_%__kont1932719328%_
                                                    _%tl78257961%_
                                                    _%hd78247958%_)
                                                   (_%__kont1932919330%_
                                                    _%tl78227951%_
                                                    _%hd78217948%_)))
                                             (_%__kont1932919330%_
                                              _%tl78227951%_
                                              _%hd78217948%_)))))))
                            (if (gx#stx-pair? _%__stx1932219323%_)
                                (let ((_%e78207944%_
                                       (gx#syntax-e _%__stx1932219323%_)))
                                  (let ((_%tl78227951%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e78207944%_)))
                                        (_%hd78217948%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e78207944%_))))
                                    (if (gx#stx-pair? _%tl78227951%_)
                                        (let ((_%e78237954%_
                                               (gx#syntax-e _%tl78227951%_)))
                                          (let ((_%tl78257961%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e78237954%_)))
                                                (_%hd78247958%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e78237954%_))))
                                            (_%__match1934519346%_
                                             _%e78207944%_
                                             _%hd78217948%_
                                             _%tl78227951%_
                                             _%e78237954%_
                                             _%hd78247958%_
                                             _%tl78257961%_)))
                                        (if (gx#stx-datum? _%hd78217948%_)
                                            (let ((_%e78317907%_
                                                   (gx#stx-e _%hd78217948%_)))
                                              (_%__kont1932919330%_
                                               _%tl78227951%_
                                               _%hd78217948%_))
                                            (_%__kont1932919330%_
                                             _%tl78227951%_
                                             _%hd78217948%_)))))
                                (_%__kont1933119332%_))))))))
                 (_%check-duplicate-bindings5295%_
                  (lambda (_%hd7492%_)
                    (let _%lp7495%_ ((_%rest7498%_ _%hd7492%_)
                                     (_%ids7500%_ '()))
                      (let* ((_%__stx1939619397%_ _%rest7498%_)
                             (_%g75037515%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1939619397%_))))
                        (let ((_%__kont1939919400%_
                               (lambda (_%L7543%_ _%L7545%_)
                                 (if (gx#identifier? _%L7545%_)
                                     (_%lp7495%_
                                      _%L7543%_
                                      (cons _%L7545%_ _%ids7500%_))
                                     (if (gx#stx-pair? _%L7545%_)
                                         (let* ((_%g75647578%_
                                                 (lambda (_%g75657574%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g75657574%_)))
                                                (_%g75637620%_
                                                 (lambda (_%g75657582%_)
                                                   (if (gx#stx-pair?
                                                        _%g75657582%_)
                                                       (let ((_%e75677585%_
                                                              (gx#syntax-e
                                                               _%g75657582%_)))
                                                         (let ((_%hd75687589%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e75677585%_)))
                       (_%tl75697592%_
                        (let () (declare (not safe)) (##cdr _%e75677585%_))))
                   (if (gx#stx-pair? _%tl75697592%_)
                       (let ((_%e75707595%_ (gx#syntax-e _%tl75697592%_)))
                         (let ((_%hd75717599%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e75707595%_)))
                               (_%tl75727602%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e75707595%_))))
                           (if (gx#stx-null? _%tl75727602%_)
                               ((lambda (_%L7605%_)
                                  (_%lp7495%_
                                   _%L7543%_
                                   (cons _%L7605%_ _%ids7500%_)))
                                _%hd75687589%_)
                               (_%g75647578%_ _%g75657582%_))))
                       (_%g75647578%_ _%g75657582%_))))
               (_%g75647578%_ _%g75657582%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g75637620%_ _%L7545%_))
                                         (if (gx#stx-keyword? _%L7545%_)
                                             (let* ((_%g76267638%_
                                                     (lambda (_%g76277634%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g76277634%_)))
                                                    (_%g76257741%_
                                                     (lambda (_%g76277642%_)
                                                       (if (gx#stx-pair?
                                                            _%g76277642%_)
                                                           (let ((_%e76307645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g76277642%_)))
                     (let ((_%hd76317649%_
                            (let ()
                              (declare (not safe))
                              (##car _%e76307645%_)))
                           (_%tl76327652%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e76307645%_))))
                       ((lambda (_%L7655%_ _%L7657%_)
                          (let* ((_%__stx1937219373%_ _%L7657%_)
                                 (_%g76707684%_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx1937219373%_))))
                            (let ((_%__kont1937519376%_
                                   (lambda (_%L7722%_)
                                     (_%lp7495%_
                                      _%L7655%_
                                      (cons _%L7722%_ _%ids7500%_))))
                                  (_%__kont1937719378%_
                                   (lambda ()
                                     (_%lp7495%_
                                      _%L7655%_
                                      (cons _%L7657%_ _%ids7500%_)))))
                              (if (gx#stx-pair? _%__stx1937219373%_)
                                  (let ((_%e76737702%_
                                         (gx#syntax-e _%__stx1937219373%_)))
                                    (let ((_%tl76757709%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e76737702%_)))
                                          (_%hd76747706%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e76737702%_))))
                                      (if (gx#stx-pair? _%tl76757709%_)
                                          (let ((_%e76767712%_
                                                 (gx#syntax-e _%tl76757709%_)))
                                            (let ((_%tl76787719%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e76767712%_)))
                                                  (_%hd76777716%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e76767712%_))))
                                              (if (gx#stx-null? _%tl76787719%_)
                                                  (_%__kont1937519376%_
                                                   _%hd76747706%_)
                                                  (_%__kont1937719378%_))))
                                          (_%__kont1937719378%_))))
                                  (_%__kont1937719378%_)))))
                        _%tl76327652%_
                        _%hd76317649%_)))
                   (_%g76267638%_ _%g76277642%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g76257741%_ _%L7543%_))
                                             (if (eq? (gx#stx-e _%L7545%_)
                                                      '#!key)
                                                 (let* ((_%g77477759%_
                                                         (lambda (_%g77487755%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g77487755%_)))
                                                        (_%g77467790%_
                                                         (lambda (_%g77487763%_)
                                                           (if (gx#stx-pair?
                                                                _%g77487763%_)
                                                               (let ((_%e77517766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%g77487763%_)))
                         (let ((_%hd77527770%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e77517766%_)))
                               (_%tl77537773%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e77517766%_))))
                           ((lambda (_%L7776%_ _%L7778%_)
                              (_%lp7495%_
                               _%L7776%_
                               (cons _%L7778%_ _%ids7500%_)))
                            _%tl77537773%_
                            _%hd77527770%_)))
                       (_%g77477759%_ _%g77487763%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g77467790%_ _%L7543%_))
                                                 (error '"BUG: check-duplicate-bindings"
                                                        _%stx5286%_
                                                        _%rest7498%_)))))))
                              (_%__kont1940119402%_
                               (lambda ()
                                 (gx#check-duplicate-identifiers
                                  (if (gx#stx-null? _%rest7498%_)
                                      _%ids7500%_
                                      (cons _%rest7498%_ _%ids7500%_))
                                  _%stx5286%_))))
                          (if (gx#stx-pair? _%__stx1939619397%_)
                              (let ((_%e75077533%_
                                     (gx#syntax-e _%__stx1939619397%_)))
                                (let ((_%tl75097540%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e75077533%_)))
                                      (_%hd75087537%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e75077533%_))))
                                  (_%__kont1939919400%_
                                   _%tl75097540%_
                                   _%hd75087537%_)))
                              (_%__kont1940119402%_)))))))
                 (_%generate-opt-primary5296%_
                  (lambda (_%pre7284%_ _%opt7286%_ _%tail7287%_ _%body7288%_)
                    (let* ((_%g72907331%_
                            (lambda (_%g72917327%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g72917327%_)))
                           (_%g72897488%_
                            (lambda (_%g72917335%_)
                              (if (gx#stx-pair? _%g72917335%_)
                                  (let ((_%e72967338%_
                                         (gx#syntax-e _%g72917335%_)))
                                    (let ((_%hd72977342%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e72967338%_)))
                                          (_%tl72987345%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e72967338%_))))
                                      (if (gx#stx-pair/null? _%hd72977342%_)
                                          (let ((_g20885_
                                                 (gx#syntax-split-splice
                                                  _%hd72977342%_
                                                  '0)))
                                            (begin
                                              (let ((_g20886_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20885_)
                                                           (##vector-length
                                                            _g20885_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20886_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20886_)))
                                              (let ((_%target72997348%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20885_
                                                        0)))
                                                    (_%tl73017351%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20885_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl73017351%_)
                                                    (letrec ((_%loop73027354%_
                                                              (lambda (_%hd73007358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%pre73067361%_)
                        (if (gx#stx-pair? _%hd73007358%_)
                            (let ((_%e73037364%_ (gx#syntax-e _%hd73007358%_)))
                              (let ((_%lp-hd73047368%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e73037364%_)))
                                    (_%lp-tl73057371%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e73037364%_))))
                                (_%loop73027354%_
                                 _%lp-tl73057371%_
                                 (cons _%lp-hd73047368%_ _%pre73067361%_))))
                            (let ((_%pre73077374%_ (reverse _%pre73067361%_)))
                              (if (gx#stx-pair? _%tl72987345%_)
                                  (let ((_%e73087378%_
                                         (gx#syntax-e _%tl72987345%_)))
                                    (let ((_%hd73097382%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e73087378%_)))
                                          (_%tl73107385%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e73087378%_))))
                                      (if (gx#stx-pair/null? _%hd73097382%_)
                                          (let ((_g20887_
                                                 (gx#syntax-split-splice
                                                  _%hd73097382%_
                                                  '0)))
                                            (begin
                                              (let ((_g20888_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20887_)
                                                           (##vector-length
                                                            _g20887_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20888_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20888_)))
                                              (let ((_%target73117388%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20887_
                                                        0)))
                                                    (_%tl73137391%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20887_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl73137391%_)
                                                    (letrec ((_%loop73147394%_
                                                              (lambda (_%hd73127398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%opt73187401%_)
                        (if (gx#stx-pair? _%hd73127398%_)
                            (let ((_%e73157404%_ (gx#syntax-e _%hd73127398%_)))
                              (let ((_%lp-hd73167408%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e73157404%_)))
                                    (_%lp-tl73177411%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e73157404%_))))
                                (_%loop73147394%_
                                 _%lp-tl73177411%_
                                 (cons _%lp-hd73167408%_ _%opt73187401%_))))
                            (let ((_%opt73197414%_ (reverse _%opt73187401%_)))
                              (if (gx#stx-pair? _%tl73107385%_)
                                  (let ((_%e73207418%_
                                         (gx#syntax-e _%tl73107385%_)))
                                    (let ((_%hd73217422%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e73207418%_)))
                                          (_%tl73227425%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e73207418%_))))
                                      (if (gx#stx-pair? _%tl73227425%_)
                                          (let ((_%e73237428%_
                                                 (gx#syntax-e _%tl73227425%_)))
                                            (let ((_%hd73247432%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e73237428%_)))
                                                  (_%tl73257435%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e73237428%_))))
                                              (if (gx#stx-null? _%tl73257435%_)
                                                  ((lambda (_%L7438%_
                                                            _%L7440%_
                                                            _%L7441%_
                                                            _%L7442%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda%)
                                                           (cons (foldr (lambda (_%g74717476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _%g74727479%_)
                                  (cons _%g74717476%_ _%g74727479%_))
                                (foldr (lambda (_%g74737482%_ _%g74747485%_)
                                         (cons _%g74737482%_ _%g74747485%_))
                                       _%L7440%_
                                       _%L7441%_)
                                _%L7442%_)
                         _%L7438%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%hd73247432%_
                                                   _%hd73217422%_
                                                   _%opt73197414%_
                                                   _%pre73077374%_)
                                                  (_%g72907331%_
                                                   _%g72917335%_))))
                                          (_%g72907331%_ _%g72917335%_))))
                                  (_%g72907331%_ _%g72917335%_)))))))
              (_%loop73147394%_ _%target73117388%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g72907331%_
                                                     _%g72917335%_)))))
                                          (_%g72907331%_ _%g72917335%_))))
                                  (_%g72907331%_ _%g72917335%_)))))))
              (_%loop73027354%_ _%target72997348%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g72907331%_
                                                     _%g72917335%_)))))
                                          (_%g72907331%_ _%g72917335%_))))
                                  (_%g72907331%_ _%g72917335%_)))))
                      (_%g72897488%_
                       (list _%pre7284%_
                             (map car _%opt7286%_)
                             _%tail7287%_
                             _%body7288%_)))))
                 (_%generate-opt-dispatch5297%_
                  (lambda (_%primary7278%_
                           _%pre7280%_
                           _%opt7281%_
                           _%tail7282%_)
                    (cons (list _%pre7280%_
                                (_%generate-opt-clause5299%_
                                 _%primary7278%_
                                 _%pre7280%_
                                 _%opt7281%_))
                          (_%generate-opt-dispatch*5298%_
                           _%primary7278%_
                           _%pre7280%_
                           _%opt7281%_
                           _%tail7282%_))))
                 (_%generate-opt-dispatch*5298%_
                  (lambda (_%primary6827%_
                           _%pre6829%_
                           _%opt6830%_
                           _%tail6831%_)
                    (let _%recur6833%_ ((_%opt-rest6836%_ _%opt6830%_)
                                        (_%right6838%_ '()))
                      (if (pair? _%opt-rest6836%_)
                          (let* ((_%hd6842%_ (caar _%opt-rest6836%_))
                                 (_%rest6845%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%opt-rest6836%_)))
                                 (_%right*6848%_
                                  (cons _%hd6842%_ _%right6838%_))
                                 (_%g68516868%_
                                  (lambda (_%g68526864%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g68526864%_)))
                                 (_%g68507052%_
                                  (lambda (_%g68526872%_)
                                    (if (gx#stx-pair/null? _%g68526872%_)
                                        (let ((_g20889_
                                               (gx#syntax-split-splice
                                                _%g68526872%_
                                                '0)))
                                          (begin
                                            (let ((_g20890_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g20889_)
                                                         (##vector-length
                                                          _g20889_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g20890_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g20890_)))
                                            (let ((_%target68546875%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g20889_
                                                      0)))
                                                  (_%tl68566878%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g20889_
                                                      1))))
                                              (if (gx#stx-null? _%tl68566878%_)
                                                  (letrec ((_%loop68576881%_
                                                            (lambda (_%hd68556885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%pre-bind68616888%_)
                      (if (gx#stx-pair? _%hd68556885%_)
                          (let ((_%e68586891%_ (gx#syntax-e _%hd68556885%_)))
                            (let ((_%lp-hd68596895%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e68586891%_)))
                                  (_%lp-tl68606898%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e68586891%_))))
                              (_%loop68576881%_
                               _%lp-tl68606898%_
                               (cons _%lp-hd68596895%_ _%pre-bind68616888%_))))
                          (let ((_%pre-bind68626901%_
                                 (reverse _%pre-bind68616888%_)))
                            ((lambda (_%L6905%_)
                               (let* ((_%g69276944%_
                                       (lambda (_%g69286940%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g69286940%_)))
                                      (_%g69267048%_
                                       (lambda (_%g69286948%_)
                                         (if (gx#stx-pair/null? _%g69286948%_)
                                             (let ((_g20891_
                                                    (gx#syntax-split-splice
                                                     _%g69286948%_
                                                     '0)))
                                               (begin
                                                 (let ((_g20892_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g20891_)
                                                              (##vector-length
                                                               _g20891_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g20892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g20892_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target69306951%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g20891_
                                                           0)))
                                                       (_%tl69326954%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g20891_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl69326954%_)
                                                       (letrec ((_%loop69336957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd69316961%_ _%opt-bind69376964%_)
                           (if (gx#stx-pair? _%hd69316961%_)
                               (let ((_%e69346967%_
                                      (gx#syntax-e _%hd69316961%_)))
                                 (let ((_%lp-hd69356971%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e69346967%_)))
                                       (_%lp-tl69366974%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e69346967%_))))
                                   (_%loop69336957%_
                                    _%lp-tl69366974%_
                                    (cons _%lp-hd69356971%_
                                          _%opt-bind69376964%_))))
                               (let ((_%opt-bind69386977%_
                                      (reverse _%opt-bind69376964%_)))
                                 ((lambda (_%L6981%_)
                                    (let* ((_%g69987006%_
                                            (lambda (_%g69997002%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g69997002%_)))
                                           (_%g69977044%_
                                            (lambda (_%g69997010%_)
                                              ((lambda (_%L7013%_)
                                                 (cons (list (foldr (lambda (_%g70277032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g70287035%_)
                              (cons _%g70277032%_ _%g70287035%_))
                            (foldr (lambda (_%g70297038%_ _%g70307041%_)
                                     (cons _%g70297038%_ _%g70307041%_))
                                   (cons _%L7013%_ '())
                                   _%L6981%_)
                            _%L6905%_)
                     (_%generate-opt-clause5299%_
                      _%primary6827%_
                      (foldr cons (reverse _%right*6848%_) _%pre6829%_)
                      _%rest6845%_))
               (_%recur6833%_ _%rest6845%_ _%right*6848%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g69997010%_))))
                                      (_%g69977044%_ _%hd6842%_)))
                                  _%opt-bind69386977%_))))))
                 (_%loop69336957%_ _%target69306951%_ '()))
               (_%g69276944%_ _%g69286948%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g69276944%_ _%g69286948%_)))))
                                 (_%g69267048%_ (reverse _%right6838%_))))
                             _%pre-bind68626901%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop68576881%_
                                                     _%target68546875%_
                                                     '()))
                                                  (_%g68516868%_
                                                   _%g68526872%_)))))
                                        (_%g68516868%_ _%g68526872%_)))))
                            (_%g68507052%_ _%pre6829%_))
                          (if (gx#stx-null? _%tail6831%_)
                              '()
                              (let* ((_%g70607101%_
                                      (lambda (_%g70617097%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g70617097%_)))
                                     (_%g70597274%_
                                      (lambda (_%g70617105%_)
                                        (if (gx#stx-pair? _%g70617105%_)
                                            (let ((_%e70667108%_
                                                   (gx#syntax-e
                                                    _%g70617105%_)))
                                              (let ((_%hd70677112%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e70667108%_)))
                                                    (_%tl70687115%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e70667108%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd70677112%_)
                                                    (let ((_g20893_
                                                           (gx#syntax-split-splice
                                                            _%hd70677112%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20894_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g20893_)
                             (##vector-length _g20893_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g20894_ 2)))
                      (error "Context expects 2 values" _g20894_)))
                (let ((_%target70697118%_
                       (let () (declare (not safe)) (##vector-ref _g20893_ 0)))
                      (_%tl70717121%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g20893_ 1))))
                  (if (gx#stx-null? _%tl70717121%_)
                      (letrec ((_%loop70727124%_
                                (lambda (_%hd70707128%_ _%pre70767131%_)
                                  (if (gx#stx-pair? _%hd70707128%_)
                                      (let ((_%e70737134%_
                                             (gx#syntax-e _%hd70707128%_)))
                                        (let ((_%lp-hd70747138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e70737134%_)))
                                              (_%lp-tl70757141%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e70737134%_))))
                                          (_%loop70727124%_
                                           _%lp-tl70757141%_
                                           (cons _%lp-hd70747138%_
                                                 _%pre70767131%_))))
                                      (let ((_%pre70777144%_
                                             (reverse _%pre70767131%_)))
                                        (if (gx#stx-pair? _%tl70687115%_)
                                            (let ((_%e70787148%_
                                                   (gx#syntax-e
                                                    _%tl70687115%_)))
                                              (let ((_%hd70797152%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e70787148%_)))
                                                    (_%tl70807155%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e70787148%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd70797152%_)
                                                    (let ((_g20895_
                                                           (gx#syntax-split-splice
                                                            _%hd70797152%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20896_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g20895_)
                             (##vector-length _g20895_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g20896_ 2)))
                      (error "Context expects 2 values" _g20896_)))
                (let ((_%target70817158%_
                       (let () (declare (not safe)) (##vector-ref _g20895_ 0)))
                      (_%tl70837161%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g20895_ 1))))
                  (if (gx#stx-null? _%tl70837161%_)
                      (letrec ((_%loop70847164%_
                                (lambda (_%hd70827168%_ _%opt70887171%_)
                                  (if (gx#stx-pair? _%hd70827168%_)
                                      (let ((_%e70857174%_
                                             (gx#syntax-e _%hd70827168%_)))
                                        (let ((_%lp-hd70867178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e70857174%_)))
                                              (_%lp-tl70877181%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e70857174%_))))
                                          (_%loop70847164%_
                                           _%lp-tl70877181%_
                                           (cons _%lp-hd70867178%_
                                                 _%opt70887171%_))))
                                      (let ((_%opt70897184%_
                                             (reverse _%opt70887171%_)))
                                        (if (gx#stx-pair? _%tl70807155%_)
                                            (let ((_%e70907188%_
                                                   (gx#syntax-e
                                                    _%tl70807155%_)))
                                              (let ((_%hd70917192%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e70907188%_)))
                                                    (_%tl70927195%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e70907188%_))))
                                                (if (gx#stx-pair?
                                                     _%tl70927195%_)
                                                    (let ((_%e70937198%_
                                                           (gx#syntax-e
                                                            _%tl70927195%_)))
                                                      (let ((_%hd70947202%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e70937198%_)))
                    (_%tl70957205%_
                     (let () (declare (not safe)) (##cdr _%e70937198%_))))
                (if (gx#stx-null? _%tl70957205%_)
                    ((lambda (_%L7208%_ _%L7210%_ _%L7211%_ _%L7212%_)
                       (list (list (foldr (lambda (_%g72417246%_ _%g72427249%_)
                                            (cons _%g72417246%_ _%g72427249%_))
                                          (foldr (lambda (_%g72437252%_
                                                          _%g72447255%_)
                                                   (cons _%g72437252%_
                                                         _%g72447255%_))
                                                 _%L7210%_
                                                 _%L7211%_)
                                          _%L7212%_)
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'apply)
                                          (cons _%L7208%_
                                                (foldr (lambda (_%g72577262%_
                                                                _%g72587265%_)
                                                         (cons _%g72577262%_
                                                               _%g72587265%_))
                                                       (foldr (lambda (_%g72597268%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g72607271%_)
                        (cons _%g72597268%_ _%g72607271%_))
                      (cons _%L7210%_ '())
                      _%L7211%_)
               _%L7212%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (gx#stx-source _%stx5286%_)))))
                     _%hd70947202%_
                     _%hd70917192%_
                     _%opt70897184%_
                     _%pre70777144%_)
                    (_%g70607101%_ _%g70617105%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g70607101%_
                                                     _%g70617105%_))))
                                            (_%g70607101%_ _%g70617105%_)))))))
                        (_%loop70847164%_ _%target70817158%_ '()))
                      (_%g70607101%_ _%g70617105%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g70607101%_
                                                     _%g70617105%_))))
                                            (_%g70607101%_ _%g70617105%_)))))))
                        (_%loop70727124%_ _%target70697118%_ '()))
                      (_%g70607101%_ _%g70617105%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g70607101%_
                                                     _%g70617105%_))))
                                            (_%g70607101%_ _%g70617105%_)))))
                                (_%g70597274%_
                                 (list _%pre6829%_
                                       (reverse _%right6838%_)
                                       _%tail6831%_
                                       _%primary6827%_))))))))
                 (_%generate-opt-clause5299%_
                  (lambda (_%primary6525%_ _%pre6527%_ _%opt6528%_)
                    (let _%recur6530%_ ((_%opt-rest6533%_ _%opt6528%_)
                                        (_%right6535%_ '()))
                      (if (pair? _%opt-rest6533%_)
                          (let* ((_%hd6537%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%opt-rest6533%_)))
                                 (_%rest6540%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%opt-rest6533%_)))
                                 (_%g65436551%_
                                  (lambda (_%g65446547%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g65446547%_)))
                                 (_%g65426640%_
                                  (lambda (_%g65446555%_)
                                    ((lambda (_%L6558%_)
                                       (let* ((_%g65746582%_
                                               (lambda (_%g65756578%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g65756578%_)))
                                              (_%g65736636%_
                                               (lambda (_%g65756586%_)
                                                 ((lambda (_%L6589%_)
                                                    (let* ((_%g66026610%_
                                                            (lambda (_%g66036606%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g66036606%_)))
                                                           (_%g66016632%_
                                                            (lambda (_%g66036614%_)
                                                              ((lambda (_%L6617%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons (cons (cons (cons _%L6558%_ '())
                                                 (cons _%L6589%_ '()))
                                           '())
                                     (cons _%L6617%_ '()))))
                       _%g66036614%_))))
              (_%g66016632%_
               (_%recur6530%_ _%rest6540%_ (cons _%L6558%_ _%right6535%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g65756586%_))))
                                         (_%g65736636%_ (cdr _%hd6537%_))))
                                     _%g65446555%_))))
                            (_%g65426640%_ (car _%hd6537%_)))
                          (let* ((_%g66446681%_
                                  (lambda (_%g66456677%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g66456677%_)))
                                 (_%g66436823%_
                                  (lambda (_%g66456685%_)
                                    (if (gx#stx-pair? _%g66456685%_)
                                        (let ((_%e66496688%_
                                               (gx#syntax-e _%g66456685%_)))
                                          (let ((_%hd66506692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e66496688%_)))
                                                (_%tl66516695%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e66496688%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd66506692%_)
                                                (let ((_g20897_
                                                       (gx#syntax-split-splice
                                                        _%hd66506692%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20898_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20897_)
                         (##vector-length _g20897_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20898_ 2)))
                  (error "Context expects 2 values" _g20898_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target66526698%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20897_
                                                              0)))
                                                          (_%tl66546701%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20897_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl66546701%_)
                                                          (letrec ((_%loop66556704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd66536708%_ _%pre66596711%_)
                              (if (gx#stx-pair? _%hd66536708%_)
                                  (let ((_%e66566714%_
                                         (gx#syntax-e _%hd66536708%_)))
                                    (let ((_%lp-hd66576718%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e66566714%_)))
                                          (_%lp-tl66586721%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e66566714%_))))
                                      (_%loop66556704%_
                                       _%lp-tl66586721%_
                                       (cons _%lp-hd66576718%_
                                             _%pre66596711%_))))
                                  (let ((_%pre66606724%_
                                         (reverse _%pre66596711%_)))
                                    (if (gx#stx-pair? _%tl66516695%_)
                                        (let ((_%e66616728%_
                                               (gx#syntax-e _%tl66516695%_)))
                                          (let ((_%hd66626732%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e66616728%_)))
                                                (_%tl66636735%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e66616728%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd66626732%_)
                                                (let ((_g20899_
                                                       (gx#syntax-split-splice
                                                        _%hd66626732%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20900_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20899_)
                         (##vector-length _g20899_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20900_ 2)))
                  (error "Context expects 2 values" _g20900_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target66646738%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20899_
                                                              0)))
                                                          (_%tl66666741%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20899_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl66666741%_)
                                                          (letrec ((_%loop66676744%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd66656748%_ _%opt66716751%_)
                              (if (gx#stx-pair? _%hd66656748%_)
                                  (let ((_%e66686754%_
                                         (gx#syntax-e _%hd66656748%_)))
                                    (let ((_%lp-hd66696758%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e66686754%_)))
                                          (_%lp-tl66706761%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e66686754%_))))
                                      (_%loop66676744%_
                                       _%lp-tl66706761%_
                                       (cons _%lp-hd66696758%_
                                             _%opt66716751%_))))
                                  (let ((_%opt66726764%_
                                         (reverse _%opt66716751%_)))
                                    (if (gx#stx-pair? _%tl66636735%_)
                                        (let ((_%e66736768%_
                                               (gx#syntax-e _%tl66636735%_)))
                                          (let ((_%hd66746772%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e66736768%_)))
                                                (_%tl66756775%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e66736768%_))))
                                            (if (gx#stx-null? _%tl66756775%_)
                                                ((lambda (_%L6778%_
                                                          _%L6780%_
                                                          _%L6781%_)
                                                   (gx#stx-wrap-source
                                                    (cons _%L6778%_
                                                          (foldr (lambda (_%g68066811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g68076814%_)
                           (cons _%g68066811%_ _%g68076814%_))
                         (foldr (lambda (_%g68086817%_ _%g68096820%_)
                                  (cons _%g68086817%_ _%g68096820%_))
                                '()
                                _%L6780%_)
                         _%L6781%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _%stx5286%_)))
                                                 _%hd66746772%_
                                                 _%opt66726764%_
                                                 _%pre66606724%_)
                                                (_%g66446681%_
                                                 _%g66456685%_))))
                                        (_%g66446681%_ _%g66456685%_)))))))
                    (_%loop66676744%_ _%target66646738%_ '()))
                  (_%g66446681%_ _%g66456685%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g66446681%_
                                                 _%g66456685%_))))
                                        (_%g66446681%_ _%g66456685%_)))))))
                    (_%loop66556704%_ _%target66526698%_ '()))
                  (_%g66446681%_ _%g66456685%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g66446681%_
                                                 _%g66456685%_))))
                                        (_%g66446681%_ _%g66456685%_)))))
                            (_%g66436823%_
                             (list _%pre6527%_
                                   (reverse _%right6535%_)
                                   _%primary6525%_)))))))
                 (_%generate-kw-primary5300%_
                  (lambda (_%key5901%_
                           _%kwargs5903%_
                           _%args5904%_
                           _%body5905%_)
                    (letrec ((_%make-body5907%_
                              (lambda (_%kwargs6394%_ _%kwvals6396%_)
                                (if (pair? _%kwargs6394%_)
                                    (let* ((_%kwarg6398%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%kwargs6394%_)))
                                           (_%var6401%_ (cadr _%kwarg6398%_))
                                           (_%default6404%_
                                            (caddr _%kwarg6398%_))
                                           (_%kwval6407%_ (car _%kwvals6396%_))
                                           (_%rest-kwargs6410%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%kwargs6394%_)))
                                           (_%rest-kwvals6413%_
                                            (cdr _%kwvals6396%_))
                                           (_%g64186441%_
                                            (lambda (_%g64196437%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g64196437%_)))
                                           (_%g64176521%_
                                            (lambda (_%g64196445%_)
                                              (if (gx#stx-pair? _%g64196445%_)
                                                  (let ((_%e64246448%_
                                                         (gx#syntax-e
                                                          _%g64196445%_)))
                                                    (let ((_%hd64256452%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e64246448%_)))
                                                          (_%tl64266455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e64246448%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl64266455%_)
                                                          (let ((_%e64276458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl64266455%_)))
                    (let ((_%hd64286462%_
                           (let () (declare (not safe)) (##car _%e64276458%_)))
                          (_%tl64296465%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e64276458%_))))
                      (if (gx#stx-pair? _%tl64296465%_)
                          (let ((_%e64306468%_ (gx#syntax-e _%tl64296465%_)))
                            (let ((_%hd64316472%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e64306468%_)))
                                  (_%tl64326475%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e64306468%_))))
                              (if (gx#stx-pair? _%tl64326475%_)
                                  (let ((_%e64336478%_
                                         (gx#syntax-e _%tl64326475%_)))
                                    (let ((_%hd64346482%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e64336478%_)))
                                          (_%tl64356485%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e64336478%_))))
                                      (if (gx#stx-null? _%tl64356485%_)
                                          ((lambda (_%L6488%_
                                                    _%L6490%_
                                                    _%L6491%_
                                                    _%L6492%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'let-values)
                                                   (cons (cons (cons (cons _%L6492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'eq?)
                                                     (cons _%L6491%_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'absent-value)
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L6490%_
                                                     (cons _%L6491%_ '()))))
                                   '()))
                       '())
                 (cons _%L6488%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd64346482%_
                                           _%hd64316472%_
                                           _%hd64286462%_
                                           _%hd64256452%_)
                                          (_%g64186441%_ _%g64196445%_))))
                                  (_%g64186441%_ _%g64196445%_))))
                          (_%g64186441%_ _%g64196445%_))))
                  (_%g64186441%_ _%g64196445%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g64186441%_
                                                   _%g64196445%_)))))
                                      (_%g64176521%_
                                       (list _%var6401%_
                                             _%kwval6407%_
                                             _%default6404%_
                                             (_%make-body5907%_
                                              _%rest-kwargs6410%_
                                              _%rest-kwvals6413%_))))
                                    (cons 'begin _%body5905%_))))
                             (_%make-main5909%_
                              (lambda ()
                                (let* ((_%g62026210%_
                                        (lambda (_%g62036206%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g62036206%_)))
                                       (_%g62016386%_
                                        (lambda (_%g62036214%_)
                                          ((lambda (_%L6217%_)
                                             (let* ((_%g62296246%_
                                                     (lambda (_%g62306242%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g62306242%_)))
                                                    (_%g62286382%_
                                                     (lambda (_%g62306250%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g62306250%_)
                                                           (let ((_g20901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g62306250%_ '0)))
                     (begin
                       (let ((_g20902_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g20901_)
                                    (##vector-length _g20901_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g20902_ 2)))
                             (error "Context expects 2 values" _g20902_)))
                       (let ((_%target62326253%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g20901_ 0)))
                             (_%tl62346256%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g20901_ 1))))
                         (if (gx#stx-null? _%tl62346256%_)
                             (letrec ((_%loop62356259%_
                                       (lambda (_%hd62336263%_
                                                _%kwval62396266%_)
                                         (if (gx#stx-pair? _%hd62336263%_)
                                             (let ((_%e62366269%_
                                                    (gx#syntax-e
                                                     _%hd62336263%_)))
                                               (let ((_%lp-hd62376273%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e62366269%_)))
                                                     (_%lp-tl62386276%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e62366269%_))))
                                                 (_%loop62356259%_
                                                  _%lp-tl62386276%_
                                                  (cons _%lp-hd62376273%_
                                                        _%kwval62396266%_))))
                                             (let ((_%kwval62406279%_
                                                    (reverse _%kwval62396266%_)))
                                               ((lambda (_%L6283%_)
                                                  (let* ((_%g63006308%_
                                                          (lambda (_%g63016304%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g63016304%_)))
                                                         (_%g62996378%_
                                                          (lambda (_%g63016312%_)
                                                            ((lambda (_%L6315%_)
                                                               (let* ((_%g63286336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g63296332%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g63296332%_)))
                              (_%g63276366%_
                               (lambda (_%g63296340%_)
                                 ((lambda (_%L6343%_)
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (cons _%L6217%_
                                                       (foldr (lambda (_%g63576360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g63586363%_)
                        (cons _%g63576360%_ _%g63586363%_))
                      _%L6315%_
                      _%L6283%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L6343%_ '())))
                                     (gx#stx-source _%stx5286%_)))
                                  _%g63296340%_))))
                         (_%g63276366%_
                          (_%make-body5907%_
                           _%kwargs5903%_
                           (foldr (lambda (_%g63696372%_ _%g63706375%_)
                                    (cons _%g63696372%_ _%g63706375%_))
                                  '()
                                  _%L6283%_)))))
                     _%g63016312%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g62996378%_
                                                     _%args5904%_)))
                                                _%kwval62406279%_))))))
                               (_%loop62356259%_ _%target62326253%_ '()))
                             (_%g62296246%_ _%g62306250%_)))))
                   (_%g62296246%_ _%g62306250%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g62286382%_
                                                (gx#gentemps
                                                 (map cadr _%kwargs5903%_)))))
                                           _%g62036214%_))))
                                  (_%g62016386%_
                                   (let ((_%$e6390%_ _%key5901%_))
                                     (if _%$e6390%_
                                         _%$e6390%_
                                         (gx#syntax-local-introduce
                                          '@@keywords)))))))
                             (_%make-dispatch5910%_
                              (lambda (_%main6010%_)
                                (let* ((_%g60136021%_
                                        (lambda (_%g60146017%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g60146017%_)))
                                       (_%g60126192%_
                                        (lambda (_%g60146025%_)
                                          ((lambda (_%L6028%_)
                                             (let* ((_%g60406057%_
                                                     (lambda (_%g60416053%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g60416053%_)))
                                                    (_%g60396153%_
                                                     (lambda (_%g60416061%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g60416061%_)
                                                           (let ((_g20903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g60416061%_ '0)))
                     (begin
                       (let ((_g20904_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g20903_)
                                    (##vector-length _g20903_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g20904_ 2)))
                             (error "Context expects 2 values" _g20904_)))
                       (let ((_%target60436064%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g20903_ 0)))
                             (_%tl60456067%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g20903_ 1))))
                         (if (gx#stx-null? _%tl60456067%_)
                             (letrec ((_%loop60466070%_
                                       (lambda (_%hd60446074%_
                                                _%get-kw60506077%_)
                                         (if (gx#stx-pair? _%hd60446074%_)
                                             (let ((_%e60476080%_
                                                    (gx#syntax-e
                                                     _%hd60446074%_)))
                                               (let ((_%lp-hd60486084%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e60476080%_)))
                                                     (_%lp-tl60496087%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e60476080%_))))
                                                 (_%loop60466070%_
                                                  _%lp-tl60496087%_
                                                  (cons _%lp-hd60486084%_
                                                        _%get-kw60506077%_))))
                                             (let ((_%get-kw60516090%_
                                                    (reverse _%get-kw60506077%_)))
                                               ((lambda (_%L6094%_)
                                                  (let* ((_%g61116119%_
                                                          (lambda (_%g61126115%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g61126115%_)))
                                                         (_%g61106149%_
                                                          (lambda (_%g61126123%_)
                                                            ((lambda (_%L6126%_)
                                                               (gx#stx-wrap-source
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'lambda)
                              (cons (cons _%L6028%_
                                          (gx#datum->syntax '#f 'args))
                                    (cons (cons (gx#datum->syntax '#f 'apply)
                                                (cons _%L6126%_
                                                      (cons _%L6028%_
                                                            (foldr (lambda (_%g61406143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g61416146%_)
                             (cons _%g61406143%_ _%g61416146%_))
                           (cons (gx#datum->syntax '#f 'args) '())
                           _%L6094%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (gx#stx-source _%stx5286%_)))
                     _%g61126123%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g61106149%_
                                                     _%main6010%_)))
                                                _%get-kw60516090%_))))))
                               (_%loop60466070%_ _%target60436064%_ '()))
                             (_%g60406057%_ _%g60416061%_)))))
                   (_%g60406057%_ _%g60416061%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g60396153%_
                                                (map (lambda (_%kwarg6157%_)
                                                       (let* ((_%g61606168%_
                                                               (lambda (_%g61616164%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g61616164%_)))
                      (_%g61596188%_
                       (lambda (_%g61616172%_)
                         ((lambda (_%L6175%_)
                            (cons (gx#datum->syntax '#f 'symbolic-table-ref)
                                  (cons _%L6028%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%L6175%_ '()))
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'absent-value)
                                                    '())))))
                          _%g61616172%_))))
                 (_%g61596188%_ (car _%kwarg6157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%kwargs5903%_))))
                                           _%g60146025%_))))
                                  (_%g60126192%_
                                   (let ((_%$e6196%_ _%key5901%_))
                                     (if _%$e6196%_
                                         _%$e6196%_
                                         (gx#syntax-local-introduce
                                          '@@keywords))))))))
                      (let* ((_%g59125920%_
                              (lambda (_%g59135916%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g59135916%_)))
                             (_%g59116006%_
                              (lambda (_%g59135924%_)
                                ((lambda (_%L5927%_)
                                   (let* ((_%g59405948%_
                                           (lambda (_%g59415944%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g59415944%_)))
                                          (_%g59396002%_
                                           (lambda (_%g59415952%_)
                                             ((lambda (_%L5955%_)
                                                (let* ((_%g59685976%_
                                                        (lambda (_%g59695972%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g59695972%_)))
                                                       (_%g59675998%_
                                                        (lambda (_%g59695980%_)
                                                          ((lambda (_%L5983%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons (cons (cons (cons _%L5927%_ '())
                                             (cons _%L5983%_ '()))
                                       '())
                                 (cons _%L5955%_ '()))))
                   _%g59695980%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g59675998%_
                                                   (_%make-main5909%_))))
                                              _%g59415952%_))))
                                     (_%g59396002%_
                                      (_%make-dispatch5910%_ _%L5927%_))))
                                 _%g59135924%_))))
                        (_%g59116006%_ (gx#genident 'kw-lambda-main))))))
                 (_%generate-kw-dispatch5301%_
                  (lambda (_%primary5814%_ _%kwargs5816%_ _%strict?5817%_)
                    (let* ((_%g58195838%_
                            (lambda (_%g58205834%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g58205834%_)))
                           (_%g58185897%_
                            (lambda (_%g58205842%_)
                              (if (gx#stx-pair? _%g58205842%_)
                                  (let ((_%e58245845%_
                                         (gx#syntax-e _%g58205842%_)))
                                    (let ((_%hd58255849%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e58245845%_)))
                                          (_%tl58265852%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e58245845%_))))
                                      (if (gx#stx-pair? _%tl58265852%_)
                                          (let ((_%e58275855%_
                                                 (gx#syntax-e _%tl58265852%_)))
                                            (let ((_%hd58285859%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e58275855%_)))
                                                  (_%tl58295862%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e58275855%_))))
                                              (if (gx#stx-pair? _%tl58295862%_)
                                                  (let ((_%e58305865%_
                                                         (gx#syntax-e
                                                          _%tl58295862%_)))
                                                    (let ((_%hd58315869%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e58305865%_)))
                                                          (_%tl58325872%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e58305865%_))))
                                                      (if (gx#stx-null?
                                                           _%tl58325872%_)
                                                          ((lambda (_%L5875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L5877%_
                            _%L5878%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%L5875%_
                                 (cons (cons (gx#datum->syntax '#f 'apply)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'keyword-dispatch)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%L5878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L5877%_ (cons _%L5875%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _%hd58315869%_
                   _%hd58285859%_
                   _%hd58255849%_)
                  (_%g58195838%_ _%g58205842%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g58195838%_
                                                   _%g58205842%_))))
                                          (_%g58195838%_ _%g58205842%_))))
                                  (_%g58195838%_ _%g58205842%_)))))
                      (_%g58185897%_
                       (list (if _%strict?5817%_
                                 (_%generate-kw-table5302%_
                                  (map car _%kwargs5816%_))
                                 '#f)
                             _%primary5814%_
                             (gx#genident 'args))))))
                 (_%generate-kw-table5302%_
                  (lambda (_%kws5788%_)
                    (let _%rehash5791%_ ((_%pht5794%_
                                          (let ((__tmp20909
                                                 (length _%kws5788%_)))
                                            (declare (not safe))
                                            (##make-vector __tmp20909 '#f))))
                      (let _%lp5797%_ ((_%rest5800%_ _%kws5788%_))
                        (if (pair? _%rest5800%_)
                            (let* ((_%key5803%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest5800%_)))
                                   (_%rest5806%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest5800%_)))
                                   (_%pos5809%_
                                    (let ((__tmp20906
                                           (keyword-hash _%key5803%_))
                                          (__tmp20905
                                           (vector-length _%pht5794%_)))
                                      (declare (not safe))
                                      (##fxmodulo __tmp20906 __tmp20905))))
                              (if (vector-ref _%pht5794%_ _%pos5809%_)
                                  (if (let ((__tmp20907
                                             (vector-length _%pht5794%_)))
                                        (declare (not safe))
                                        (##fx< __tmp20907 '8192))
                                      (_%rehash5791%_
                                       (make-vector
                                        (quotient
                                         (let ((__tmp20908
                                                (vector-length _%pht5794%_)))
                                           (declare (not safe))
                                           (##fx* '3 __tmp20908))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _%kws5788%_))
                                  (begin
                                    (vector-set!
                                     _%pht5794%_
                                     _%pos5809%_
                                     _%key5803%_)
                                    (_%lp5797%_ _%rest5806%_))))
                            _%pht5794%_))))))
          (let* ((_%__stx1941219413%_ _%stx5286%_)
                 (_%g53065337%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1941219413%_))))
            (let ((_%__kont1941519416%_
                   (lambda (_%L5769%_ _%L5771%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%L5771%_ _%L5769%_))))
                  (_%__kont1941719418%_
                   (lambda (_%L5541%_ _%L5543%_)
                     (let ((_g20910_ (_%opt-lambda-split5292%_ _%L5543%_)))
                       (begin
                         (let ((_g20911_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g20910_)
                                      (##vector-length _g20910_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g20911_ 3)))
                               (error "Context expects 3 values" _g20911_)))
                         (let ((_%pre5556%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g20910_ 0)))
                               (_%opt5558%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g20910_ 1)))
                               (_%tail5559%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g20910_ 2))))
                           (let* ((_%g55615569%_
                                   (lambda (_%g55625565%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g55625565%_)))
                                  (_%g55605738%_
                                   (lambda (_%g55625573%_)
                                     ((lambda (_%L5576%_)
                                        (let* ((_%g55895597%_
                                                (lambda (_%g55905593%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g55905593%_)))
                                               (_%g55885734%_
                                                (lambda (_%g55905601%_)
                                                  ((lambda (_%L5604%_)
                                                     (let* ((_%g56175634%_
                                                             (lambda (_%g56185630%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g56185630%_)))
                                                            (_%g56165730%_
                                                             (lambda (_%g56185638%_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g56185638%_)
                           (let ((_g20912_
                                  (gx#syntax-split-splice _%g56185638%_ '0)))
                             (begin
                               (let ((_g20913_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g20912_)
                                            (##vector-length _g20912_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g20913_ 2)))
                                     (error "Context expects 2 values"
                                            _g20913_)))
                               (let ((_%target56205641%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g20912_ 0)))
                                     (_%tl56225644%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g20912_ 1))))
                                 (if (gx#stx-null? _%tl56225644%_)
                                     (letrec ((_%loop56235647%_
                                               (lambda (_%hd56215651%_
                                                        _%clause56275654%_)
                                                 (if (gx#stx-pair?
                                                      _%hd56215651%_)
                                                     (let ((_%e56245657%_
                                                            (gx#syntax-e
                                                             _%hd56215651%_)))
                                                       (let ((_%lp-hd56255661%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e56245657%_)))
                     (_%lp-tl56265664%_
                      (let () (declare (not safe)) (##cdr _%e56245657%_))))
                 (_%loop56235647%_
                  _%lp-tl56265664%_
                  (cons _%lp-hd56255661%_ _%clause56275654%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause56285667%_
                                                            (reverse _%clause56275654%_)))
                                                       ((lambda (_%L5671%_)
                                                          (let* ((_%g56885696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g56895692%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g56895692%_)))
                         (_%g56875718%_
                          (lambda (_%g56895700%_)
                            ((lambda (_%L5703%_)
                               (cons (gx#datum->syntax '#f 'let-values)
                                     (cons (cons (cons (cons _%L5576%_ '())
                                                       (cons _%L5604%_ '()))
                                                 '())
                                           (cons _%L5703%_ '()))))
                             _%g56895700%_))))
                    (_%g56875718%_
                     (gx#stx-wrap-source
                      (cons (gx#datum->syntax '#f 'case-lambda)
                            (foldr (lambda (_%g57215724%_ _%g57225727%_)
                                     (cons _%g57215724%_ _%g57225727%_))
                                   '()
                                   _%L5671%_))
                      (gx#stx-source _%stx5286%_)))))
                _%clause56285667%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop56235647%_
                                        _%target56205641%_
                                        '()))
                                     (_%g56175634%_ _%g56185638%_)))))
                           (_%g56175634%_ _%g56185638%_)))))
               (_%g56165730%_
                (_%generate-opt-dispatch5297%_
                 _%L5576%_
                 _%pre5556%_
                 _%opt5558%_
                 _%tail5559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g55905601%_))))
                                          (_%g55885734%_
                                           (gx#stx-wrap-source
                                            (_%generate-opt-primary5296%_
                                             _%pre5556%_
                                             _%opt5558%_
                                             _%tail5559%_
                                             _%L5541%_)
                                            (gx#stx-source _%stx5286%_)))))
                                      _%g55625573%_))))
                             (_%g55605738%_ (gx#genident 'opt-lambda))))))))
                  (_%__kont1941919420%_
                   (lambda (_%L5364%_ _%L5366%_)
                     (let* ((_%g53825389%_
                             (lambda (_%g53835385%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g53835385%_)))
                            (_%g53815510%_
                             (lambda (_%g53835393%_)
                               ((lambda ()
                                  (let ((_g20914_
                                         (_%kw-lambda-split5294%_ _%L5366%_)))
                                    (begin
                                      (let ((_g20915_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g20914_)
                                                   (##vector-length _g20914_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g20915_ 3)))
                                            (error "Context expects 3 values"
                                                   _g20915_)))
                                      (let ((_%key5402%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g20914_ 0)))
                                            (_%kwargs5404%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g20914_ 1)))
                                            (_%args5405%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g20914_ 2))))
                                        (let* ((_%g54075415%_
                                                (lambda (_%g54085411%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g54085411%_)))
                                               (_%g54065506%_
                                                (lambda (_%g54085419%_)
                                                  ((lambda (_%L5422%_)
                                                     (let* ((_%g54405448%_
                                                             (lambda (_%g54415444%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g54415444%_)))
                                                            (_%g54395502%_
                                                             (lambda (_%g54415452%_)
                                                               ((lambda (_%L5455%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g54685476%_
                                  (lambda (_%g54695472%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g54695472%_)))
                                 (_%g54675498%_
                                  (lambda (_%g54695480%_)
                                    ((lambda (_%L5483%_)
                                       (cons (gx#datum->syntax '#f 'let-values)
                                             (cons (cons (cons (cons _%L5422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _%L5455%_ '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%L5483%_ '()))))
                                     _%g54695480%_))))
                            (_%g54675498%_
                             (gx#stx-wrap-source
                              (_%generate-kw-dispatch5301%_
                               _%L5422%_
                               _%kwargs5404%_
                               (not _%key5402%_))
                              (gx#stx-source _%stx5286%_)))))
                        _%g54415452%_))))
               (_%g54395502%_
                (gx#stx-wrap-source
                 (_%generate-kw-primary5300%_
                  _%key5402%_
                  _%kwargs5404%_
                  _%args5405%_
                  _%L5364%_)
                 (gx#stx-source _%stx5286%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g54085419%_))))
                                          (_%g54065506%_
                                           (gx#genident 'kw-lambda)))))))))))
                       (_%g53815510%_
                        (_%check-duplicate-bindings5295%_ _%L5366%_))))))
              (let* ((_%__match1945719458%_
                      (lambda (_%e53265344%_
                               _%hd53275348%_
                               _%tl53285351%_
                               _%e53295354%_
                               _%hd53305358%_
                               _%tl53315361%_)
                        (let ((_%L5364%_ _%tl53315361%_)
                              (_%L5366%_ _%hd53305358%_))
                          (if (_%kw-lambda?5293%_ _%L5366%_)
                              (_%__kont1941919420%_ _%L5364%_ _%L5366%_)
                              (let () (declare (not safe)) (_%g53065337%_))))))
                     (_%__match1944519446%_
                      (lambda (_%e53185521%_
                               _%hd53195525%_
                               _%tl53205528%_
                               _%e53215531%_
                               _%hd53225535%_
                               _%tl53235538%_)
                        (let ((_%L5541%_ _%tl53235538%_)
                              (_%L5543%_ _%hd53225535%_))
                          (if (_%opt-lambda?5291%_ _%L5543%_)
                              (_%__kont1941719418%_ _%L5541%_ _%L5543%_)
                              (_%__match1945719458%_
                               _%e53185521%_
                               _%hd53195525%_
                               _%tl53205528%_
                               _%e53215531%_
                               _%hd53225535%_
                               _%tl53235538%_)))))
                     (_%__match1943319434%_
                      (lambda (_%e53105749%_
                               _%hd53115753%_
                               _%tl53125756%_
                               _%e53135759%_
                               _%hd53145763%_
                               _%tl53155766%_)
                        (let ((_%L5769%_ _%tl53155766%_)
                              (_%L5771%_ _%hd53145763%_))
                          (if (_%simple-lambda?5289%_ _%L5771%_)
                              (_%__kont1941519416%_ _%L5769%_ _%L5771%_)
                              (_%__match1944519446%_
                               _%e53105749%_
                               _%hd53115753%_
                               _%tl53125756%_
                               _%e53135759%_
                               _%hd53145763%_
                               _%tl53155766%_))))))
                (if (gx#stx-pair? _%__stx1941219413%_)
                    (let ((_%e53105749%_ (gx#syntax-e _%__stx1941219413%_)))
                      (let ((_%tl53125756%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e53105749%_)))
                            (_%hd53115753%_
                             (let ()
                               (declare (not safe))
                               (##car _%e53105749%_))))
                        (if (gx#stx-pair? _%tl53125756%_)
                            (let ((_%e53135759%_ (gx#syntax-e _%tl53125756%_)))
                              (let ((_%tl53155766%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e53135759%_)))
                                    (_%hd53145763%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e53135759%_))))
                                (_%__match1943319434%_
                                 _%e53105749%_
                                 _%hd53115753%_
                                 _%tl53125756%_
                                 _%e53135759%_
                                 _%hd53145763%_
                                 _%tl53155766%_)))
                            (let () (declare (not safe)) (_%g53065337%_)))))
                    (let () (declare (not safe)) (_%g53065337%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def|
      (lambda (_%$stx8711%_)
        (let* ((_%__stx1946019461%_ _%$stx8711%_)
               (_%g87178781%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1946019461%_))))
          (let ((_%__kont1946319464%_
                 (lambda (_%L9011%_ _%L9013%_ _%L9014%_ _%L9015%_)
                   (cons (gx#datum->syntax '#f 'def)
                         (cons (cons _%L9015%_ _%L9014%_)
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L9013%_
                                                 (foldr (lambda (_%g90379040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g90389043%_)
                  (cons _%g90379040%_ _%g90389043%_))
                '()
                _%L9011%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1946719468%_
                 (lambda (_%L8903%_ _%L8905%_ _%L8906%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L8906%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L8905%_
                                                 (foldr (lambda (_%g89258928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g89268931%_)
                  (cons _%g89258928%_ _%g89268931%_))
                '()
                _%L8903%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1947119472%_
                 (lambda (_%L8818%_ _%L8820%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L8820%_ '()) (cons _%L8818%_ '()))))))
            (let* ((_%__match1955119552%_
                    (lambda (_%e87678788%_
                             _%hd87688792%_
                             _%tl87698795%_
                             _%e87708798%_
                             _%hd87718802%_
                             _%tl87728805%_
                             _%e87738808%_
                             _%hd87748812%_
                             _%tl87758815%_)
                      (let ((_%L8818%_ _%hd87748812%_)
                            (_%L8820%_ _%hd87718802%_))
                        (if (gx#identifier? _%L8820%_)
                            (_%__kont1947119472%_ _%L8818%_ _%L8820%_)
                            (let () (declare (not safe)) (_%g87178781%_))))))
                   (_%__match1954319544%_
                    (lambda (_%e87678788%_
                             _%hd87688792%_
                             _%tl87698795%_
                             _%e87708798%_
                             _%hd87718802%_
                             _%tl87728805%_)
                      (if (gx#stx-pair? _%tl87728805%_)
                          (let ((_%e87738808%_ (gx#syntax-e _%tl87728805%_)))
                            (let ((_%tl87758815%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e87738808%_)))
                                  (_%hd87748812%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e87738808%_))))
                              (if (gx#stx-null? _%tl87758815%_)
                                  (_%__match1955119552%_
                                   _%e87678788%_
                                   _%hd87688792%_
                                   _%tl87698795%_
                                   _%e87708798%_
                                   _%hd87718802%_
                                   _%tl87728805%_
                                   _%e87738808%_
                                   _%hd87748812%_
                                   _%tl87758815%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g87178781%_)))))
                          (let () (declare (not safe)) (_%g87178781%_)))))
                   (_%__match1953119532%_
                    (lambda (_%e87478843%_
                             _%hd87488847%_
                             _%tl87498850%_
                             _%e87508853%_
                             _%hd87518857%_
                             _%tl87528860%_
                             _%e87538863%_
                             _%hd87548867%_
                             _%tl87558870%_
                             _%__splice1946919470%_
                             _%target87568873%_
                             _%tl87588876%_)
                      (letrec ((_%loop87598879%_
                                (lambda (_%hd87578883%_ _%body87638886%_)
                                  (if (gx#stx-pair? _%hd87578883%_)
                                      (let ((_%e87608889%_
                                             (gx#syntax-e _%hd87578883%_)))
                                        (let ((_%lp-tl87628896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e87608889%_)))
                                              (_%lp-hd87618893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e87608889%_))))
                                          (_%loop87598879%_
                                           _%lp-tl87628896%_
                                           (cons _%lp-hd87618893%_
                                                 _%body87638886%_))))
                                      (let ((_%body87648899%_
                                             (reverse _%body87638886%_)))
                                        (let ((_%L8903%_ _%body87648899%_)
                                              (_%L8905%_ _%tl87558870%_)
                                              (_%L8906%_ _%hd87548867%_))
                                          (if (gx#identifier? _%L8906%_)
                                              (_%__kont1946719468%_
                                               _%L8903%_
                                               _%L8905%_
                                               _%L8906%_)
                                              (_%__match1954319544%_
                                               _%e87478843%_
                                               _%hd87488847%_
                                               _%tl87498850%_
                                               _%e87508853%_
                                               _%hd87518857%_
                                               _%tl87528860%_))))))))
                        (_%loop87598879%_ _%target87568873%_ '()))))
                   (_%__match1950519506%_
                    (lambda (_%e87238941%_
                             _%hd87248945%_
                             _%tl87258948%_
                             _%e87268951%_
                             _%hd87278955%_
                             _%tl87288958%_
                             _%e87298961%_
                             _%hd87308965%_
                             _%tl87318968%_
                             _%e87328971%_
                             _%hd87338975%_
                             _%tl87348978%_
                             _%__splice1946519466%_
                             _%target87358981%_
                             _%tl87378984%_)
                      (letrec ((_%loop87388987%_
                                (lambda (_%hd87368991%_ _%body87428994%_)
                                  (if (gx#stx-pair? _%hd87368991%_)
                                      (let ((_%e87398997%_
                                             (gx#syntax-e _%hd87368991%_)))
                                        (let ((_%lp-tl87419004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e87398997%_)))
                                              (_%lp-hd87409001%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e87398997%_))))
                                          (_%loop87388987%_
                                           _%lp-tl87419004%_
                                           (cons _%lp-hd87409001%_
                                                 _%body87428994%_))))
                                      (let ((_%body87439007%_
                                             (reverse _%body87428994%_)))
                                        (_%__kont1946319464%_
                                         _%body87439007%_
                                         _%tl87318968%_
                                         _%tl87348978%_
                                         _%hd87338975%_))))))
                        (_%loop87388987%_ _%target87358981%_ '())))))
              (if (gx#stx-pair? _%__stx1946019461%_)
                  (let ((_%e87238941%_ (gx#syntax-e _%__stx1946019461%_)))
                    (let ((_%tl87258948%_
                           (let () (declare (not safe)) (##cdr _%e87238941%_)))
                          (_%hd87248945%_
                           (let ()
                             (declare (not safe))
                             (##car _%e87238941%_))))
                      (if (gx#stx-pair? _%tl87258948%_)
                          (let ((_%e87268951%_ (gx#syntax-e _%tl87258948%_)))
                            (let ((_%tl87288958%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e87268951%_)))
                                  (_%hd87278955%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e87268951%_))))
                              (if (gx#stx-pair? _%hd87278955%_)
                                  (let ((_%e87298961%_
                                         (gx#syntax-e _%hd87278955%_)))
                                    (let ((_%tl87318968%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e87298961%_)))
                                          (_%hd87308965%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e87298961%_))))
                                      (if (gx#stx-pair? _%hd87308965%_)
                                          (let ((_%e87328971%_
                                                 (gx#syntax-e _%hd87308965%_)))
                                            (let ((_%tl87348978%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e87328971%_)))
                                                  (_%hd87338975%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e87328971%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl87288958%_)
                                                  (let ((_%__splice1946519466%_
                                                         (gx#syntax-split-splice
                                                          _%tl87288958%_
                                                          '0)))
                                                    (let ((_%tl87378984%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1946519466%_
                                                              '1)))
                                                          (_%target87358981%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1946519466%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl87378984%_)
                                                          (_%__match1950519506%_
                                                           _%e87238941%_
                                                           _%hd87248945%_
                                                           _%tl87258948%_
                                                           _%e87268951%_
                                                           _%hd87278955%_
                                                           _%tl87288958%_
                                                           _%e87298961%_
                                                           _%hd87308965%_
                                                           _%tl87318968%_
                                                           _%e87328971%_
                                                           _%hd87338975%_
                                                           _%tl87348978%_
                                                           _%__splice1946519466%_
                                                           _%target87358981%_
                                                           _%tl87378984%_)
                                                          (if (gx#stx-pair?
                                                               _%tl87288958%_)
                                                              (let ((_%e87738808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl87288958%_)))
                        (let ((_%tl87758815%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e87738808%_)))
                              (_%hd87748812%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e87738808%_))))
                          (if (gx#stx-null? _%tl87758815%_)
                              (_%__match1955119552%_
                               _%e87238941%_
                               _%hd87248945%_
                               _%tl87258948%_
                               _%e87268951%_
                               _%hd87278955%_
                               _%tl87288958%_
                               _%e87738808%_
                               _%hd87748812%_
                               _%tl87758815%_)
                              (let () (declare (not safe)) (_%g87178781%_)))))
                      (let () (declare (not safe)) (_%g87178781%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl87288958%_)
                                                      (let ((_%e87738808%_
                                                             (gx#syntax-e
                                                              _%tl87288958%_)))
                                                        (let ((_%tl87758815%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e87738808%_)))
                      (_%hd87748812%_
                       (let () (declare (not safe)) (##car _%e87738808%_))))
                  (if (gx#stx-null? _%tl87758815%_)
                      (_%__match1955119552%_
                       _%e87238941%_
                       _%hd87248945%_
                       _%tl87258948%_
                       _%e87268951%_
                       _%hd87278955%_
                       _%tl87288958%_
                       _%e87738808%_
                       _%hd87748812%_
                       _%tl87758815%_)
                      (let () (declare (not safe)) (_%g87178781%_)))))
              (let () (declare (not safe)) (_%g87178781%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl87288958%_)
                                              (let ((_%__splice1946919470%_
                                                     (gx#syntax-split-splice
                                                      _%tl87288958%_
                                                      '0)))
                                                (let ((_%tl87588876%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1946919470%_
                                                          '1)))
                                                      (_%target87568873%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1946919470%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl87588876%_)
                                                      (_%__match1953119532%_
                                                       _%e87238941%_
                                                       _%hd87248945%_
                                                       _%tl87258948%_
                                                       _%e87268951%_
                                                       _%hd87278955%_
                                                       _%tl87288958%_
                                                       _%e87298961%_
                                                       _%hd87308965%_
                                                       _%tl87318968%_
                                                       _%__splice1946919470%_
                                                       _%target87568873%_
                                                       _%tl87588876%_)
                                                      (if (gx#stx-pair?
                                                           _%tl87288958%_)
                                                          (let ((_%e87738808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl87288958%_)))
                    (let ((_%tl87758815%_
                           (let () (declare (not safe)) (##cdr _%e87738808%_)))
                          (_%hd87748812%_
                           (let ()
                             (declare (not safe))
                             (##car _%e87738808%_))))
                      (if (gx#stx-null? _%tl87758815%_)
                          (_%__match1955119552%_
                           _%e87238941%_
                           _%hd87248945%_
                           _%tl87258948%_
                           _%e87268951%_
                           _%hd87278955%_
                           _%tl87288958%_
                           _%e87738808%_
                           _%hd87748812%_
                           _%tl87758815%_)
                          (let () (declare (not safe)) (_%g87178781%_)))))
                  (let () (declare (not safe)) (_%g87178781%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _%tl87288958%_)
                                                  (let ((_%e87738808%_
                                                         (gx#syntax-e
                                                          _%tl87288958%_)))
                                                    (let ((_%tl87758815%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e87738808%_)))
                                                          (_%hd87748812%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e87738808%_))))
                                                      (if (gx#stx-null?
                                                           _%tl87758815%_)
                                                          (_%__match1955119552%_
                                                           _%e87238941%_
                                                           _%hd87248945%_
                                                           _%tl87258948%_
                                                           _%e87268951%_
                                                           _%hd87278955%_
                                                           _%tl87288958%_
                                                           _%e87738808%_
                                                           _%hd87748812%_
                                                           _%tl87758815%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g87178781%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g87178781%_)))))))
                                  (if (gx#stx-pair? _%tl87288958%_)
                                      (let ((_%e87738808%_
                                             (gx#syntax-e _%tl87288958%_)))
                                        (let ((_%tl87758815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e87738808%_)))
                                              (_%hd87748812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e87738808%_))))
                                          (if (gx#stx-null? _%tl87758815%_)
                                              (_%__match1955119552%_
                                               _%e87238941%_
                                               _%hd87248945%_
                                               _%tl87258948%_
                                               _%e87268951%_
                                               _%hd87278955%_
                                               _%tl87288958%_
                                               _%e87738808%_
                                               _%hd87748812%_
                                               _%tl87758815%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g87178781%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g87178781%_))))))
                          (let () (declare (not safe)) (_%g87178781%_)))))
                  (let () (declare (not safe)) (_%g87178781%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def*|
      (lambda (_%$stx9052%_)
        (let* ((_%g90569080%_
                (lambda (_%g90579076%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g90579076%_)))
               (_%g90559165%_
                (lambda (_%g90579084%_)
                  (if (gx#stx-pair? _%g90579084%_)
                      (let ((_%e90609087%_ (gx#syntax-e _%g90579084%_)))
                        (let ((_%hd90619091%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e90609087%_)))
                              (_%tl90629094%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e90609087%_))))
                          (if (gx#stx-pair? _%tl90629094%_)
                              (let ((_%e90639097%_
                                     (gx#syntax-e _%tl90629094%_)))
                                (let ((_%hd90649101%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e90639097%_)))
                                      (_%tl90659104%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e90639097%_))))
                                  (if (gx#stx-pair/null? _%tl90659104%_)
                                      (let ((_g20916_
                                             (gx#syntax-split-splice
                                              _%tl90659104%_
                                              '0)))
                                        (begin
                                          (let ((_g20917_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20916_)
                                                       (##vector-length
                                                        _g20916_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20917_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20917_)))
                                          (let ((_%target90669107%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20916_ 0)))
                                                (_%tl90689110%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20916_ 1))))
                                            (if (gx#stx-null? _%tl90689110%_)
                                                (letrec ((_%loop90699113%_
                                                          (lambda (_%hd90679117%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clauses90739120%_)
                    (if (gx#stx-pair? _%hd90679117%_)
                        (let ((_%e90709123%_ (gx#syntax-e _%hd90679117%_)))
                          (let ((_%lp-hd90719127%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e90709123%_)))
                                (_%lp-tl90729130%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e90709123%_))))
                            (_%loop90699113%_
                             _%lp-tl90729130%_
                             (cons _%lp-hd90719127%_ _%clauses90739120%_))))
                        (let ((_%clauses90749133%_
                               (reverse _%clauses90739120%_)))
                          ((lambda (_%L9137%_ _%L9139%_)
                             (if (gx#identifier? _%L9139%_)
                                 (cons (gx#datum->syntax '#f 'define-values)
                                       (cons (cons _%L9139%_ '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'case-lambda)
                                                         (foldr (lambda (_%g91569159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g91579162%_)
                          (cons _%g91569159%_ _%g91579162%_))
                        '()
                        _%L9137%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 (_%g90569080%_ _%g90579084%_)))
                           _%clauses90749133%_
                           _%hd90649101%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop90699113%_
                                                   _%target90669107%_
                                                   '()))
                                                (_%g90569080%_
                                                 _%g90579084%_)))))
                                      (_%g90569080%_ _%g90579084%_))))
                              (_%g90569080%_ _%g90579084%_))))
                      (_%g90569080%_ _%g90579084%_)))))
          (_%g90559165%_ _%$stx9052%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#defvalues|
      (lambda (_%$stx9170%_)
        (let* ((_%g91749192%_
                (lambda (_%g91759188%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g91759188%_)))
               (_%g91739247%_
                (lambda (_%g91759196%_)
                  (if (gx#stx-pair? _%g91759196%_)
                      (let ((_%e91789199%_ (gx#syntax-e _%g91759196%_)))
                        (let ((_%hd91799203%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e91789199%_)))
                              (_%tl91809206%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e91789199%_))))
                          (if (gx#stx-pair? _%tl91809206%_)
                              (let ((_%e91819209%_
                                     (gx#syntax-e _%tl91809206%_)))
                                (let ((_%hd91829213%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e91819209%_)))
                                      (_%tl91839216%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e91819209%_))))
                                  (if (gx#stx-pair? _%tl91839216%_)
                                      (let ((_%e91849219%_
                                             (gx#syntax-e _%tl91839216%_)))
                                        (let ((_%hd91859223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e91849219%_)))
                                              (_%tl91869226%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e91849219%_))))
                                          (if (gx#stx-null? _%tl91869226%_)
                                              ((lambda (_%L9229%_ _%L9231%_)
                                                 (if (gx#identifier-list?
                                                      _%L9231%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons _%L9231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L9229%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g91749192%_
                                                      _%g91759196%_)))
                                               _%hd91859223%_
                                               _%hd91829213%_)
                                              (_%g91749192%_ _%g91759196%_))))
                                      (_%g91749192%_ _%g91759196%_))))
                              (_%g91749192%_ _%g91759196%_))))
                      (_%g91749192%_ _%g91759196%_)))))
          (_%g91739247%_ _%$stx9170%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#case|
      (lambda (_%$stx9251%_)
        (let* ((_%g92559279%_
                (lambda (_%g92569275%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g92569275%_)))
               (_%g92549364%_
                (lambda (_%g92569283%_)
                  (if (gx#stx-pair? _%g92569283%_)
                      (let ((_%e92599286%_ (gx#syntax-e _%g92569283%_)))
                        (let ((_%hd92609290%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e92599286%_)))
                              (_%tl92619293%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e92599286%_))))
                          (if (gx#stx-pair? _%tl92619293%_)
                              (let ((_%e92629296%_
                                     (gx#syntax-e _%tl92619293%_)))
                                (let ((_%hd92639300%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e92629296%_)))
                                      (_%tl92649303%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e92629296%_))))
                                  (if (gx#stx-pair/null? _%tl92649303%_)
                                      (let ((_g20918_
                                             (gx#syntax-split-splice
                                              _%tl92649303%_
                                              '0)))
                                        (begin
                                          (let ((_g20919_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20918_)
                                                       (##vector-length
                                                        _g20918_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20919_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20919_)))
                                          (let ((_%target92659306%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20918_ 0)))
                                                (_%tl92679309%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20918_ 1))))
                                            (if (gx#stx-null? _%tl92679309%_)
                                                (letrec ((_%loop92689312%_
                                                          (lambda (_%hd92669316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause92729319%_)
                    (if (gx#stx-pair? _%hd92669316%_)
                        (let ((_%e92699322%_ (gx#syntax-e _%hd92669316%_)))
                          (let ((_%lp-hd92709326%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e92699322%_)))
                                (_%lp-tl92719329%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e92699322%_))))
                            (_%loop92689312%_
                             _%lp-tl92719329%_
                             (cons _%lp-hd92709326%_ _%clause92729319%_))))
                        (let ((_%clause92739332%_
                               (reverse _%clause92729319%_)))
                          ((lambda (_%L9336%_ _%L9338%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (gx#datum->syntax '#f '$e)
                                               (cons _%L9338%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '~case)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$e)
                                                           (foldr (lambda (_%g93559358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g93569361%_)
                            (cons _%g93559358%_ _%g93569361%_))
                          '()
                          _%L9336%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%clause92739332%_
                           _%hd92639300%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop92689312%_
                                                   _%target92659306%_
                                                   '()))
                                                (_%g92559279%_
                                                 _%g92569283%_)))))
                                      (_%g92559279%_ _%g92569283%_))))
                              (_%g92559279%_ _%g92569283%_))))
                      (_%g92559279%_ _%g92569283%_)))))
          (_%g92549364%_ _%$stx9251%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case|
      (lambda (_%stx9369%_)
        (letrec ((_%parse-clauses9372%_
                  (lambda (_%e11847%_ _%clauses11849%_)
                    (let _%lp11851%_ ((_%rest11854%_ _%clauses11849%_)
                                      (_%datums11856%_ '())
                                      (_%dispatch11857%_ '())
                                      (_%default11858%_ '#f))
                      (let* ((_%__stx1965019651%_ _%rest11854%_)
                             (_%g1186111873%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1965019651%_))))
                        (let ((_%__kont1965319654%_
                               (lambda (_%L11905%_ _%L11907%_)
                                 (let* ((_%__stx1955419555%_ _%L11907%_)
                                        (_%g1192511998%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1955419555%_))))
                                   (let ((_%__kont1955719558%_
                                          (lambda (_%L12363%_)
                                            (if (gx#stx-null? _%L11905%_)
                                                (let* ((_%g1237812386%_
                                                        (lambda (_%g1237912382%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1237912382%_)))
                                                       (_%g1237712405%_
                                                        (lambda (_%g1237912390%_)
                                                          ((lambda (_%L12393%_)
                                                             (_%lp11851%_
                                                              '()
                                                              _%datums11856%_
                                                              _%dispatch11857%_
                                                              (cons _%L12363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L12393%_ '()))))
                   _%g1237912390%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1237712405%_ _%e11847%_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9369%_
                                                 _%L11907%_))))
                                         (_%__kont1955919560%_
                                          (lambda (_%L12303%_)
                                            (if (gx#stx-null? _%L11905%_)
                                                (_%lp11851%_
                                                 '()
                                                 _%datums11856%_
                                                 _%dispatch11857%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1231712320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1231812323%_)
                        (cons _%g1231712320%_ _%g1231812323%_))
                      '()
                      _%L12303%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9369%_
                                                 _%L11907%_))))
                                         (_%__kont1956319564%_
                                          (lambda (_%L12188%_ _%L12190%_)
                                            (if (null? (foldr (lambda (_%g1220812211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1220912214%_)
                        (cons _%g1220812211%_ _%g1220912214%_))
                      '()
                      _%L12190%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp11851%_
                                                 _%L11905%_
                                                 _%datums11856%_
                                                 _%dispatch11857%_
                                                 _%default11858%_)
                                                (let* ((_%g1221712225%_
                                                        (lambda (_%g1221812221%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1221812221%_)))
                                                       (_%g1221612252%_
                                                        (lambda (_%g1221812229%_)
                                                          ((lambda (_%L12232%_)
                                                             (_%lp11851%_
                                                              _%L11905%_
                                                              (cons (map gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (foldr (lambda (_%g1224312246%_
                                                 _%g1224412249%_)
                                          (cons _%g1224312246%_
                                                _%g1224412249%_))
                                        '()
                                        _%L12190%_))
                            _%datums11856%_)
                      (cons (cons _%L12188%_ (cons _%L12232%_ '()))
                            _%dispatch11857%_)
                      _%default11858%_))
                   _%g1221812229%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1221612252%_
                                                   _%e11847%_)))))
                                         (_%__kont1956719568%_
                                          (lambda (_%L12075%_ _%L12077%_)
                                            (if (null? (foldr (lambda (_%g1209612099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1209712102%_)
                        (cons _%g1209612099%_ _%g1209712102%_))
                      '()
                      _%L12077%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp11851%_
                                                 _%L11905%_
                                                 _%datums11856%_
                                                 _%dispatch11857%_
                                                 _%default11858%_)
                                                (_%lp11851%_
                                                 _%L11905%_
                                                 (cons (map gx#stx-e
                                                            (foldr (lambda (_%g1210412107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1210512110%_)
                             (cons _%g1210412107%_ _%g1210512110%_))
                           '()
                           _%L12077%_))
               _%datums11856%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (foldr (lambda (_%g1211212115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1211312118%_)
                              (cons _%g1211212115%_ _%g1211312118%_))
                            '()
                            _%L12075%_))
               _%dispatch11857%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%default11858%_)))))
                                     (let* ((_%__match1964719648%_
                                             (lambda (_%e1197212005%_
                                                      _%hd1197312009%_
                                                      _%tl1197412012%_
                                                      _%__splice1956919570%_
                                                      _%target1197512015%_
                                                      _%tl1197712018%_)
                                               (letrec ((_%loop1197812021%_
                                                         (lambda (_%hd1197612025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1198212028%_)
                   (if (gx#stx-pair? _%hd1197612025%_)
                       (let ((_%e1197912031%_ (gx#syntax-e _%hd1197612025%_)))
                         (let ((_%lp-tl1198112038%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1197912031%_)))
                               (_%lp-hd1198012035%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1197912031%_))))
                           (_%loop1197812021%_
                            _%lp-tl1198112038%_
                            (cons _%lp-hd1198012035%_ _%datum1198212028%_))))
                       (let ((_%datum1198312041%_
                              (reverse _%datum1198212028%_)))
                         (if (gx#stx-pair/null? _%tl1197412012%_)
                             (let ((_%__splice1957119572%_
                                    (gx#syntax-split-splice
                                     _%tl1197412012%_
                                     '0)))
                               (let ((_%tl1198612048%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1957119572%_
                                         '1)))
                                     (_%target1198412045%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1957119572%_
                                         '0))))
                                 (if (gx#stx-null? _%tl1198612048%_)
                                     (letrec ((_%loop1198712051%_
                                               (lambda (_%hd1198512055%_
                                                        _%body1199112058%_)
                                                 (if (gx#stx-pair?
                                                      _%hd1198512055%_)
                                                     (let ((_%e1198812061%_
                                                            (gx#syntax-e
                                                             _%hd1198512055%_)))
                                                       (let ((_%lp-tl1199012068%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e1198812061%_)))
                     (_%lp-hd1198912065%_
                      (let () (declare (not safe)) (##car _%e1198812061%_))))
                 (_%loop1198712051%_
                  _%lp-tl1199012068%_
                  (cons _%lp-hd1198912065%_ _%body1199112058%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%body1199212071%_
                                                            (reverse _%body1199112058%_)))
                                                       (_%__kont1956719568%_
                                                        _%body1199212071%_
                                                        _%datum1198312041%_))))))
                                       (_%loop1198712051%_
                                        _%target1198412045%_
                                        '()))
                                     (let ()
                                       (declare (not safe))
                                       (_%g1192511998%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g1192511998%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1197812021%_
                                                  _%target1197512015%_
                                                  '()))))
                                            (_%__match1963319634%_
                                             (lambda (_%e1195212128%_
                                                      _%hd1195312132%_
                                                      _%tl1195412135%_
                                                      _%__splice1956519566%_
                                                      _%target1195512138%_
                                                      _%tl1195712141%_)
                                               (letrec ((_%loop1195812144%_
                                                         (lambda (_%hd1195612148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1196212151%_)
                   (if (gx#stx-pair? _%hd1195612148%_)
                       (let ((_%e1195912154%_ (gx#syntax-e _%hd1195612148%_)))
                         (let ((_%lp-tl1196112161%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1195912154%_)))
                               (_%lp-hd1196012158%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1195912154%_))))
                           (_%loop1195812144%_
                            _%lp-tl1196112161%_
                            (cons _%lp-hd1196012158%_ _%datum1196212151%_))))
                       (let ((_%datum1196312164%_
                              (reverse _%datum1196212151%_)))
                         (if (gx#stx-pair? _%tl1195412135%_)
                             (let ((_%e1196412168%_
                                    (gx#syntax-e _%tl1195412135%_)))
                               (let ((_%tl1196612175%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1196412168%_)))
                                     (_%hd1196512172%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1196412168%_))))
                                 (if (gx#identifier? _%hd1196512172%_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core/sugar~Sugar-2[1]#_g20920_|
                                          _%hd1196512172%_)
                                         (if (gx#stx-pair? _%tl1196612175%_)
                                             (let ((_%e1196712178%_
                                                    (gx#syntax-e
                                                     _%tl1196612175%_)))
                                               (let ((_%tl1196912185%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1196712178%_)))
                                                     (_%hd1196812182%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1196712178%_))))
                                                 (if (gx#stx-null?
                                                      _%tl1196912185%_)
                                                     (_%__kont1956319564%_
                                                      _%hd1196812182%_
                                                      _%datum1196312164%_)
                                                     (_%__match1964719648%_
                                                      _%e1195212128%_
                                                      _%hd1195312132%_
                                                      _%tl1195412135%_
                                                      _%__splice1956519566%_
                                                      _%target1195512138%_
                                                      _%tl1195712141%_))))
                                             (_%__match1964719648%_
                                              _%e1195212128%_
                                              _%hd1195312132%_
                                              _%tl1195412135%_
                                              _%__splice1956519566%_
                                              _%target1195512138%_
                                              _%tl1195712141%_))
                                         (_%__match1964719648%_
                                          _%e1195212128%_
                                          _%hd1195312132%_
                                          _%tl1195412135%_
                                          _%__splice1956519566%_
                                          _%target1195512138%_
                                          _%tl1195712141%_))
                                     (_%__match1964719648%_
                                      _%e1195212128%_
                                      _%hd1195312132%_
                                      _%tl1195412135%_
                                      _%__splice1956519566%_
                                      _%target1195512138%_
                                      _%tl1195712141%_))))
                             (_%__match1964719648%_
                              _%e1195212128%_
                              _%hd1195312132%_
                              _%tl1195412135%_
                              _%__splice1956519566%_
                              _%target1195512138%_
                              _%tl1195712141%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1195812144%_
                                                  _%target1195512138%_
                                                  '()))))
                                            (_%__match1961919620%_
                                             (lambda (_%e1193812263%_
                                                      _%hd1193912267%_
                                                      _%tl1194012270%_
                                                      _%__splice1956119562%_
                                                      _%target1194112273%_
                                                      _%tl1194312276%_)
                                               (letrec ((_%loop1194412279%_
                                                         (lambda (_%hd1194212283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body1194812286%_)
                   (if (gx#stx-pair? _%hd1194212283%_)
                       (let ((_%e1194512289%_ (gx#syntax-e _%hd1194212283%_)))
                         (let ((_%lp-tl1194712296%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1194512289%_)))
                               (_%lp-hd1194612293%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1194512289%_))))
                           (_%loop1194412279%_
                            _%lp-tl1194712296%_
                            (cons _%lp-hd1194612293%_ _%body1194812286%_))))
                       (let ((_%body1194912299%_ (reverse _%body1194812286%_)))
                         (_%__kont1955919560%_ _%body1194912299%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1194412279%_
                                                  _%target1194112273%_
                                                  '())))))
                                       (if (gx#stx-pair? _%__stx1955419555%_)
                                           (let ((_%e1192812333%_
                                                  (gx#syntax-e
                                                   _%__stx1955419555%_)))
                                             (let ((_%tl1193012340%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e1192812333%_)))
                                                   (_%hd1192912337%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e1192812333%_))))
                                               (if (gx#identifier?
                                                    _%hd1192912337%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/sugar~Sugar-2[1]#_g20921_|
                                                        _%hd1192912337%_)
                                                       (if (gx#stx-pair?
                                                            _%tl1193012340%_)
                                                           (let ((_%e1193112343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl1193012340%_)))
                     (let ((_%tl1193312350%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1193112343%_)))
                           (_%hd1193212347%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1193112343%_))))
                       (if (gx#identifier? _%hd1193212347%_)
                           (if (gx#free-identifier=?
                                |gerbil/core/sugar~Sugar-2[1]#_g20922_|
                                _%hd1193212347%_)
                               (if (gx#stx-pair? _%tl1193312350%_)
                                   (let ((_%e1193412353%_
                                          (gx#syntax-e _%tl1193312350%_)))
                                     (let ((_%tl1193612360%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e1193412353%_)))
                                           (_%hd1193512357%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e1193412353%_))))
                                       (if (gx#stx-null? _%tl1193612360%_)
                                           (_%__kont1955719558%_
                                            _%hd1193512357%_)
                                           (if (gx#stx-pair/null?
                                                _%tl1193012340%_)
                                               (let ((_%__splice1956119562%_
                                                      (gx#syntax-split-splice
                                                       _%tl1193012340%_
                                                       '0)))
                                                 (let ((_%tl1194312276%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1956119562%_
                                                           '1)))
                                                       (_%target1194112273%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1956119562%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1194312276%_)
                                                       (_%__match1961919620%_
                                                        _%e1192812333%_
                                                        _%hd1192912337%_
                                                        _%tl1193012340%_
                                                        _%__splice1956119562%_
                                                        _%target1194112273%_
                                                        _%tl1194312276%_)
                                                       (if (gx#stx-pair/null?
                                                            _%hd1192912337%_)
                                                           (let ((_%__splice1956519566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%hd1192912337%_ '0)))
                     (let ((_%tl1195712141%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1956519566%_ '1)))
                           (_%target1195512138%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1956519566%_ '0))))
                       (if (gx#stx-null? _%tl1195712141%_)
                           (_%__match1963319634%_
                            _%e1192812333%_
                            _%hd1192912337%_
                            _%tl1193012340%_
                            _%__splice1956519566%_
                            _%target1195512138%_
                            _%tl1195712141%_)
                           (let () (declare (not safe)) (_%g1192511998%_)))))
                   (let () (declare (not safe)) (_%g1192511998%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _%hd1192912337%_)
                                                   (let ((_%__splice1956519566%_
                                                          (gx#syntax-split-splice
                                                           _%hd1192912337%_
                                                           '0)))
                                                     (let ((_%tl1195712141%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1956519566%_
                                                               '1)))
                                                           (_%target1195512138%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1956519566%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1195712141%_)
                                                           (_%__match1963319634%_
                                                            _%e1192812333%_
                                                            _%hd1192912337%_
                                                            _%tl1193012340%_
                                                            _%__splice1956519566%_
                                                            _%target1195512138%_
                                                            _%tl1195712141%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1192511998%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1192511998%_)))))))
                                   (if (gx#stx-pair/null? _%tl1193012340%_)
                                       (let ((_%__splice1956119562%_
                                              (gx#syntax-split-splice
                                               _%tl1193012340%_
                                               '0)))
                                         (let ((_%tl1194312276%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1956119562%_
                                                   '1)))
                                               (_%target1194112273%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1956119562%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1194312276%_)
                                               (_%__match1961919620%_
                                                _%e1192812333%_
                                                _%hd1192912337%_
                                                _%tl1193012340%_
                                                _%__splice1956119562%_
                                                _%target1194112273%_
                                                _%tl1194312276%_)
                                               (if (gx#stx-pair/null?
                                                    _%hd1192912337%_)
                                                   (let ((_%__splice1956519566%_
                                                          (gx#syntax-split-splice
                                                           _%hd1192912337%_
                                                           '0)))
                                                     (let ((_%tl1195712141%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1956519566%_
                                                               '1)))
                                                           (_%target1195512138%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1956519566%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1195712141%_)
                                                           (_%__match1963319634%_
                                                            _%e1192812333%_
                                                            _%hd1192912337%_
                                                            _%tl1193012340%_
                                                            _%__splice1956519566%_
                                                            _%target1195512138%_
                                                            _%tl1195712141%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1192511998%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1192511998%_))))))
                                       (if (gx#stx-pair/null? _%hd1192912337%_)
                                           (let ((_%__splice1956519566%_
                                                  (gx#syntax-split-splice
                                                   _%hd1192912337%_
                                                   '0)))
                                             (let ((_%tl1195712141%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1956519566%_
                                                       '1)))
                                                   (_%target1195512138%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1956519566%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1195712141%_)
                                                   (_%__match1963319634%_
                                                    _%e1192812333%_
                                                    _%hd1192912337%_
                                                    _%tl1193012340%_
                                                    _%__splice1956519566%_
                                                    _%target1195512138%_
                                                    _%tl1195712141%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1192511998%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1192511998%_)))))
                               (if (gx#stx-pair/null? _%tl1193012340%_)
                                   (let ((_%__splice1956119562%_
                                          (gx#syntax-split-splice
                                           _%tl1193012340%_
                                           '0)))
                                     (let ((_%tl1194312276%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1956119562%_
                                               '1)))
                                           (_%target1194112273%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1956119562%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1194312276%_)
                                           (_%__match1961919620%_
                                            _%e1192812333%_
                                            _%hd1192912337%_
                                            _%tl1193012340%_
                                            _%__splice1956119562%_
                                            _%target1194112273%_
                                            _%tl1194312276%_)
                                           (if (gx#stx-pair/null?
                                                _%hd1192912337%_)
                                               (let ((_%__splice1956519566%_
                                                      (gx#syntax-split-splice
                                                       _%hd1192912337%_
                                                       '0)))
                                                 (let ((_%tl1195712141%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1956519566%_
                                                           '1)))
                                                       (_%target1195512138%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1956519566%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1195712141%_)
                                                       (_%__match1963319634%_
                                                        _%e1192812333%_
                                                        _%hd1192912337%_
                                                        _%tl1193012340%_
                                                        _%__splice1956519566%_
                                                        _%target1195512138%_
                                                        _%tl1195712141%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g1192511998%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1192511998%_))))))
                                   (if (gx#stx-pair/null? _%hd1192912337%_)
                                       (let ((_%__splice1956519566%_
                                              (gx#syntax-split-splice
                                               _%hd1192912337%_
                                               '0)))
                                         (let ((_%tl1195712141%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1956519566%_
                                                   '1)))
                                               (_%target1195512138%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1956519566%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1195712141%_)
                                               (_%__match1963319634%_
                                                _%e1192812333%_
                                                _%hd1192912337%_
                                                _%tl1193012340%_
                                                _%__splice1956519566%_
                                                _%target1195512138%_
                                                _%tl1195712141%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1192511998%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g1192511998%_)))))
                           (if (gx#stx-pair/null? _%tl1193012340%_)
                               (let ((_%__splice1956119562%_
                                      (gx#syntax-split-splice
                                       _%tl1193012340%_
                                       '0)))
                                 (let ((_%tl1194312276%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1956119562%_
                                           '1)))
                                       (_%target1194112273%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1956119562%_
                                           '0))))
                                   (if (gx#stx-null? _%tl1194312276%_)
                                       (_%__match1961919620%_
                                        _%e1192812333%_
                                        _%hd1192912337%_
                                        _%tl1193012340%_
                                        _%__splice1956119562%_
                                        _%target1194112273%_
                                        _%tl1194312276%_)
                                       (if (gx#stx-pair/null? _%hd1192912337%_)
                                           (let ((_%__splice1956519566%_
                                                  (gx#syntax-split-splice
                                                   _%hd1192912337%_
                                                   '0)))
                                             (let ((_%tl1195712141%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1956519566%_
                                                       '1)))
                                                   (_%target1195512138%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1956519566%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1195712141%_)
                                                   (_%__match1963319634%_
                                                    _%e1192812333%_
                                                    _%hd1192912337%_
                                                    _%tl1193012340%_
                                                    _%__splice1956519566%_
                                                    _%target1195512138%_
                                                    _%tl1195712141%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1192511998%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1192511998%_))))))
                               (if (gx#stx-pair/null? _%hd1192912337%_)
                                   (let ((_%__splice1956519566%_
                                          (gx#syntax-split-splice
                                           _%hd1192912337%_
                                           '0)))
                                     (let ((_%tl1195712141%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1956519566%_
                                               '1)))
                                           (_%target1195512138%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1956519566%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1195712141%_)
                                           (_%__match1963319634%_
                                            _%e1192812333%_
                                            _%hd1192912337%_
                                            _%tl1193012340%_
                                            _%__splice1956519566%_
                                            _%target1195512138%_
                                            _%tl1195712141%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1192511998%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1192511998%_)))))))
                   (if (gx#stx-pair/null? _%tl1193012340%_)
                       (let ((_%__splice1956119562%_
                              (gx#syntax-split-splice _%tl1193012340%_ '0)))
                         (let ((_%tl1194312276%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1956119562%_ '1)))
                               (_%target1194112273%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1956119562%_ '0))))
                           (if (gx#stx-null? _%tl1194312276%_)
                               (_%__match1961919620%_
                                _%e1192812333%_
                                _%hd1192912337%_
                                _%tl1193012340%_
                                _%__splice1956119562%_
                                _%target1194112273%_
                                _%tl1194312276%_)
                               (if (gx#stx-pair/null? _%hd1192912337%_)
                                   (let ((_%__splice1956519566%_
                                          (gx#syntax-split-splice
                                           _%hd1192912337%_
                                           '0)))
                                     (let ((_%tl1195712141%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1956519566%_
                                               '1)))
                                           (_%target1195512138%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1956519566%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1195712141%_)
                                           (_%__match1963319634%_
                                            _%e1192812333%_
                                            _%hd1192912337%_
                                            _%tl1193012340%_
                                            _%__splice1956519566%_
                                            _%target1195512138%_
                                            _%tl1195712141%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1192511998%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1192511998%_))))))
                       (if (gx#stx-pair/null? _%hd1192912337%_)
                           (let ((_%__splice1956519566%_
                                  (gx#syntax-split-splice
                                   _%hd1192912337%_
                                   '0)))
                             (let ((_%tl1195712141%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1956519566%_
                                       '1)))
                                   (_%target1195512138%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1956519566%_
                                       '0))))
                               (if (gx#stx-null? _%tl1195712141%_)
                                   (_%__match1963319634%_
                                    _%e1192812333%_
                                    _%hd1192912337%_
                                    _%tl1193012340%_
                                    _%__splice1956519566%_
                                    _%target1195512138%_
                                    _%tl1195712141%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g1192511998%_)))))
                           (let () (declare (not safe)) (_%g1192511998%_)))))
               (if (gx#stx-pair/null? _%hd1192912337%_)
                   (let ((_%__splice1956519566%_
                          (gx#syntax-split-splice _%hd1192912337%_ '0)))
                     (let ((_%tl1195712141%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1956519566%_ '1)))
                           (_%target1195512138%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1956519566%_ '0))))
                       (if (gx#stx-null? _%tl1195712141%_)
                           (_%__match1963319634%_
                            _%e1192812333%_
                            _%hd1192912337%_
                            _%tl1193012340%_
                            _%__splice1956519566%_
                            _%target1195512138%_
                            _%tl1195712141%_)
                           (let () (declare (not safe)) (_%g1192511998%_)))))
                   (let () (declare (not safe)) (_%g1192511998%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%hd1192912337%_)
                                                       (let ((_%__splice1956519566%_
                                                              (gx#syntax-split-splice
                                                               _%hd1192912337%_
                                                               '0)))
                                                         (let ((_%tl1195712141%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice1956519566%_ '1)))
                       (_%target1195512138%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice1956519566%_ '0))))
                   (if (gx#stx-null? _%tl1195712141%_)
                       (_%__match1963319634%_
                        _%e1192812333%_
                        _%hd1192912337%_
                        _%tl1193012340%_
                        _%__splice1956519566%_
                        _%target1195512138%_
                        _%tl1195712141%_)
                       (let () (declare (not safe)) (_%g1192511998%_)))))
               (let () (declare (not safe)) (_%g1192511998%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_%g1192511998%_))))))))
                              (_%__kont1965519656%_
                               (lambda ()
                                 (_%check-duplicate-datums9374%_
                                  _%datums11856%_)
                                 (values (reverse _%datums11856%_)
                                         (reverse _%dispatch11857%_)
                                         (let ((_%$e11884%_ _%default11858%_))
                                           (if _%$e11884%_
                                               _%$e11884%_
                                               '#!void))))))
                          (let ((_%g1186011888%_
                                 (lambda ()
                                   (if (gx#stx-null? _%__stx1965019651%_)
                                       (_%__kont1965519656%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g1186111873%_))))))
                            (if (gx#stx-pair? _%__stx1965019651%_)
                                (let ((_%e1186511895%_
                                       (gx#syntax-e _%__stx1965019651%_)))
                                  (let ((_%tl1186711902%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1186511895%_)))
                                        (_%hd1186611899%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1186511895%_))))
                                    (_%__kont1965319654%_
                                     _%tl1186711902%_
                                     _%hd1186611899%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g1186011888%_)))))))))
                 (_%check-duplicate-datums9374%_
                  (lambda (_%datums11835%_)
                    (let ((_%ht11838%_ (make-hash-table)))
                      (for-each
                       (lambda (_%lst11841%_)
                         (for-each
                          (lambda (_%datum11844%_)
                            (if (hash-get _%ht11838%_ _%datum11844%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _%stx9369%_
                                 _%datum11844%_)
                                (hash-put! _%ht11838%_ _%datum11844%_ '#t)))
                          _%lst11841%_))
                       _%datums11835%_))))
                 (_%count-datums9375%_
                  (lambda (_%datums11828%_)
                    (foldl (lambda (_%lst11831%_ _%r11833%_)
                             (+ (length _%lst11831%_) _%r11833%_))
                           '0
                           _%datums11828%_)))
                 (_%symbolic-datums?9376%_
                  (lambda (_%datums11822%_)
                    (andmap (lambda (_%lst11825%_)
                              (andmap symbol? _%lst11825%_))
                            _%datums11822%_)))
                 (_%char-datums?9377%_
                  (lambda (_%datums11816%_)
                    (andmap (lambda (_%lst11819%_) (andmap char? _%lst11819%_))
                            _%datums11816%_)))
                 (_%fixnum-datums?9378%_
                  (lambda (_%datums11810%_)
                    (andmap (lambda (_%lst11813%_)
                              (andmap fixnum? _%lst11813%_))
                            _%datums11810%_)))
                 (_%eq-datums?9379%_
                  (lambda (_%datums11793%_)
                    (andmap (lambda (_%lst11796%_)
                              (andmap (lambda (_%x11799%_)
                                        (let ((_%$e11802%_
                                               (symbol? _%x11799%_)))
                                          (if _%$e11802%_
                                              _%$e11802%_
                                              (let ((_%$e11806%_
                                                     (keyword? _%x11799%_)))
                                                (if _%$e11806%_
                                                    _%$e11806%_
                                                    (immediate?
                                                     _%x11799%_))))))
                                      _%lst11796%_))
                            _%datums11793%_)))
                 (_%generate-simple-case9380%_
                  (lambda (_%e11557%_
                           _%datums11559%_
                           _%dispatch11560%_
                           _%default11561%_)
                    (let* ((_%g1156311571%_
                            (lambda (_%g1156411567%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1156411567%_)))
                           (_%g1156211789%_
                            (lambda (_%g1156411575%_)
                              ((lambda (_%L11578%_)
                                 (let _%recur11590%_ ((_%datums11593%_
                                                       _%datums11559%_)
                                                      (_%dispatch11595%_
                                                       _%dispatch11560%_))
                                   (let* ((_%__stx1966819669%_ _%datums11593%_)
                                          (_%g1159811619%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx1966819669%_))))
                                     (let ((_%__kont1967119672%_
                                            (lambda (_%L11677%_ _%L11679%_)
                                              (let* ((_%g1169911711%_
                                                      (lambda (_%g1170011707%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1170011707%_)))
                                                     (_%g1169811781%_
                                                      (lambda (_%g1170011715%_)
                                                        (if (gx#stx-pair?
                                                             _%g1170011715%_)
                                                            (let ((_%e1170311718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%g1170011715%_)))
                      (let ((_%hd1170411722%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1170311718%_)))
                            (_%tl1170511725%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1170311718%_))))
                        ((lambda (_%L11728%_ _%L11730%_)
                           (let* ((_%g1174211750%_
                                   (lambda (_%g1174311746%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g1174311746%_)))
                                  (_%g1174111777%_
                                   (lambda (_%g1174311754%_)
                                     ((lambda (_%L11757%_)
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'or)
                                                          (foldr (lambda (_%g1176811771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g1176911774%_)
                           (cons (cons (gx#datum->syntax '#f '~case-test)
                                       (cons _%g1176811771%_
                                             (cons _%L11578%_ '())))
                                 _%g1176911774%_))
                         '()
                         _%L11679%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L11730%_
                                                          (cons _%L11757%_
                                                                '())))))
                                      _%g1174311754%_))))
                             (_%g1174111777%_
                              (_%recur11590%_ _%L11677%_ _%L11728%_))))
                         _%tl1170511725%_
                         _%hd1170411722%_)))
                    (_%g1169911711%_ _%g1170011715%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1169811781%_
                                                 _%dispatch11595%_))))
                                           (_%__kont1967519676%_
                                            (lambda () _%default11561%_)))
                                       (let ((_%__match1969119692%_
                                              (lambda (_%e1160211637%_
                                                       _%hd1160311641%_
                                                       _%tl1160411644%_
                                                       _%__splice1967319674%_
                                                       _%target1160511647%_
                                                       _%tl1160711650%_)
                                                (letrec ((_%loop1160811653%_
                                                          (lambda (_%hd1160611657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%datum1161211660%_)
                    (if (gx#stx-pair? _%hd1160611657%_)
                        (let ((_%e1160911663%_ (gx#syntax-e _%hd1160611657%_)))
                          (let ((_%lp-tl1161111670%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1160911663%_)))
                                (_%lp-hd1161011667%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1160911663%_))))
                            (_%loop1160811653%_
                             _%lp-tl1161111670%_
                             (cons _%lp-hd1161011667%_ _%datum1161211660%_))))
                        (let ((_%datum1161311673%_
                               (reverse _%datum1161211660%_)))
                          (_%__kont1967119672%_
                           _%tl1160411644%_
                           _%datum1161311673%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1160811653%_
                                                   _%target1160511647%_
                                                   '())))))
                                         (if (gx#stx-pair? _%__stx1966819669%_)
                                             (let ((_%e1160211637%_
                                                    (gx#syntax-e
                                                     _%__stx1966819669%_)))
                                               (let ((_%tl1160411644%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1160211637%_)))
                                                     (_%hd1160311641%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1160211637%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%hd1160311641%_)
                                                     (let ((_%__splice1967319674%_
                                                            (gx#syntax-split-splice
                                                             _%hd1160311641%_
                                                             '0)))
                                                       (let ((_%tl1160711650%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice1967319674%_ '1)))
                     (_%target1160511647%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice1967319674%_ '0))))
                 (if (gx#stx-null? _%tl1160711650%_)
                     (_%__match1969119692%_
                      _%e1160211637%_
                      _%hd1160311641%_
                      _%tl1160411644%_
                      _%__splice1967319674%_
                      _%target1160511647%_
                      _%tl1160711650%_)
                     (_%__kont1967519676%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont1967519676%_))))
                                             (_%__kont1967519676%_)))))))
                               _%g1156411575%_))))
                      (_%g1156211789%_ _%e11557%_))))
                 (_%datum-dispatch-index9381%_
                  (lambda (_%datums11429%_)
                    (let _%lp11432%_ ((_%rest11435%_ _%datums11429%_)
                                      (_%ix11437%_ '0)
                                      (_%r11438%_ '()))
                      (let* ((_%__stx1969419695%_ _%rest11435%_)
                             (_%g1144111462%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1969419695%_))))
                        (let ((_%__kont1969719698%_
                               (lambda (_%L11520%_ _%L11522%_)
                                 (_%lp11432%_
                                  _%L11520%_
                                  (fx1+ _%ix11437%_)
                                  (foldl (lambda (_%x11541%_ _%r11543%_)
                                           (cons (cons _%x11541%_ _%ix11437%_)
                                                 _%r11543%_))
                                         _%r11438%_
                                         (foldr (lambda (_%g1154411547%_
                                                         _%g1154511550%_)
                                                  (cons _%g1154411547%_
                                                        _%g1154511550%_))
                                                '()
                                                _%L11522%_)))))
                              (_%__kont1970119702%_ (lambda () _%r11438%_)))
                          (let ((_%__match1971719718%_
                                 (lambda (_%e1144511480%_
                                          _%hd1144611484%_
                                          _%tl1144711487%_
                                          _%__splice1969919700%_
                                          _%target1144811490%_
                                          _%tl1145011493%_)
                                   (letrec ((_%loop1145111496%_
                                             (lambda (_%hd1144911500%_
                                                      _%datum1145511503%_)
                                               (if (gx#stx-pair?
                                                    _%hd1144911500%_)
                                                   (let ((_%e1145211506%_
                                                          (gx#syntax-e
                                                           _%hd1144911500%_)))
                                                     (let ((_%lp-tl1145411513%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e1145211506%_)))
                                                           (_%lp-hd1145311510%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e1145211506%_))))
                                                       (_%loop1145111496%_
                                                        _%lp-tl1145411513%_
                                                        (cons _%lp-hd1145311510%_
                                                              _%datum1145511503%_))))
                                                   (let ((_%datum1145611516%_
                                                          (reverse _%datum1145511503%_)))
                                                     (_%__kont1969719698%_
                                                      _%tl1144711487%_
                                                      _%datum1145611516%_))))))
                                     (_%loop1145111496%_
                                      _%target1144811490%_
                                      '())))))
                            (if (gx#stx-pair? _%__stx1969419695%_)
                                (let ((_%e1144511480%_
                                       (gx#syntax-e _%__stx1969419695%_)))
                                  (let ((_%tl1144711487%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1144511480%_)))
                                        (_%hd1144611484%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1144511480%_))))
                                    (if (gx#stx-pair/null? _%hd1144611484%_)
                                        (let ((_%__splice1969919700%_
                                               (gx#syntax-split-splice
                                                _%hd1144611484%_
                                                '0)))
                                          (let ((_%tl1145011493%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1969919700%_
                                                    '1)))
                                                (_%target1144811490%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1969919700%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1145011493%_)
                                                (_%__match1971719718%_
                                                 _%e1144511480%_
                                                 _%hd1144611484%_
                                                 _%tl1144711487%_
                                                 _%__splice1969919700%_
                                                 _%target1144811490%_
                                                 _%tl1145011493%_)
                                                (_%__kont1970119702%_))))
                                        (_%__kont1970119702%_))))
                                (_%__kont1970119702%_))))))))
                 (_%duplicate-indexes?9382%_
                  (lambda (_%xs11410%_)
                    (let ((_%ht11413%_ (make-hash-table-eq)))
                      (let _%lp11416%_ ((_%rest11419%_ _%xs11410%_))
                        (if (pair? _%rest11419%_)
                            (let* ((_%ix11422%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest11419%_)))
                                   (_%$e11425%_
                                    (hash-get _%ht11413%_ _%ix11422%_)))
                              (if _%$e11425%_
                                  _%$e11425%_
                                  (begin
                                    (hash-put! _%ht11413%_ _%ix11422%_ '#t)
                                    (_%lp11416%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest11419%_))))))
                            '#f)))))
                 (_%generate-hash-dispatch-table9383%_
                  (lambda (_%indexes11379%_ _%hash-e11381%_)
                    (let _%lp11383%_ ((_%len11386%_
                                       (* '2 (length _%indexes11379%_))))
                      (let* ((_%hs11392%_
                              (map (lambda (_%x11389%_)
                                     (_%hash-e11381%_ (car _%x11389%_)))
                                   _%indexes11379%_))
                             (_%xs11398%_
                              (map (lambda (_%h11395%_)
                                     (fxmodulo _%h11395%_ _%len11386%_))
                                   _%hs11392%_)))
                        (if (_%duplicate-indexes?9382%_ _%xs11398%_)
                            (if (< _%len11386%_ '131072)
                                (_%lp11383%_
                                 (quotient
                                  (let ()
                                    (declare (not safe))
                                    (##fx* _%len11386%_ '3))
                                  '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _%stx9369%_
                                 _%indexes11379%_))
                            (let ((_%tab11403%_
                                   (make-vector _%len11386%_ '#f)))
                              (for-each
                               (lambda (_%entry11406%_ _%x11408%_)
                                 (vector-set!
                                  _%tab11403%_
                                  _%x11408%_
                                  _%entry11406%_))
                               _%indexes11379%_
                               _%xs11398%_)
                              _%tab11403%_))))))
                 (_%generate-symbolic-dispatch9384%_
                  (lambda (_%e10982%_
                           _%datums10984%_
                           _%dispatch10985%_
                           _%default10986%_)
                    (let* ((_%indexes10988%_
                            (_%datum-dispatch-index9381%_ _%datums10984%_))
                           (_%tab10991%_
                            (_%generate-hash-dispatch-table9383%_
                             _%indexes10988%_
                             symbol-hash)))
                      (if (= (length _%dispatch10985%_) '1)
                          (let* ((_%tab10999%_
                                  (vector-map
                                   (lambda (_%x10996%_)
                                     (if _%x10996%_ (car _%x10996%_) '#f))
                                   _%tab10991%_))
                                 (_%g1100211040%_
                                  (lambda (_%g1100311036%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1100311036%_)))
                                 (_%g1100111171%_
                                  (lambda (_%g1100311044%_)
                                    (if (gx#stx-pair? _%g1100311044%_)
                                        (let ((_%e1101111047%_
                                               (gx#syntax-e _%g1100311044%_)))
                                          (let ((_%hd1101211051%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1101111047%_)))
                                                (_%tl1101311054%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1101111047%_))))
                                            (if (gx#stx-pair? _%tl1101311054%_)
                                                (let ((_%e1101411057%_
                                                       (gx#syntax-e
                                                        _%tl1101311054%_)))
                                                  (let ((_%hd1101511061%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1101411057%_)))
                                                        (_%tl1101611064%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1101411057%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1101611064%_)
                                                        (let ((_%e1101711067%_
                                                               (gx#syntax-e
                                                                _%tl1101611064%_)))
                                                          (let ((_%hd1101811071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1101711067%_)))
                        (_%tl1101911074%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1101711067%_))))
                    (if (gx#stx-pair? _%tl1101911074%_)
                        (let ((_%e1102011077%_ (gx#syntax-e _%tl1101911074%_)))
                          (let ((_%hd1102111081%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1102011077%_)))
                                (_%tl1102211084%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1102011077%_))))
                            (if (gx#stx-pair? _%hd1102111081%_)
                                (let ((_%e1102311087%_
                                       (gx#syntax-e _%hd1102111081%_)))
                                  (let ((_%hd1102411091%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1102311087%_)))
                                        (_%tl1102511094%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1102311087%_))))
                                    (if (gx#stx-null? _%tl1102511094%_)
                                        (if (gx#stx-pair? _%tl1102211084%_)
                                            (let ((_%e1102611097%_
                                                   (gx#syntax-e
                                                    _%tl1102211084%_)))
                                              (let ((_%hd1102711101%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1102611097%_)))
                                                    (_%tl1102811104%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1102611097%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1102811104%_)
                                                    (let ((_%e1102911107%_
                                                           (gx#syntax-e
                                                            _%tl1102811104%_)))
                                                      (let ((_%hd1103011111%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1102911107%_)))
                    (_%tl1103111114%_
                     (let () (declare (not safe)) (##cdr _%e1102911107%_))))
                (if (gx#stx-pair? _%tl1103111114%_)
                    (let ((_%e1103211117%_ (gx#syntax-e _%tl1103111114%_)))
                      (let ((_%hd1103311121%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1103211117%_)))
                            (_%tl1103411124%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1103211117%_))))
                        (if (gx#stx-null? _%tl1103411124%_)
                            ((lambda (_%L11127%_
                                      _%L11129%_
                                      _%L11130%_
                                      _%L11131%_
                                      _%L11132%_
                                      _%L11133%_
                                      _%L11134%_)
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L11133%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _%L11130%_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L11132%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%L11129%_ '()))
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
                           (cons _%L11134%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'let*)
                                 (cons (cons (cons (gx#datum->syntax '#f 'h)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##symbol-hash)
                                                               (cons _%L11134%_
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
                                   (cons _%L11127%_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'q)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##vector-ref)
                                   (cons _%L11132%_
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
                             (cons _%L11134%_ '())))
                 (cons _%L11131%_ (cons (cons _%L11133%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _%L11133%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                             _%hd1103311121%_
                             _%hd1103011111%_
                             _%hd1102711101%_
                             _%hd1102411091%_
                             _%hd1101811071%_
                             _%hd1101511061%_
                             _%hd1101211051%_)
                            (_%g1100211040%_ _%g1100311044%_))))
                    (_%g1100211040%_ _%g1100311044%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1100211040%_
                                                     _%g1100311044%_))))
                                            (_%g1100211040%_ _%g1100311044%_))
                                        (_%g1100211040%_ _%g1100311044%_))))
                                (_%g1100211040%_ _%g1100311044%_))))
                        (_%g1100211040%_ _%g1100311044%_))))
                (_%g1100211040%_ _%g1100311044%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1100211040%_
                                                 _%g1100311044%_))))
                                        (_%g1100211040%_ _%g1100311044%_)))))
                            (_%g1100111171%_
                             (list _%e10982%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch10985%_
                                   _%default10986%_
                                   _%tab10999%_
                                   (vector-length _%tab10999%_))))
                          (let* ((_%g1117511219%_
                                  (lambda (_%g1117611215%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1117611215%_)))
                                 (_%g1117411375%_
                                  (lambda (_%g1117611223%_)
                                    (if (gx#stx-pair? _%g1117611223%_)
                                        (let ((_%e1118411226%_
                                               (gx#syntax-e _%g1117611223%_)))
                                          (let ((_%hd1118511230%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1118411226%_)))
                                                (_%tl1118611233%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1118411226%_))))
                                            (if (gx#stx-pair? _%tl1118611233%_)
                                                (let ((_%e1118711236%_
                                                       (gx#syntax-e
                                                        _%tl1118611233%_)))
                                                  (let ((_%hd1118811240%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1118711236%_)))
                                                        (_%tl1118911243%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1118711236%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1118911243%_)
                                                        (let ((_%e1119011246%_
                                                               (gx#syntax-e
                                                                _%tl1118911243%_)))
                                                          (let ((_%hd1119111250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1119011246%_)))
                        (_%tl1119211253%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1119011246%_))))
                    (if (gx#stx-pair? _%tl1119211253%_)
                        (let ((_%e1119311256%_ (gx#syntax-e _%tl1119211253%_)))
                          (let ((_%hd1119411260%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1119311256%_)))
                                (_%tl1119511263%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1119311256%_))))
                            (if (gx#stx-pair/null? _%hd1119411260%_)
                                (let ((_g20923_
                                       (gx#syntax-split-splice
                                        _%hd1119411260%_
                                        '0)))
                                  (begin
                                    (let ((_g20924_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g20923_)
                                                 (##vector-length _g20923_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g20924_ 2)))
                                          (error "Context expects 2 values"
                                                 _g20924_)))
                                    (let ((_%target1119611266%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g20923_ 0)))
                                          (_%tl1119811269%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g20923_ 1))))
                                      (if (gx#stx-null? _%tl1119811269%_)
                                          (letrec ((_%loop1119911272%_
                                                    (lambda (_%hd1119711276%_
                                                             _%dispatch1120311279%_)
                                                      (if (gx#stx-pair?
                                                           _%hd1119711276%_)
                                                          (let ((_%e1120011282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd1119711276%_)))
                    (let ((_%lp-hd1120111286%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1120011282%_)))
                          (_%lp-tl1120211289%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1120011282%_))))
                      (_%loop1119911272%_
                       _%lp-tl1120211289%_
                       (cons _%lp-hd1120111286%_ _%dispatch1120311279%_))))
                  (let ((_%dispatch1120411292%_
                         (reverse _%dispatch1120311279%_)))
                    (if (gx#stx-pair? _%tl1119511263%_)
                        (let ((_%e1120511296%_ (gx#syntax-e _%tl1119511263%_)))
                          (let ((_%hd1120611300%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1120511296%_)))
                                (_%tl1120711303%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1120511296%_))))
                            (if (gx#stx-pair? _%tl1120711303%_)
                                (let ((_%e1120811306%_
                                       (gx#syntax-e _%tl1120711303%_)))
                                  (let ((_%hd1120911310%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1120811306%_)))
                                        (_%tl1121011313%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1120811306%_))))
                                    (if (gx#stx-pair? _%tl1121011313%_)
                                        (let ((_%e1121111316%_
                                               (gx#syntax-e _%tl1121011313%_)))
                                          (let ((_%hd1121211320%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1121111316%_)))
                                                (_%tl1121311323%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1121111316%_))))
                                            (if (gx#stx-null? _%tl1121311323%_)
                                                ((lambda (_%L11326%_
                                                          _%L11328%_
                                                          _%L11329%_
                                                          _%L11330%_
                                                          _%L11331%_
                                                          _%L11332%_
                                                          _%L11333%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _%L11332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons '()
                                                     (cons _%L11329%_ '())))
                                         '()))
                             (cons (cons _%L11331%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L11328%_ '()))
                                               '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f 'symbol?)
                                               (cons _%L11333%_ '()))
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
                                           (cons _%L11333%_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'ix)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##fxmodulo)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'h)
                                                       (cons _%L11326%_ '())))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'q)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _%L11331%_
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
                           (cons _%L11333%_ '())))
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
                                                   (foldr (lambda (_%g1136611369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1136711372%_)
                    (cons _%g1136611369%_ _%g1136711372%_))
                  '()
                  _%L11330%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons (cons _%L11332%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%L11332%_ '()) '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L11332%_ '())
                                                     '()))))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd1121211320%_
                                                 _%hd1120911310%_
                                                 _%hd1120611300%_
                                                 _%dispatch1120411292%_
                                                 _%hd1119111250%_
                                                 _%hd1118811240%_
                                                 _%hd1118511230%_)
                                                (_%g1117511219%_
                                                 _%g1117611223%_))))
                                        (_%g1117511219%_ _%g1117611223%_))))
                                (_%g1117511219%_ _%g1117611223%_))))
                        (_%g1117511219%_ _%g1117611223%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop1119911272%_
                                             _%target1119611266%_
                                             '()))
                                          (_%g1117511219%_ _%g1117611223%_)))))
                                (_%g1117511219%_ _%g1117611223%_))))
                        (_%g1117511219%_ _%g1117611223%_))))
                (_%g1117511219%_ _%g1117611223%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1117511219%_
                                                 _%g1117611223%_))))
                                        (_%g1117511219%_ _%g1117611223%_)))))
                            (_%g1117411375%_
                             (list _%e10982%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch10985%_
                                   _%default10986%_
                                   _%tab10991%_
                                   (vector-length _%tab10991%_))))))))
                 (_%max-char9385%_
                  (lambda (_%datums10971%_)
                    (foldl (lambda (_%lst10974%_ _%r10976%_)
                             (foldl (lambda (_%char10978%_ _%r10980%_)
                                      (max (char->integer _%char10978%_)
                                           _%r10980%_))
                                    _%r10976%_
                                    _%lst10974%_))
                           '0
                           _%datums10971%_)))
                 (_%generate-char-dispatch-table9386%_
                  (lambda (_%indexes10950%_)
                    (let* ((_%ixs10956%_
                            (map (lambda (_%x10953%_)
                                   (char->integer (car _%x10953%_)))
                                 _%indexes10950%_))
                           (_%len10959%_ (fx1+ (foldl max '0 _%ixs10956%_)))
                           (_%vec10962%_ (make-vector _%len10959%_ '#f)))
                      (for-each
                       (lambda (_%entry10967%_ _%x10969%_)
                         (vector-set!
                          _%vec10962%_
                          _%x10969%_
                          (cdr _%entry10967%_)))
                       _%indexes10950%_
                       _%ixs10956%_)
                      _%vec10962%_)))
                 (_%simple-char-range?9387%_
                  (lambda (_%tab10926%_)
                    (let ((_%end10929%_ (vector-length _%tab10926%_)))
                      (let _%lp10932%_ ((_%i10935%_ '0))
                        (let ((_%ix10938%_
                               (vector-ref _%tab10926%_ _%i10935%_)))
                          (if _%ix10938%_
                              (let _%lp210941%_ ((_%i10944%_
                                                  (fx1+ _%i10935%_)))
                                (if (fx< _%i10944%_ _%end10929%_)
                                    (let ((_%ix*10947%_
                                           (vector-ref
                                            _%tab10926%_
                                            _%i10944%_)))
                                      (if (eq? _%ix10938%_ _%ix*10947%_)
                                          (_%lp210941%_ (fx1+ _%i10944%_))
                                          '#f))
                                    '#t))
                              (_%lp10932%_ (fx1+ _%i10935%_))))))))
                 (_%char-range-start9388%_
                  (lambda (_%tab10917%_)
                    (let _%lp10920%_ ((_%i10923%_ '0))
                      (if (vector-ref _%tab10917%_ _%i10923%_)
                          _%i10923%_
                          (_%lp10920%_ (fx1+ _%i10923%_))))))
                 (_%generate-char-dispatch9389%_
                  (lambda (_%e10540%_
                           _%datums10542%_
                           _%dispatch10543%_
                           _%default10544%_)
                    (if (< (_%max-char9385%_ _%datums10542%_) '128)
                        (let* ((_%indexes10546%_
                                (_%datum-dispatch-index9381%_ _%datums10542%_))
                               (_%tab10549%_
                                (_%generate-char-dispatch-table9386%_
                                 _%indexes10546%_)))
                          (if (_%simple-char-range?9387%_ _%tab10549%_)
                              (let ((_%start10554%_
                                     (_%char-range-start9388%_ _%tab10549%_))
                                    (_%end10556%_
                                     (vector-length _%tab10549%_)))
                                (let* ((_%g1055810592%_
                                        (lambda (_%g1055910588%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g1055910588%_)))
                                       (_%g1055710709%_
                                        (lambda (_%g1055910596%_)
                                          (if (gx#stx-pair? _%g1055910596%_)
                                              (let ((_%e1056610599%_
                                                     (gx#syntax-e
                                                      _%g1055910596%_)))
                                                (let ((_%hd1056710603%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1056610599%_)))
                                                      (_%tl1056810606%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1056610599%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1056810606%_)
                                                      (let ((_%e1056910609%_
                                                             (gx#syntax-e
                                                              _%tl1056810606%_)))
                                                        (let ((_%hd1057010613%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1056910609%_)))
                      (_%tl1057110616%_
                       (let () (declare (not safe)) (##cdr _%e1056910609%_))))
                  (if (gx#stx-pair? _%tl1057110616%_)
                      (let ((_%e1057210619%_ (gx#syntax-e _%tl1057110616%_)))
                        (let ((_%hd1057310623%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1057210619%_)))
                              (_%tl1057410626%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1057210619%_))))
                          (if (gx#stx-pair? _%hd1057310623%_)
                              (let ((_%e1057510629%_
                                     (gx#syntax-e _%hd1057310623%_)))
                                (let ((_%hd1057610633%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1057510629%_)))
                                      (_%tl1057710636%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1057510629%_))))
                                  (if (gx#stx-null? _%tl1057710636%_)
                                      (if (gx#stx-pair? _%tl1057410626%_)
                                          (let ((_%e1057810639%_
                                                 (gx#syntax-e
                                                  _%tl1057410626%_)))
                                            (let ((_%hd1057910643%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1057810639%_)))
                                                  (_%tl1058010646%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1057810639%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1058010646%_)
                                                  (let ((_%e1058110649%_
                                                         (gx#syntax-e
                                                          _%tl1058010646%_)))
                                                    (let ((_%hd1058210653%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1058110649%_)))
                                                          (_%tl1058310656%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1058110649%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1058310656%_)
                                                          (let ((_%e1058410659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1058310656%_)))
                    (let ((_%hd1058510663%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1058410659%_)))
                          (_%tl1058610666%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1058410659%_))))
                      (if (gx#stx-null? _%tl1058610666%_)
                          ((lambda (_%L10669%_
                                    _%L10671%_
                                    _%L10672%_
                                    _%L10673%_
                                    _%L10674%_
                                    _%L10675%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons _%L10674%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L10672%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax '#f 'if)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'char?)
                         (cons _%L10675%_ '()))
                   (cons (cons (gx#datum->syntax '#f 'let)
                               (cons (cons (gx#datum->syntax '#f 'ix)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##char->integer)
                                                       (cons _%L10675%_ '()))
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
                                       (cons _%L10671%_ '())))
                           (cons (cons (gx#datum->syntax '#f '##fx<)
                                       (cons (gx#datum->syntax '#f 'ix)
                                             (cons _%L10669%_ '())))
                                 '())))
               (cons _%L10673%_ (cons (cons _%L10674%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (cons (cons _%L10674%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%hd1058510663%_
                           _%hd1058210653%_
                           _%hd1057910643%_
                           _%hd1057610633%_
                           _%hd1057010613%_
                           _%hd1056710603%_)
                          (_%g1055810592%_ _%g1055910596%_))))
                  (_%g1055810592%_ _%g1055910596%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1055810592%_
                                                   _%g1055910596%_))))
                                          (_%g1055810592%_ _%g1055910596%_))
                                      (_%g1055810592%_ _%g1055910596%_))))
                              (_%g1055810592%_ _%g1055910596%_))))
                      (_%g1055810592%_ _%g1055910596%_))))
              (_%g1055810592%_ _%g1055910596%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1055810592%_
                                               _%g1055910596%_)))))
                                  (_%g1055710709%_
                                   (list _%e10540%_
                                         (gx#genident 'default)
                                         _%dispatch10543%_
                                         _%default10544%_
                                         _%start10554%_
                                         _%end10556%_))))
                              (let* ((_%g1071310757%_
                                      (lambda (_%g1071410753%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g1071410753%_)))
                                     (_%g1071210913%_
                                      (lambda (_%g1071410761%_)
                                        (if (gx#stx-pair? _%g1071410761%_)
                                            (let ((_%e1072210764%_
                                                   (gx#syntax-e
                                                    _%g1071410761%_)))
                                              (let ((_%hd1072310768%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1072210764%_)))
                                                    (_%tl1072410771%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1072210764%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1072410771%_)
                                                    (let ((_%e1072510774%_
                                                           (gx#syntax-e
                                                            _%tl1072410771%_)))
                                                      (let ((_%hd1072610778%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1072510774%_)))
                    (_%tl1072710781%_
                     (let () (declare (not safe)) (##cdr _%e1072510774%_))))
                (if (gx#stx-pair? _%tl1072710781%_)
                    (let ((_%e1072810784%_ (gx#syntax-e _%tl1072710781%_)))
                      (let ((_%hd1072910788%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1072810784%_)))
                            (_%tl1073010791%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1072810784%_))))
                        (if (gx#stx-pair? _%tl1073010791%_)
                            (let ((_%e1073110794%_
                                   (gx#syntax-e _%tl1073010791%_)))
                              (let ((_%hd1073210798%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1073110794%_)))
                                    (_%tl1073310801%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1073110794%_))))
                                (if (gx#stx-pair/null? _%hd1073210798%_)
                                    (let ((_g20925_
                                           (gx#syntax-split-splice
                                            _%hd1073210798%_
                                            '0)))
                                      (begin
                                        (let ((_g20926_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g20925_)
                                                     (##vector-length _g20925_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g20926_ 2)))
                                              (error "Context expects 2 values"
                                                     _g20926_)))
                                        (let ((_%target1073410804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g20925_ 0)))
                                              (_%tl1073610807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g20925_ 1))))
                                          (if (gx#stx-null? _%tl1073610807%_)
                                              (letrec ((_%loop1073710810%_
                                                        (lambda (_%hd1073510814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%dispatch1074110817%_)
                  (if (gx#stx-pair? _%hd1073510814%_)
                      (let ((_%e1073810820%_ (gx#syntax-e _%hd1073510814%_)))
                        (let ((_%lp-hd1073910824%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1073810820%_)))
                              (_%lp-tl1074010827%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1073810820%_))))
                          (_%loop1073710810%_
                           _%lp-tl1074010827%_
                           (cons _%lp-hd1073910824%_ _%dispatch1074110817%_))))
                      (let ((_%dispatch1074210830%_
                             (reverse _%dispatch1074110817%_)))
                        (if (gx#stx-pair? _%tl1073310801%_)
                            (let ((_%e1074310834%_
                                   (gx#syntax-e _%tl1073310801%_)))
                              (let ((_%hd1074410838%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1074310834%_)))
                                    (_%tl1074510841%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1074310834%_))))
                                (if (gx#stx-pair? _%tl1074510841%_)
                                    (let ((_%e1074610844%_
                                           (gx#syntax-e _%tl1074510841%_)))
                                      (let ((_%hd1074710848%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1074610844%_)))
                                            (_%tl1074810851%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1074610844%_))))
                                        (if (gx#stx-pair? _%tl1074810851%_)
                                            (let ((_%e1074910854%_
                                                   (gx#syntax-e
                                                    _%tl1074810851%_)))
                                              (let ((_%hd1075010858%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1074910854%_)))
                                                    (_%tl1075110861%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1074910854%_))))
                                                (if (gx#stx-null?
                                                     _%tl1075110861%_)
                                                    ((lambda (_%L10864%_
                                                              _%L10866%_
                                                              _%L10867%_
                                                              _%L10868%_
                                                              _%L10869%_
                                                              _%L10870%_
                                                              _%L10871%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons _%L10870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons '()
                                                         (cons _%L10867%_
                                                               '())))
                                             '()))
                                 (cons (cons _%L10869%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _%L10866%_ '()))
                                                   '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'char?)
                                                   (cons _%L10871%_ '()))
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
                                         (cons _%L10871%_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f '##fx<)
                                               (cons (gx#datum->syntax '#f 'ix)
                                                     (cons _%L10864%_ '())))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'x)
                         (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                     (cons _%L10869%_
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
                                                       (foldr (lambda (_%g1090410907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1090510910%_)
                        (cons _%g1090410907%_ _%g1090510910%_))
                      '()
                      _%L10868%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%L10870%_ '()) '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L10870%_ '())
                                                     '()))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _%L10870%_ '())
                                                         '()))))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd1075010858%_
                                                     _%hd1074710848%_
                                                     _%hd1074410838%_
                                                     _%dispatch1074210830%_
                                                     _%hd1072910788%_
                                                     _%hd1072610778%_
                                                     _%hd1072310768%_)
                                                    (_%g1071310757%_
                                                     _%g1071410761%_))))
                                            (_%g1071310757%_
                                             _%g1071410761%_))))
                                    (_%g1071310757%_ _%g1071410761%_))))
                            (_%g1071310757%_ _%g1071410761%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop1073710810%_
                                                 _%target1073410804%_
                                                 '()))
                                              (_%g1071310757%_
                                               _%g1071410761%_)))))
                                    (_%g1071310757%_ _%g1071410761%_))))
                            (_%g1071310757%_ _%g1071410761%_))))
                    (_%g1071310757%_ _%g1071410761%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1071310757%_
                                                     _%g1071410761%_))))
                                            (_%g1071310757%_
                                             _%g1071410761%_)))))
                                (_%g1071210913%_
                                 (list _%e10540%_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _%dispatch10543%_
                                       _%default10544%_
                                       _%tab10549%_
                                       (vector-length _%tab10549%_))))))
                        (_%generate-char-dispatch/hash9390%_
                         _%e10540%_
                         _%datums10542%_
                         _%dispatch10543%_
                         _%default10544%_))))
                 (_%generate-char-dispatch/hash9390%_
                  (lambda (_%e10318%_
                           _%datums10320%_
                           _%dispatch10321%_
                           _%default10322%_)
                    (let* ((_%indexes10324%_
                            (_%datum-dispatch-index9381%_ _%datums10320%_))
                           (_%tab10327%_
                            (_%generate-hash-dispatch-table9383%_
                             _%indexes10324%_
                             char->integer))
                           (_%g1033210376%_
                            (lambda (_%g1033310372%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1033310372%_)))
                           (_%g1033110536%_
                            (lambda (_%g1033310380%_)
                              (if (gx#stx-pair? _%g1033310380%_)
                                  (let ((_%e1034110383%_
                                         (gx#syntax-e _%g1033310380%_)))
                                    (let ((_%hd1034210387%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1034110383%_)))
                                          (_%tl1034310390%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1034110383%_))))
                                      (if (gx#stx-pair? _%tl1034310390%_)
                                          (let ((_%e1034410393%_
                                                 (gx#syntax-e
                                                  _%tl1034310390%_)))
                                            (let ((_%hd1034510397%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1034410393%_)))
                                                  (_%tl1034610400%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1034410393%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1034610400%_)
                                                  (let ((_%e1034710403%_
                                                         (gx#syntax-e
                                                          _%tl1034610400%_)))
                                                    (let ((_%hd1034810407%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1034710403%_)))
                                                          (_%tl1034910410%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1034710403%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1034910410%_)
                                                          (let ((_%e1035010413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1034910410%_)))
                    (let ((_%hd1035110417%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1035010413%_)))
                          (_%tl1035210420%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1035010413%_))))
                      (if (gx#stx-pair/null? _%hd1035110417%_)
                          (let ((_g20927_
                                 (gx#syntax-split-splice _%hd1035110417%_ '0)))
                            (begin
                              (let ((_g20928_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g20927_)
                                           (##vector-length _g20927_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g20928_ 2)))
                                    (error "Context expects 2 values"
                                           _g20928_)))
                              (let ((_%target1035310423%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g20927_ 0)))
                                    (_%tl1035510426%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g20927_ 1))))
                                (if (gx#stx-null? _%tl1035510426%_)
                                    (letrec ((_%loop1035610429%_
                                              (lambda (_%hd1035410433%_
                                                       _%dispatch1036010436%_)
                                                (if (gx#stx-pair?
                                                     _%hd1035410433%_)
                                                    (let ((_%e1035710439%_
                                                           (gx#syntax-e
                                                            _%hd1035410433%_)))
                                                      (let ((_%lp-hd1035810443%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1035710439%_)))
                    (_%lp-tl1035910446%_
                     (let () (declare (not safe)) (##cdr _%e1035710439%_))))
                (_%loop1035610429%_
                 _%lp-tl1035910446%_
                 (cons _%lp-hd1035810443%_ _%dispatch1036010436%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch1036110449%_
                                                           (reverse _%dispatch1036010436%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl1035210420%_)
                                                          (let ((_%e1036210453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1035210420%_)))
                    (let ((_%hd1036310457%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1036210453%_)))
                          (_%tl1036410460%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1036210453%_))))
                      (if (gx#stx-pair? _%tl1036410460%_)
                          (let ((_%e1036510463%_
                                 (gx#syntax-e _%tl1036410460%_)))
                            (let ((_%hd1036610467%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1036510463%_)))
                                  (_%tl1036710470%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1036510463%_))))
                              (if (gx#stx-pair? _%tl1036710470%_)
                                  (let ((_%e1036810473%_
                                         (gx#syntax-e _%tl1036710470%_)))
                                    (let ((_%hd1036910477%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1036810473%_)))
                                          (_%tl1037010480%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1036810473%_))))
                                      (if (gx#stx-null? _%tl1037010480%_)
                                          ((lambda (_%L10483%_
                                                    _%L10485%_
                                                    _%L10486%_
                                                    _%L10487%_
                                                    _%L10488%_
                                                    _%L10489%_
                                                    _%L10490%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L10489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%L10486%_ '())))
                                   '()))
                       (cons (cons _%L10488%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%L10485%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'char?)
                                         (cons _%L10490%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'h)
                         (cons (cons (gx#datum->syntax '#f '##char->integer)
                                     (cons _%L10490%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'ix)
                               (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                           (cons (gx#datum->syntax '#f 'h)
                                                 (cons _%L10483%_ '())))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'q)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##vector-ref)
                                                 (cons _%L10488%_
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
                     (cons _%L10490%_ '())))
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
                                             (foldr (lambda (_%g1052710530%_
                                                             _%g1052810533%_)
                                                      (cons _%g1052710530%_
                                                            _%g1052810533%_))
                                                    '()
                                                    _%L10487%_)))
                                 '())))
               (cons (cons _%L10489%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%L10489%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%L10489%_ '()) '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd1036910477%_
                                           _%hd1036610467%_
                                           _%hd1036310457%_
                                           _%dispatch1036110449%_
                                           _%hd1034810407%_
                                           _%hd1034510397%_
                                           _%hd1034210387%_)
                                          (_%g1033210376%_ _%g1033310380%_))))
                                  (_%g1033210376%_ _%g1033310380%_))))
                          (_%g1033210376%_ _%g1033310380%_))))
                  (_%g1033210376%_ _%g1033310380%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop1035610429%_
                                       _%target1035310423%_
                                       '()))
                                    (_%g1033210376%_ _%g1033310380%_)))))
                          (_%g1033210376%_ _%g1033310380%_))))
                  (_%g1033210376%_ _%g1033310380%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1033210376%_
                                                   _%g1033310380%_))))
                                          (_%g1033210376%_ _%g1033310380%_))))
                                  (_%g1033210376%_ _%g1033310380%_)))))
                      (_%g1033110536%_
                       (list _%e10318%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch10321%_
                             _%default10322%_
                             _%tab10327%_
                             (vector-length _%tab10327%_))))))
                 (_%min-fixnum9391%_
                  (lambda (_%datums10311%_)
                    (foldl (lambda (_%lst10314%_ _%r10316%_)
                             (foldl min _%r10316%_ _%lst10314%_))
                           ##max-fixnum
                           _%datums10311%_)))
                 (_%max-fixnum9392%_
                  (lambda (_%datums10304%_)
                    (foldl (lambda (_%lst10307%_ _%r10309%_)
                             (foldl max _%r10309%_ _%lst10307%_))
                           ##min-fixnum
                           _%datums10304%_)))
                 (_%generate-fixnum-dispatch-table9393%_
                  (lambda (_%indexes10286%_)
                    (let* ((_%ixs10289%_ (map car _%indexes10286%_))
                           (_%len10292%_ (fx1+ (foldl max '0 _%ixs10289%_)))
                           (_%vec10295%_ (make-vector _%len10292%_ '#f)))
                      (for-each
                       (lambda (_%entry10300%_ _%x10302%_)
                         (vector-set!
                          _%vec10295%_
                          _%x10302%_
                          (cdr _%entry10300%_)))
                       _%indexes10286%_
                       _%ixs10289%_)
                      _%vec10295%_)))
                 (_%generate-fixnum-dispatch9394%_
                  (lambda (_%e10020%_
                           _%datums10022%_
                           _%dispatch10023%_
                           _%default10024%_)
                    (if (and (>= (_%min-fixnum9391%_ _%datums10022%_) '0)
                             (< (_%max-fixnum9392%_ _%datums10022%_) '1024))
                        (let* ((_%indexes10026%_
                                (_%datum-dispatch-index9381%_ _%datums10022%_))
                               (_%tab10029%_
                                (_%generate-fixnum-dispatch-table9393%_
                                 _%indexes10026%_))
                               (_%dense?10032%_
                                (andmap values (vector->list _%tab10029%_)))
                               (_%g1003710081%_
                                (lambda (_%g1003810077%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1003810077%_)))
                               (_%g1003610282%_
                                (lambda (_%g1003810085%_)
                                  (if (gx#stx-pair? _%g1003810085%_)
                                      (let ((_%e1004610088%_
                                             (gx#syntax-e _%g1003810085%_)))
                                        (let ((_%hd1004710092%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1004610088%_)))
                                              (_%tl1004810095%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1004610088%_))))
                                          (if (gx#stx-pair? _%tl1004810095%_)
                                              (let ((_%e1004910098%_
                                                     (gx#syntax-e
                                                      _%tl1004810095%_)))
                                                (let ((_%hd1005010102%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1004910098%_)))
                                                      (_%tl1005110105%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1004910098%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1005110105%_)
                                                      (let ((_%e1005210108%_
                                                             (gx#syntax-e
                                                              _%tl1005110105%_)))
                                                        (let ((_%hd1005310112%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1005210108%_)))
                      (_%tl1005410115%_
                       (let () (declare (not safe)) (##cdr _%e1005210108%_))))
                  (if (gx#stx-pair? _%tl1005410115%_)
                      (let ((_%e1005510118%_ (gx#syntax-e _%tl1005410115%_)))
                        (let ((_%hd1005610122%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1005510118%_)))
                              (_%tl1005710125%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1005510118%_))))
                          (if (gx#stx-pair/null? _%hd1005610122%_)
                              (let ((_g20929_
                                     (gx#syntax-split-splice
                                      _%hd1005610122%_
                                      '0)))
                                (begin
                                  (let ((_g20930_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g20929_)
                                               (##vector-length _g20929_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g20930_ 2)))
                                        (error "Context expects 2 values"
                                               _g20930_)))
                                  (let ((_%target1005810128%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g20929_ 0)))
                                        (_%tl1006010131%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g20929_ 1))))
                                    (if (gx#stx-null? _%tl1006010131%_)
                                        (letrec ((_%loop1006110134%_
                                                  (lambda (_%hd1005910138%_
                                                           _%dispatch1006510141%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1005910138%_)
                                                        (let ((_%e1006210144%_
                                                               (gx#syntax-e
                                                                _%hd1005910138%_)))
                                                          (let ((_%lp-hd1006310148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1006210144%_)))
                        (_%lp-tl1006410151%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1006210144%_))))
                    (_%loop1006110134%_
                     _%lp-tl1006410151%_
                     (cons _%lp-hd1006310148%_ _%dispatch1006510141%_))))
                (let ((_%dispatch1006610154%_
                       (reverse _%dispatch1006510141%_)))
                  (if (gx#stx-pair? _%tl1005710125%_)
                      (let ((_%e1006710158%_ (gx#syntax-e _%tl1005710125%_)))
                        (let ((_%hd1006810162%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1006710158%_)))
                              (_%tl1006910165%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1006710158%_))))
                          (if (gx#stx-pair? _%tl1006910165%_)
                              (let ((_%e1007010168%_
                                     (gx#syntax-e _%tl1006910165%_)))
                                (let ((_%hd1007110172%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1007010168%_)))
                                      (_%tl1007210175%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1007010168%_))))
                                  (if (gx#stx-pair? _%tl1007210175%_)
                                      (let ((_%e1007310178%_
                                             (gx#syntax-e _%tl1007210175%_)))
                                        (let ((_%hd1007410182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1007310178%_)))
                                              (_%tl1007510185%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1007310178%_))))
                                          (if (gx#stx-null? _%tl1007510185%_)
                                              ((lambda (_%L10188%_
                                                        _%L10190%_
                                                        _%L10191%_
                                                        _%L10192%_
                                                        _%L10193%_
                                                        _%L10194%_
                                                        _%L10195%_)
                                                 (let* ((_%g1023410242%_
                                                         (lambda (_%g1023510238%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g1023510238%_)))
                                                        (_%g1023310262%_
                                                         (lambda (_%g1023510246%_)
                                                           ((lambda (_%L10249%_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'let)
                            (cons (cons (cons _%L10194%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons '()
                                                                (cons _%L10191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons _%L10193%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L10190%_ '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fixnum?)
                                                          (cons _%L10195%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons (cons (gx#datum->syntax '#f 'and)
                                    (cons (cons (gx#datum->syntax '#f '##fx>=)
                                                (cons _%L10195%_
                                                      (cons '0 '())))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx<)
                                                      (cons _%L10195%_
                                                            (cons _%L10188%_
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
                          (cons _%L10193%_ (cons _%L10195%_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%L10249%_ '())))
                                    (cons (cons _%L10194%_ '()) '()))))
                  (cons (cons _%L10194%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))
                    _%g1023510246%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g1023310262%_
                                                    (if _%dense?10032%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'x)
                            (foldr (lambda (_%g1026510268%_ _%g1026610271%_)
                                     (cons _%g1026510268%_ _%g1026610271%_))
                                   '()
                                   _%L10192%_)))
                (cons (gx#datum->syntax '#f 'if)
                      (cons (gx#datum->syntax '#f 'x)
                            (cons (cons (gx#datum->syntax '#f '~case-dispatch)
                                        (cons (gx#datum->syntax '#f 'x)
                                              (foldr (lambda (_%g1027310276%_
                                                              _%g1027410279%_)
                                                       (cons _%g1027310276%_
                                                             _%g1027410279%_))
                                                     '()
                                                     _%L10192%_)))
                                  (cons (cons _%L10194%_ '()) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1007410182%_
                                               _%hd1007110172%_
                                               _%hd1006810162%_
                                               _%dispatch1006610154%_
                                               _%hd1005310112%_
                                               _%hd1005010102%_
                                               _%hd1004710092%_)
                                              (_%g1003710081%_
                                               _%g1003810085%_))))
                                      (_%g1003710081%_ _%g1003810085%_))))
                              (_%g1003710081%_ _%g1003810085%_))))
                      (_%g1003710081%_ _%g1003810085%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop1006110134%_
                                           _%target1005810128%_
                                           '()))
                                        (_%g1003710081%_ _%g1003810085%_)))))
                              (_%g1003710081%_ _%g1003810085%_))))
                      (_%g1003710081%_ _%g1003810085%_))))
              (_%g1003710081%_ _%g1003810085%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1003710081%_
                                               _%g1003810085%_))))
                                      (_%g1003710081%_ _%g1003810085%_)))))
                          (_%g1003610282%_
                           (list _%e10020%_
                                 (gx#genident 'default)
                                 (gx#genident 'table)
                                 _%dispatch10023%_
                                 _%default10024%_
                                 _%tab10029%_
                                 (vector-length _%tab10029%_))))
                        (_%generate-fixnum-dispatch/hash9395%_
                         _%e10020%_
                         _%datums10022%_
                         _%dispatch10023%_
                         _%default10024%_))))
                 (_%generate-fixnum-dispatch/hash9395%_
                  (lambda (_%e9798%_
                           _%datums9800%_
                           _%dispatch9801%_
                           _%default9802%_)
                    (let* ((_%indexes9804%_
                            (_%datum-dispatch-index9381%_ _%datums9800%_))
                           (_%tab9807%_
                            (_%generate-hash-dispatch-table9383%_
                             _%indexes9804%_
                             values))
                           (_%g98129856%_
                            (lambda (_%g98139852%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g98139852%_)))
                           (_%g981110016%_
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
                          (let ((_g20931_
                                 (gx#syntax-split-splice _%hd98319897%_ '0)))
                            (begin
                              (let ((_g20932_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g20931_)
                                           (##vector-length _g20931_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g20932_ 2)))
                                    (error "Context expects 2 values"
                                           _g20932_)))
                              (let ((_%target98339903%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g20931_ 0)))
                                    (_%tl98359906%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g20931_ 1))))
                                (if (gx#stx-null? _%tl98359906%_)
                                    (letrec ((_%loop98369909%_
                                              (lambda (_%hd98349913%_
                                                       _%dispatch98409916%_)
                                                (if (gx#stx-pair?
                                                     _%hd98349913%_)
                                                    (let ((_%e98379919%_
                                                           (gx#syntax-e
                                                            _%hd98349913%_)))
                                                      (let ((_%lp-hd98389923%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e98379919%_)))
                    (_%lp-tl98399926%_
                     (let () (declare (not safe)) (##cdr _%e98379919%_))))
                (_%loop98369909%_
                 _%lp-tl98399926%_
                 (cons _%lp-hd98389923%_ _%dispatch98409916%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch98419929%_
                                                           (reverse _%dispatch98409916%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl98329900%_)
                                                          (let ((_%e98429933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl98329900%_)))
                    (let ((_%hd98439937%_
                           (let () (declare (not safe)) (##car _%e98429933%_)))
                          (_%tl98449940%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e98429933%_))))
                      (if (gx#stx-pair? _%tl98449940%_)
                          (let ((_%e98459943%_ (gx#syntax-e _%tl98449940%_)))
                            (let ((_%hd98469947%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e98459943%_)))
                                  (_%tl98479950%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e98459943%_))))
                              (if (gx#stx-pair? _%tl98479950%_)
                                  (let ((_%e98489953%_
                                         (gx#syntax-e _%tl98479950%_)))
                                    (let ((_%hd98499957%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e98489953%_)))
                                          (_%tl98509960%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e98489953%_))))
                                      (if (gx#stx-null? _%tl98509960%_)
                                          ((lambda (_%L9963%_
                                                    _%L9965%_
                                                    _%L9966%_
                                                    _%L9967%_
                                                    _%L9968%_
                                                    _%L9969%_
                                                    _%L9970%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L9969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%L9966%_ '())))
                                   '()))
                       (cons (cons _%L9968%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%L9965%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                         (cons _%L9970%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ix)
                         (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                     (cons _%L9970%_ (cons _%L9963%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'q)
                               (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                           (cons _%L9968%_
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
                     (cons _%L9970%_ '())))
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
                                             (foldr (lambda (_%g1000710010%_
                                                             _%g1000810013%_)
                                                      (cons _%g1000710010%_
                                                            _%g1000810013%_))
                                                    '()
                                                    _%L9967%_)))
                                 '())))
               (cons (cons _%L9969%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%L9969%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%L9969%_ '()) '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd98499957%_
                                           _%hd98469947%_
                                           _%hd98439937%_
                                           _%dispatch98419929%_
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
                      (_%g981110016%_
                       (list _%e9798%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch9801%_
                             _%default9802%_
                             _%tab9807%_
                             (vector-length _%tab9807%_))))))
                 (_%generate-generic-dispatch9396%_
                  (lambda (_%e9534%_
                           _%datums9536%_
                           _%dispatch9537%_
                           _%default9538%_)
                    (let ((_g20933_
                           (if (_%eq-datums?9379%_ _%datums9536%_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_%hash-e9540%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g20933_ 0)))
                              (_%hashf9542%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g20933_ 1)))
                              (_%eqf9543%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g20933_ 2))))
                          (let* ((_%indexes9545%_
                                  (_%datum-dispatch-index9381%_
                                   _%datums9536%_))
                                 (_%tab9548%_
                                  (_%generate-hash-dispatch-table9383%_
                                   _%indexes9545%_
                                   _%hash-e9540%_))
                                 (_%g95539605%_
                                  (lambda (_%g95549601%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g95549601%_)))
                                 (_%g95529794%_
                                  (lambda (_%g95549609%_)
                                    (if (gx#stx-pair? _%g95549609%_)
                                        (let ((_%e95649612%_
                                               (gx#syntax-e _%g95549609%_)))
                                          (let ((_%hd95659616%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e95649612%_)))
                                                (_%tl95669619%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e95649612%_))))
                                            (if (gx#stx-pair? _%tl95669619%_)
                                                (let ((_%e95679622%_
                                                       (gx#syntax-e
                                                        _%tl95669619%_)))
                                                  (let ((_%hd95689626%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e95679622%_)))
                                                        (_%tl95699629%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e95679622%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl95699629%_)
                                                        (let ((_%e95709632%_
                                                               (gx#syntax-e
                                                                _%tl95699629%_)))
                                                          (let ((_%hd95719636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e95709632%_)))
                        (_%tl95729639%_
                         (let () (declare (not safe)) (##cdr _%e95709632%_))))
                    (if (gx#stx-pair? _%tl95729639%_)
                        (let ((_%e95739642%_ (gx#syntax-e _%tl95729639%_)))
                          (let ((_%hd95749646%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e95739642%_)))
                                (_%tl95759649%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e95739642%_))))
                            (if (gx#stx-pair/null? _%hd95749646%_)
                                (let ((_g20934_
                                       (gx#syntax-split-splice
                                        _%hd95749646%_
                                        '0)))
                                  (begin
                                    (let ((_g20935_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g20934_)
                                                 (##vector-length _g20934_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g20935_ 2)))
                                          (error "Context expects 2 values"
                                                 _g20935_)))
                                    (let ((_%target95769652%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g20934_ 0)))
                                          (_%tl95789655%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g20934_ 1))))
                                      (if (gx#stx-null? _%tl95789655%_)
                                          (letrec ((_%loop95799658%_
                                                    (lambda (_%hd95779662%_
                                                             _%dispatch95839665%_)
                                                      (if (gx#stx-pair?
                                                           _%hd95779662%_)
                                                          (let ((_%e95809668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd95779662%_)))
                    (let ((_%lp-hd95819672%_
                           (let () (declare (not safe)) (##car _%e95809668%_)))
                          (_%lp-tl95829675%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e95809668%_))))
                      (_%loop95799658%_
                       _%lp-tl95829675%_
                       (cons _%lp-hd95819672%_ _%dispatch95839665%_))))
                  (let ((_%dispatch95849678%_ (reverse _%dispatch95839665%_)))
                    (if (gx#stx-pair? _%tl95759649%_)
                        (let ((_%e95859682%_ (gx#syntax-e _%tl95759649%_)))
                          (let ((_%hd95869686%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e95859682%_)))
                                (_%tl95879689%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e95859682%_))))
                            (if (gx#stx-pair? _%tl95879689%_)
                                (let ((_%e95889692%_
                                       (gx#syntax-e _%tl95879689%_)))
                                  (let ((_%hd95899696%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e95889692%_)))
                                        (_%tl95909699%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e95889692%_))))
                                    (if (gx#stx-pair? _%tl95909699%_)
                                        (let ((_%e95919702%_
                                               (gx#syntax-e _%tl95909699%_)))
                                          (let ((_%hd95929706%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e95919702%_)))
                                                (_%tl95939709%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e95919702%_))))
                                            (if (gx#stx-pair? _%tl95939709%_)
                                                (let ((_%e95949712%_
                                                       (gx#syntax-e
                                                        _%tl95939709%_)))
                                                  (let ((_%hd95959716%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e95949712%_)))
                                                        (_%tl95969719%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e95949712%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl95969719%_)
                                                        (let ((_%e95979722%_
                                                               (gx#syntax-e
                                                                _%tl95969719%_)))
                                                          (let ((_%hd95989726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e95979722%_)))
                        (_%tl95999729%_
                         (let () (declare (not safe)) (##cdr _%e95979722%_))))
                    (if (gx#stx-null? _%tl95999729%_)
                        ((lambda (_%L9732%_
                                  _%L9734%_
                                  _%L9735%_
                                  _%L9736%_
                                  _%L9737%_
                                  _%L9738%_
                                  _%L9739%_
                                  _%L9740%_
                                  _%L9741%_)
                           (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (cons _%L9740%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L9737%_ '())))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _%L9739%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _%L9736%_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'h)
                             (cons (cons _%L9734%_ (cons _%L9741%_ '())) '()))
                       (cons (cons (gx#datum->syntax '#f 'ix)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##fxmodulo)
                                               (cons (gx#datum->syntax '#f 'h)
                                                     (cons _%L9735%_ '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'q)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##vector-ref)
                                                     (cons _%L9739%_
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
                                               (cons (cons _%L9732%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##car)
                               (cons (gx#datum->syntax '#f 'q) '()))
                         (cons _%L9741%_ '())))
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
                _%L9738%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons _%L9740%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%L9740%_ '()) '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))
                         _%hd95989726%_
                         _%hd95959716%_
                         _%hd95929706%_
                         _%hd95899696%_
                         _%hd95869686%_
                         _%dispatch95849678%_
                         _%hd95719636%_
                         _%hd95689626%_
                         _%hd95659616%_)
                        (_%g95539605%_ _%g95549609%_))))
                (_%g95539605%_ _%g95549609%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g95539605%_
                                                 _%g95549609%_))))
                                        (_%g95539605%_ _%g95549609%_))))
                                (_%g95539605%_ _%g95549609%_))))
                        (_%g95539605%_ _%g95549609%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop95799658%_
                                             _%target95769652%_
                                             '()))
                                          (_%g95539605%_ _%g95549609%_)))))
                                (_%g95539605%_ _%g95549609%_))))
                        (_%g95539605%_ _%g95549609%_))))
                (_%g95539605%_ _%g95549609%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g95539605%_
                                                 _%g95549609%_))))
                                        (_%g95539605%_ _%g95549609%_)))))
                            (_%g95529794%_
                             (list _%e9534%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch9537%_
                                   _%default9538%_
                                   _%tab9548%_
                                   (vector-length _%tab9548%_)
                                   _%hashf9542%_
                                   _%eqf9543%_)))))))))
          (let* ((_%g93989422%_
                  (lambda (_%g93999418%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g93999418%_)))
                 (_%g93979530%_
                  (lambda (_%g93999426%_)
                    (if (gx#stx-pair? _%g93999426%_)
                        (let ((_%e94029429%_ (gx#syntax-e _%g93999426%_)))
                          (let ((_%hd94039433%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e94029429%_)))
                                (_%tl94049436%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e94029429%_))))
                            (if (gx#stx-pair? _%tl94049436%_)
                                (let ((_%e94059439%_
                                       (gx#syntax-e _%tl94049436%_)))
                                  (let ((_%hd94069443%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e94059439%_)))
                                        (_%tl94079446%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e94059439%_))))
                                    (if (gx#stx-pair/null? _%tl94079446%_)
                                        (let ((_g20936_
                                               (gx#syntax-split-splice
                                                _%tl94079446%_
                                                '0)))
                                          (begin
                                            (let ((_g20937_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g20936_)
                                                         (##vector-length
                                                          _g20936_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g20937_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g20937_)))
                                            (let ((_%target94089449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g20936_
                                                      0)))
                                                  (_%tl94109452%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g20936_
                                                      1))))
                                              (if (gx#stx-null? _%tl94109452%_)
                                                  (letrec ((_%loop94119455%_
                                                            (lambda (_%hd94099459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause94159462%_)
                      (if (gx#stx-pair? _%hd94099459%_)
                          (let ((_%e94129465%_ (gx#syntax-e _%hd94099459%_)))
                            (let ((_%lp-hd94139469%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e94129465%_)))
                                  (_%lp-tl94149472%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e94129465%_))))
                              (_%loop94119455%_
                               _%lp-tl94149472%_
                               (cons _%lp-hd94139469%_ _%clause94159462%_))))
                          (let ((_%clause94169475%_
                                 (reverse _%clause94159462%_)))
                            ((lambda (_%L9479%_ _%L9481%_)
                               (let ((_g20938_
                                      (_%parse-clauses9372%_
                                       _%L9481%_
                                       (foldr (lambda (_%g94999502%_
                                                       _%g95009505%_)
                                                (cons _%g94999502%_
                                                      _%g95009505%_))
                                              '()
                                              _%L9479%_))))
                                 (begin
                                   (let ((_g20939_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g20938_)
                                                (##vector-length _g20938_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g20939_ 3)))
                                         (error "Context expects 3 values"
                                                _g20939_)))
                                   (let ((_%datums9508%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g20938_ 0)))
                                         (_%dispatch9510%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g20938_ 1)))
                                         (_%default9511%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g20938_ 2))))
                                     (let ((_%datum-count9513%_
                                            (_%count-datums9375%_
                                             _%datums9508%_)))
                                       (if (< _%datum-count9513%_ '6)
                                           (_%generate-simple-case9380%_
                                            _%L9481%_
                                            _%datums9508%_
                                            _%dispatch9510%_
                                            _%default9511%_)
                                           (if (_%char-datums?9377%_
                                                _%datums9508%_)
                                               (_%generate-char-dispatch9389%_
                                                _%L9481%_
                                                _%datums9508%_
                                                _%dispatch9510%_
                                                _%default9511%_)
                                               (if (_%fixnum-datums?9378%_
                                                    _%datums9508%_)
                                                   (_%generate-fixnum-dispatch9394%_
                                                    _%L9481%_
                                                    _%datums9508%_
                                                    _%dispatch9510%_
                                                    _%default9511%_)
                                                   (if (< _%datum-count9513%_
                                                          '12)
                                                       (_%generate-simple-case9380%_
                                                        _%L9481%_
                                                        _%datums9508%_
                                                        _%dispatch9510%_
                                                        _%default9511%_)
                                                       (if (_%symbolic-datums?9376%_
                                                            _%datums9508%_)
                                                           (_%generate-symbolic-dispatch9384%_
                                                            _%L9481%_
                                                            _%datums9508%_
                                                            _%dispatch9510%_
                                                            _%default9511%_)
                                                           (_%generate-generic-dispatch9396%_
                                                            _%L9481%_
                                                            _%datums9508%_
                                                            _%dispatch9510%_
                                                            _%default9511%_)))))))))))
                             _%clause94169475%_
                             _%hd94069443%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop94119455%_
                                                     _%target94089449%_
                                                     '()))
                                                  (_%g93989422%_
                                                   _%g93999426%_)))))
                                        (_%g93989422%_ _%g93999426%_))))
                                (_%g93989422%_ _%g93999426%_))))
                        (_%g93989422%_ _%g93999426%_)))))
            (_%g93979530%_ _%stx9369%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-test|
      (lambda (_%stx12432%_)
        (let* ((_%g1243512453%_
                (lambda (_%g1243612449%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1243612449%_)))
               (_%g1243412525%_
                (lambda (_%g1243612457%_)
                  (if (gx#stx-pair? _%g1243612457%_)
                      (let ((_%e1243912460%_ (gx#syntax-e _%g1243612457%_)))
                        (let ((_%hd1244012464%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1243912460%_)))
                              (_%tl1244112467%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1243912460%_))))
                          (if (gx#stx-pair? _%tl1244112467%_)
                              (let ((_%e1244212470%_
                                     (gx#syntax-e _%tl1244112467%_)))
                                (let ((_%hd1244312474%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1244212470%_)))
                                      (_%tl1244412477%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1244212470%_))))
                                  (if (gx#stx-pair? _%tl1244412477%_)
                                      (let ((_%e1244512480%_
                                             (gx#syntax-e _%tl1244412477%_)))
                                        (let ((_%hd1244612484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1244512480%_)))
                                              (_%tl1244712487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1244512480%_))))
                                          (if (gx#stx-null? _%tl1244712487%_)
                                              ((lambda (_%L12490%_ _%L12492%_)
                                                 (let ((_%datum-e12508%_
                                                        (gx#stx-e _%L12492%_)))
                                                   (if (or (symbol? _%datum-e12508%_)
                                                           (keyword?
                                                            _%datum-e12508%_)
                                                           (immediate?
                                                            _%datum-e12508%_))
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%L12492%_ '()))
                           (cons _%L12490%_ '())))
               (if (number? _%datum-e12508%_)
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L12492%_ '()))
                               (cons _%L12490%_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L12492%_ '()))
                               (cons _%L12490%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1244612484%_
                                               _%hd1244312474%_)
                                              (_%g1243512453%_
                                               _%g1243612457%_))))
                                      (_%g1243512453%_ _%g1243612457%_))))
                              (_%g1243512453%_ _%g1243612457%_))))
                      (_%g1243512453%_ _%g1243612457%_)))))
          (_%g1243412525%_ _%stx12432%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch|
      (lambda (_%$stx12529%_)
        (let* ((_%g1253312557%_
                (lambda (_%g1253412553%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1253412553%_)))
               (_%g1253212642%_
                (lambda (_%g1253412561%_)
                  (if (gx#stx-pair? _%g1253412561%_)
                      (let ((_%e1253712564%_ (gx#syntax-e _%g1253412561%_)))
                        (let ((_%hd1253812568%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1253712564%_)))
                              (_%tl1253912571%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1253712564%_))))
                          (if (gx#stx-pair? _%tl1253912571%_)
                              (let ((_%e1254012574%_
                                     (gx#syntax-e _%tl1253912571%_)))
                                (let ((_%hd1254112578%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1254012574%_)))
                                      (_%tl1254212581%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1254012574%_))))
                                  (if (gx#stx-pair/null? _%tl1254212581%_)
                                      (let ((_g20940_
                                             (gx#syntax-split-splice
                                              _%tl1254212581%_
                                              '0)))
                                        (begin
                                          (let ((_g20941_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20940_)
                                                       (##vector-length
                                                        _g20940_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20941_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20941_)))
                                          (let ((_%target1254312584%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20940_ 0)))
                                                (_%tl1254512587%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20940_ 1))))
                                            (if (gx#stx-null? _%tl1254512587%_)
                                                (letrec ((_%loop1254612590%_
                                                          (lambda (_%hd1254412594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%K1255012597%_)
                    (if (gx#stx-pair? _%hd1254412594%_)
                        (let ((_%e1254712600%_ (gx#syntax-e _%hd1254412594%_)))
                          (let ((_%lp-hd1254812604%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1254712600%_)))
                                (_%lp-tl1254912607%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1254712600%_))))
                            (_%loop1254612590%_
                             _%lp-tl1254912607%_
                             (cons _%lp-hd1254812604%_ _%K1255012597%_))))
                        (let ((_%K1255112610%_ (reverse _%K1255012597%_)))
                          ((lambda (_%L12614%_ _%L12616%_)
                             (cons (gx#datum->syntax '#f '~case-dispatch*)
                                   (cons '0
                                         (cons _%L12616%_
                                               (foldr (lambda (_%g1263312636%_
                                                               _%g1263412639%_)
                                                        (cons _%g1263312636%_
                                                              _%g1263412639%_))
                                                      '()
                                                      _%L12614%_)))))
                           _%K1255112610%_
                           _%hd1254112578%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1254612590%_
                                                   _%target1254312584%_
                                                   '()))
                                                (_%g1253312557%_
                                                 _%g1253412561%_)))))
                                      (_%g1253312557%_ _%g1253412561%_))))
                              (_%g1253312557%_ _%g1253412561%_))))
                      (_%g1253312557%_ _%g1253412561%_)))))
          (_%g1253212642%_ _%$stx12529%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch*|
      (lambda (_%stx12647%_)
        (let* ((_%__stx1972019721%_ _%stx12647%_)
               (_%g1265412750%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1972019721%_))))
          (let ((_%__kont1972319724%_
                 (lambda (_%L13227%_ _%L13229%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons '#!void '()))))
                (_%__kont1972519726%_
                 (lambda (_%L13169%_ _%L13171%_ _%L13172%_) _%L13169%_))
                (_%__kont1972719728%_
                 (lambda (_%L13066%_ _%L13068%_ _%L13069%_ _%L13070%_)
                   (let* ((_%g1309113099%_
                           (lambda (_%g1309213095%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1309213095%_)))
                          (_%g1309013118%_
                           (lambda (_%g1309213103%_)
                             ((lambda (_%L13106%_)
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons _%L13069%_
                                                        (cons _%L13106%_ '())))
                                            (cons _%L13068%_
                                                  (cons _%L13066%_ '())))))
                              _%g1309213103%_))))
                     (_%g1309013118%_ (gx#stx-e _%L13070%_)))))
                (_%__kont1972919730%_
                 (lambda (_%L12916%_
                          _%L12918%_
                          _%L12919%_
                          _%L12920%_
                          _%L12921%_)
                   (let* ((_%g1294512960%_
                           (lambda (_%g1294612956%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1294612956%_)))
                          (_%g1294413005%_
                           (lambda (_%g1294612964%_)
                             (if (gx#stx-pair? _%g1294612964%_)
                                 (let ((_%e1294912967%_
                                        (gx#syntax-e _%g1294612964%_)))
                                   (let ((_%hd1295012971%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e1294912967%_)))
                                         (_%tl1295112974%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e1294912967%_))))
                                     (if (gx#stx-pair? _%tl1295112974%_)
                                         (let ((_%e1295212977%_
                                                (gx#syntax-e
                                                 _%tl1295112974%_)))
                                           (let ((_%hd1295312981%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e1295212977%_)))
                                                 (_%tl1295412984%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e1295212977%_))))
                                             (if (gx#stx-null?
                                                  _%tl1295412984%_)
                                                 ((lambda (_%L12987%_
                                                           _%L12989%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons _%L12920%_ (cons _%L12989%_ '())))
                        (cons _%L12919%_
                              (cons (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx=)
                                                      (cons _%L12920%_
                                                            (cons _%L12987%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%L12918%_
                                                      (cons _%L12916%_ '()))))
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd1295312981%_
                                                  _%hd1295012971%_)
                                                 (_%g1294512960%_
                                                  _%g1294612964%_))))
                                         (_%g1294512960%_ _%g1294612964%_))))
                                 (_%g1294512960%_ _%g1294612964%_)))))
                     (_%g1294413005%_
                      (list (gx#stx-e _%L12921%_)
                            (fx1+ (gx#stx-e _%L12921%_)))))))
                (_%__kont1973119732%_
                 (lambda (_%L12817%_ _%L12819%_ _%L12820%_)
                   (cons (gx#datum->syntax '#f '~case-dispatch-bsearch)
                         (cons _%L12820%_
                               (cons _%L12819%_
                                     (foldr (lambda (_%g1284012843%_
                                                     _%g1284112846%_)
                                              (cons _%g1284012843%_
                                                    _%g1284112846%_))
                                            '()
                                            _%L12817%_)))))))
            (let ((_%__match1987719878%_
                   (lambda (_%e1272712757%_
                            _%hd1272812761%_
                            _%tl1272912764%_
                            _%e1273012767%_
                            _%hd1273112771%_
                            _%tl1273212774%_
                            _%e1273312777%_
                            _%hd1273412781%_
                            _%tl1273512784%_
                            _%__splice1973319734%_
                            _%target1273612787%_
                            _%tl1273812790%_)
                     (letrec ((_%loop1273912793%_
                               (lambda (_%hd1273712797%_ _%K1274312800%_)
                                 (if (gx#stx-pair? _%hd1273712797%_)
                                     (let ((_%e1274012803%_
                                            (gx#syntax-e _%hd1273712797%_)))
                                       (let ((_%lp-tl1274212810%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1274012803%_)))
                                             (_%lp-hd1274112807%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1274012803%_))))
                                         (_%loop1273912793%_
                                          _%lp-tl1274212810%_
                                          (cons _%lp-hd1274112807%_
                                                _%K1274312800%_))))
                                     (let ((_%K1274412813%_
                                            (reverse _%K1274312800%_)))
                                       (_%__kont1973119732%_
                                        _%K1274412813%_
                                        _%hd1273412781%_
                                        _%hd1273112771%_))))))
                       (_%loop1273912793%_ _%target1273612787%_ '())))))
              (if (gx#stx-pair? _%__stx1972019721%_)
                  (let ((_%e1265813197%_ (gx#syntax-e _%__stx1972019721%_)))
                    (let ((_%tl1266013204%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1265813197%_)))
                          (_%hd1265913201%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1265813197%_))))
                      (if (gx#stx-pair? _%tl1266013204%_)
                          (let ((_%e1266113207%_
                                 (gx#syntax-e _%tl1266013204%_)))
                            (let ((_%tl1266313214%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1266113207%_)))
                                  (_%hd1266213211%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1266113207%_))))
                              (if (gx#stx-pair? _%tl1266313214%_)
                                  (let ((_%e1266413217%_
                                         (gx#syntax-e _%tl1266313214%_)))
                                    (let ((_%tl1266613224%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1266413217%_)))
                                          (_%hd1266513221%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1266413217%_))))
                                      (if (gx#stx-null? _%tl1266613224%_)
                                          (_%__kont1972319724%_
                                           _%hd1266513221%_
                                           _%hd1266213211%_)
                                          (if (gx#stx-pair? _%tl1266613224%_)
                                              (let ((_%e1267913159%_
                                                     (gx#syntax-e
                                                      _%tl1266613224%_)))
                                                (let ((_%tl1268113166%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1267913159%_)))
                                                      (_%hd1268013163%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1267913159%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1268113166%_)
                                                      (_%__kont1972519726%_
                                                       _%hd1268013163%_
                                                       _%hd1266513221%_
                                                       _%hd1266213211%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1268113166%_)
                                                          (let ((_%e1269813056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1268113166%_)))
                    (let ((_%tl1270013063%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1269813056%_)))
                          (_%hd1269913060%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1269813056%_))))
                      (if (gx#stx-null? _%tl1270013063%_)
                          (_%__kont1972719728%_
                           _%hd1269913060%_
                           _%hd1268013163%_
                           _%hd1266513221%_
                           _%hd1266213211%_)
                          (if (gx#stx-pair? _%tl1270013063%_)
                              (let ((_%e1272112906%_
                                     (gx#syntax-e _%tl1270013063%_)))
                                (let ((_%tl1272312913%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1272112906%_)))
                                      (_%hd1272212910%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1272112906%_))))
                                  (if (gx#stx-null? _%tl1272312913%_)
                                      (_%__kont1972919730%_
                                       _%hd1272212910%_
                                       _%hd1269913060%_
                                       _%hd1268013163%_
                                       _%hd1266513221%_
                                       _%hd1266213211%_)
                                      (if (gx#stx-pair/null? _%tl1266613224%_)
                                          (let ((_%__splice1973319734%_
                                                 (gx#syntax-split-splice
                                                  _%tl1266613224%_
                                                  '0)))
                                            (let ((_%tl1273812790%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1973319734%_
                                                      '1)))
                                                  (_%target1273612787%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1973319734%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1273812790%_)
                                                  (_%__match1987719878%_
                                                   _%e1265813197%_
                                                   _%hd1265913201%_
                                                   _%tl1266013204%_
                                                   _%e1266113207%_
                                                   _%hd1266213211%_
                                                   _%tl1266313214%_
                                                   _%e1266413217%_
                                                   _%hd1266513221%_
                                                   _%tl1266613224%_
                                                   _%__splice1973319734%_
                                                   _%target1273612787%_
                                                   _%tl1273812790%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1265412750%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1265412750%_))))))
                              (if (gx#stx-pair/null? _%tl1266613224%_)
                                  (let ((_%__splice1973319734%_
                                         (gx#syntax-split-splice
                                          _%tl1266613224%_
                                          '0)))
                                    (let ((_%tl1273812790%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1973319734%_
                                              '1)))
                                          (_%target1273612787%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1973319734%_
                                              '0))))
                                      (if (gx#stx-null? _%tl1273812790%_)
                                          (_%__match1987719878%_
                                           _%e1265813197%_
                                           _%hd1265913201%_
                                           _%tl1266013204%_
                                           _%e1266113207%_
                                           _%hd1266213211%_
                                           _%tl1266313214%_
                                           _%e1266413217%_
                                           _%hd1266513221%_
                                           _%tl1266613224%_
                                           _%__splice1973319734%_
                                           _%target1273612787%_
                                           _%tl1273812790%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g1265412750%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1265412750%_)))))))
                  (if (gx#stx-pair/null? _%tl1266613224%_)
                      (let ((_%__splice1973319734%_
                             (gx#syntax-split-splice _%tl1266613224%_ '0)))
                        (let ((_%tl1273812790%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1973319734%_ '1)))
                              (_%target1273612787%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1973319734%_ '0))))
                          (if (gx#stx-null? _%tl1273812790%_)
                              (_%__match1987719878%_
                               _%e1265813197%_
                               _%hd1265913201%_
                               _%tl1266013204%_
                               _%e1266113207%_
                               _%hd1266213211%_
                               _%tl1266313214%_
                               _%e1266413217%_
                               _%hd1266513221%_
                               _%tl1266613224%_
                               _%__splice1973319734%_
                               _%target1273612787%_
                               _%tl1273812790%_)
                              (let ()
                                (declare (not safe))
                                (_%g1265412750%_)))))
                      (let () (declare (not safe)) (_%g1265412750%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl1266613224%_)
                                                  (let ((_%__splice1973319734%_
                                                         (gx#syntax-split-splice
                                                          _%tl1266613224%_
                                                          '0)))
                                                    (let ((_%tl1273812790%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1973319734%_
                                                              '1)))
                                                          (_%target1273612787%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1973319734%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl1273812790%_)
                                                          (_%__match1987719878%_
                                                           _%e1265813197%_
                                                           _%hd1265913201%_
                                                           _%tl1266013204%_
                                                           _%e1266113207%_
                                                           _%hd1266213211%_
                                                           _%tl1266313214%_
                                                           _%e1266413217%_
                                                           _%hd1266513221%_
                                                           _%tl1266613224%_
                                                           _%__splice1973319734%_
                                                           _%target1273612787%_
                                                           _%tl1273812790%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g1265412750%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1265412750%_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1265412750%_)))))
                          (let () (declare (not safe)) (_%g1265412750%_)))))
                  (let () (declare (not safe)) (_%g1265412750%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch-bsearch|
      (lambda (_%stx13249%_)
        (letrec ((_%split13252%_
                  (lambda (_%lst13613%_ _%mid13615%_)
                    (let _%lp13617%_ ((_%i13620%_ '0)
                                      (_%rest13622%_ _%lst13613%_)
                                      (_%left13623%_ '()))
                      (if (fx< _%i13620%_ _%mid13615%_)
                          (_%lp13617%_
                           (fx1+ _%i13620%_)
                           (cdr _%rest13622%_)
                           (cons (car _%rest13622%_) _%left13623%_))
                          (values (reverse _%left13623%_) _%rest13622%_))))))
          (let* ((_%g1325513283%_
                  (lambda (_%g1325613279%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1325613279%_)))
                 (_%g1325413609%_
                  (lambda (_%g1325613287%_)
                    (if (gx#stx-pair? _%g1325613287%_)
                        (let ((_%e1326013290%_ (gx#syntax-e _%g1325613287%_)))
                          (let ((_%hd1326113294%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1326013290%_)))
                                (_%tl1326213297%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1326013290%_))))
                            (if (gx#stx-pair? _%tl1326213297%_)
                                (let ((_%e1326313300%_
                                       (gx#syntax-e _%tl1326213297%_)))
                                  (let ((_%hd1326413304%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1326313300%_)))
                                        (_%tl1326513307%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1326313300%_))))
                                    (if (gx#stx-pair? _%tl1326513307%_)
                                        (let ((_%e1326613310%_
                                               (gx#syntax-e _%tl1326513307%_)))
                                          (let ((_%hd1326713314%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1326613310%_)))
                                                (_%tl1326813317%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1326613310%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl1326813317%_)
                                                (let ((_g20942_
                                                       (gx#syntax-split-splice
                                                        _%tl1326813317%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20943_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20942_)
                         (##vector-length _g20942_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20943_ 2)))
                  (error "Context expects 2 values" _g20943_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target1326913320%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20942_
                                                              0)))
                                                          (_%tl1327113323%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20942_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl1327113323%_)
                                                          (letrec ((_%loop1327213326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd1327013330%_ _%K1327613333%_)
                              (if (gx#stx-pair? _%hd1327013330%_)
                                  (let ((_%e1327313336%_
                                         (gx#syntax-e _%hd1327013330%_)))
                                    (let ((_%lp-hd1327413340%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1327313336%_)))
                                          (_%lp-tl1327513343%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1327313336%_))))
                                      (_%loop1327213326%_
                                       _%lp-tl1327513343%_
                                       (cons _%lp-hd1327413340%_
                                             _%K1327613333%_))))
                                  (let ((_%K1327713346%_
                                         (reverse _%K1327613333%_)))
                                    ((lambda (_%L13350%_ _%L13352%_ _%L13353%_)
                                       (let* ((_%len13383%_
                                               (length (foldr (lambda (_%g1337413377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1337513380%_)
                        (cons _%g1337413377%_ _%g1337513380%_))
                      '()
                      _%L13350%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%mid13386%_
                                               (quotient _%len13383%_ '2))
                                              (_g20944_
                                               (_%split13252%_
                                                (foldr (lambda (_%g1338813391%_
                                                                _%g1338913394%_)
                                                         (cons _%g1338813391%_
                                                               _%g1338913394%_))
                                                       '()
                                                       _%L13350%_)
                                                _%mid13386%_)))
                                         (begin
                                           (let ((_g20945_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g20944_)
                                                        (##vector-length
                                                         _g20944_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g20945_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g20945_)))
                                           (let ((_%left13397%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g20944_ 0)))
                                                 (_%right13399%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g20944_
                                                     1))))
                                             (let* ((_%g1340313444%_
                                                     (lambda (_%g1340413440%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g1340413440%_)))
                                                    (_%g1340213605%_
                                                     (lambda (_%g1340413448%_)
                                                       (if (gx#stx-pair?
                                                            _%g1340413448%_)
                                                           (let ((_%e1340913451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g1340413448%_)))
                     (let ((_%hd1341013455%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1340913451%_)))
                           (_%tl1341113458%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1340913451%_))))
                       (if (gx#stx-pair? _%tl1341113458%_)
                           (let ((_%e1341213461%_
                                  (gx#syntax-e _%tl1341113458%_)))
                             (let ((_%hd1341313465%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1341213461%_)))
                                   (_%tl1341413468%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1341213461%_))))
                               (if (gx#stx-pair/null? _%hd1341313465%_)
                                   (let ((_g20946_
                                          (gx#syntax-split-splice
                                           _%hd1341313465%_
                                           '0)))
                                     (begin
                                       (let ((_g20947_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20946_)
                                                    (##vector-length _g20946_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20947_ 2)))
                                             (error "Context expects 2 values"
                                                    _g20947_)))
                                       (let ((_%target1341513471%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20946_ 0)))
                                             (_%tl1341713474%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20946_ 1))))
                                         (if (gx#stx-null? _%tl1341713474%_)
                                             (letrec ((_%loop1341813477%_
                                                       (lambda (_%hd1341613481%_
                                                                _%K-left1342213484%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1341613481%_)
                                                             (let ((_%e1341913487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1341613481%_)))
                       (let ((_%lp-hd1342013491%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1341913487%_)))
                             (_%lp-tl1342113494%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1341913487%_))))
                         (_%loop1341813477%_
                          _%lp-tl1342113494%_
                          (cons _%lp-hd1342013491%_ _%K-left1342213484%_))))
                     (let ((_%K-left1342313497%_
                            (reverse _%K-left1342213484%_)))
                       (if (gx#stx-pair? _%tl1341413468%_)
                           (let ((_%e1342413501%_
                                  (gx#syntax-e _%tl1341413468%_)))
                             (let ((_%hd1342513505%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1342413501%_)))
                                   (_%tl1342613508%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1342413501%_))))
                               (if (gx#stx-pair/null? _%hd1342513505%_)
                                   (let ((_g20948_
                                          (gx#syntax-split-splice
                                           _%hd1342513505%_
                                           '0)))
                                     (begin
                                       (let ((_g20949_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20948_)
                                                    (##vector-length _g20948_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20949_ 2)))
                                             (error "Context expects 2 values"
                                                    _g20949_)))
                                       (let ((_%target1342713511%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20948_ 0)))
                                             (_%tl1342913514%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20948_ 1))))
                                         (if (gx#stx-null? _%tl1342913514%_)
                                             (letrec ((_%loop1343013517%_
                                                       (lambda (_%hd1342813521%_
                                                                _%K-right1343413524%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1342813521%_)
                                                             (let ((_%e1343113527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1342813521%_)))
                       (let ((_%lp-hd1343213531%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1343113527%_)))
                             (_%lp-tl1343313534%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1343113527%_))))
                         (_%loop1343013517%_
                          _%lp-tl1343313534%_
                          (cons _%lp-hd1343213531%_ _%K-right1343413524%_))))
                     (let ((_%K-right1343513537%_
                            (reverse _%K-right1343413524%_)))
                       (if (gx#stx-pair? _%tl1342613508%_)
                           (let ((_%e1343613541%_
                                  (gx#syntax-e _%tl1342613508%_)))
                             (let ((_%hd1343713545%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1343613541%_)))
                                   (_%tl1343813548%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1343613541%_))))
                               (if (gx#stx-null? _%tl1343813548%_)
                                   ((lambda (_%L13551%_
                                             _%L13553%_
                                             _%L13554%_
                                             _%L13555%_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '##fx<)
                                                        (cons _%L13352%_
                                                              (cons _%L13551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch*)
                                                              (cons _%L13353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L13352%_
                                  (foldr (lambda (_%g1359013593%_
                                                  _%g1359113596%_)
                                           (cons _%g1359013593%_
                                                 _%g1359113596%_))
                                         '()
                                         _%L13554%_))))
                (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                            (cons _%L13551%_
                                  (cons _%L13352%_
                                        (foldr (lambda (_%g1358813599%_
                                                        _%g1358913602%_)
                                                 (cons _%g1358813599%_
                                                       _%g1358913602%_))
                                               '()
                                               _%L13553%_))))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%hd1343713545%_
                                    _%K-right1343513537%_
                                    _%K-left1342313497%_
                                    _%hd1341013455%_)
                                   (_%g1340313444%_ _%g1340413448%_))))
                           (_%g1340313444%_ _%g1340413448%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1343013517%_
                                                _%target1342713511%_
                                                '()))
                                             (_%g1340313444%_
                                              _%g1340413448%_)))))
                                   (_%g1340313444%_ _%g1340413448%_))))
                           (_%g1340313444%_ _%g1340413448%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1341813477%_
                                                _%target1341513471%_
                                                '()))
                                             (_%g1340313444%_
                                              _%g1340413448%_)))))
                                   (_%g1340313444%_ _%g1340413448%_))))
                           (_%g1340313444%_ _%g1340413448%_))))
                   (_%g1340313444%_ _%g1340413448%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g1340213605%_
                                                (list _%mid13386%_
                                                      _%left13397%_
                                                      _%right13399%_
                                                      (fx+ _%mid13386%_
                                                           (gx#stx-e
                                                            _%L13353%_)))))))))
                                     _%K1327713346%_
                                     _%hd1326713314%_
                                     _%hd1326413304%_))))))
                    (_%loop1327213326%_ _%target1326913320%_ '()))
                  (_%g1325513283%_ _%g1325613287%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1325513283%_
                                                 _%g1325613287%_))))
                                        (_%g1325513283%_ _%g1325613287%_))))
                                (_%g1325513283%_ _%g1325613287%_))))
                        (_%g1325513283%_ _%g1325613287%_)))))
            (_%g1325413609%_ _%stx13249%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#do|
      (lambda (_%$stx13629%_)
        (let* ((_%g1363313704%_
                (lambda (_%g1363413700%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1363413700%_)))
               (_%g1363213993%_
                (lambda (_%g1363413708%_)
                  (if (gx#stx-pair? _%g1363413708%_)
                      (let ((_%e1364113711%_ (gx#syntax-e _%g1363413708%_)))
                        (let ((_%hd1364213715%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1364113711%_)))
                              (_%tl1364313718%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1364113711%_))))
                          (if (gx#stx-pair? _%tl1364313718%_)
                              (let ((_%e1364413721%_
                                     (gx#syntax-e _%tl1364313718%_)))
                                (let ((_%hd1364513725%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1364413721%_)))
                                      (_%tl1364613728%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1364413721%_))))
                                  (if (gx#stx-pair/null? _%hd1364513725%_)
                                      (let ((_g20950_
                                             (gx#syntax-split-splice
                                              _%hd1364513725%_
                                              '0)))
                                        (begin
                                          (let ((_g20951_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20950_)
                                                       (##vector-length
                                                        _g20950_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20951_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20951_)))
                                          (let ((_%target1364713731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20950_ 0)))
                                                (_%tl1364913734%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20950_ 1))))
                                            (if (gx#stx-null? _%tl1364913734%_)
                                                (letrec ((_%loop1365013737%_
                                                          (lambda (_%hd1364813741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step1365413744%_
                           _%init1365513746%_
                           _%var1365613748%_)
                    (if (gx#stx-pair? _%hd1364813741%_)
                        (let ((_%e1365113751%_ (gx#syntax-e _%hd1364813741%_)))
                          (let ((_%lp-hd1365213755%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1365113751%_)))
                                (_%lp-tl1365313758%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1365113751%_))))
                            (if (gx#stx-pair? _%lp-hd1365213755%_)
                                (let ((_%e1368413761%_
                                       (gx#syntax-e _%lp-hd1365213755%_)))
                                  (let ((_%hd1368513765%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1368413761%_)))
                                        (_%tl1368613768%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1368413761%_))))
                                    (if (gx#stx-pair? _%tl1368613768%_)
                                        (let ((_%e1368713771%_
                                               (gx#syntax-e _%tl1368613768%_)))
                                          (let ((_%hd1368813775%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1368713771%_)))
                                                (_%tl1368913778%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1368713771%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl1368913778%_)
                                                (let ((_g20952_
                                                       (gx#syntax-split-splice
                                                        _%tl1368913778%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20953_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20952_)
                         (##vector-length _g20952_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20953_ 2)))
                  (error "Context expects 2 values" _g20953_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target1369013781%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20952_
                                                              0)))
                                                          (_%tl1369213784%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20952_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl1369213784%_)
                                                          (letrec ((_%loop1369313787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd1369113791%_ _%step1369713794%_)
                              (if (gx#stx-pair? _%hd1369113791%_)
                                  (let ((_%e1369413797%_
                                         (gx#syntax-e _%hd1369113791%_)))
                                    (let ((_%lp-hd1369513801%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1369413797%_)))
                                          (_%lp-tl1369613804%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1369413797%_))))
                                      (_%loop1369313787%_
                                       _%lp-tl1369613804%_
                                       (cons _%lp-hd1369513801%_
                                             _%step1369713794%_))))
                                  (let ((_%step1369813807%_
                                         (reverse _%step1369713794%_)))
                                    (_%loop1365013737%_
                                     _%lp-tl1365313758%_
                                     (cons _%step1369813807%_
                                           _%step1365413744%_)
                                     (cons _%hd1368813775%_ _%init1365513746%_)
                                     (cons _%hd1368513765%_
                                           _%var1365613748%_)))))))
                    (_%loop1369313787%_ _%target1369013781%_ '()))
                  (_%g1363313704%_ _%g1363413708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1363313704%_
                                                 _%g1363413708%_))))
                                        (_%g1363313704%_ _%g1363413708%_))))
                                (_%g1363313704%_ _%g1363413708%_))))
                        (let ((_%step1365713811%_ (reverse _%step1365413744%_))
                              (_%init1365813814%_ (reverse _%init1365513746%_))
                              (_%var1365913816%_ (reverse _%var1365613748%_)))
                          (if (gx#stx-pair? _%tl1364613728%_)
                              (let ((_%e1366013819%_
                                     (gx#syntax-e _%tl1364613728%_)))
                                (let ((_%hd1366113823%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1366013819%_)))
                                      (_%tl1366213826%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1366013819%_))))
                                  (if (gx#stx-pair? _%hd1366113823%_)
                                      (let ((_%e1366313829%_
                                             (gx#syntax-e _%hd1366113823%_)))
                                        (let ((_%hd1366413833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1366313829%_)))
                                              (_%tl1366513836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1366313829%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1366513836%_)
                                              (let ((_g20954_
                                                     (gx#syntax-split-splice
                                                      _%tl1366513836%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20955_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20954_)
                                                               (##vector-length
                                                                _g20954_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20955_ 2)))
                (error "Context expects 2 values" _g20955_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1366613839%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g20954_
                                                            0)))
                                                        (_%tl1366813842%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g20954_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1366813842%_)
                                                        (letrec ((_%loop1366913845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1366713849%_ _%fini1367313852%_)
                            (if (gx#stx-pair? _%hd1366713849%_)
                                (let ((_%e1367013855%_
                                       (gx#syntax-e _%hd1366713849%_)))
                                  (let ((_%lp-hd1367113859%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1367013855%_)))
                                        (_%lp-tl1367213862%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1367013855%_))))
                                    (_%loop1366913845%_
                                     _%lp-tl1367213862%_
                                     (cons _%lp-hd1367113859%_
                                           _%fini1367313852%_))))
                                (let ((_%fini1367413865%_
                                       (reverse _%fini1367313852%_)))
                                  (if (gx#stx-pair/null? _%tl1366213826%_)
                                      (let ((_g20956_
                                             (gx#syntax-split-splice
                                              _%tl1366213826%_
                                              '0)))
                                        (begin
                                          (let ((_g20957_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20956_)
                                                       (##vector-length
                                                        _g20956_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20957_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20957_)))
                                          (let ((_%target1367513869%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20956_ 0)))
                                                (_%tl1367713872%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20956_ 1))))
                                            (if (gx#stx-null? _%tl1367713872%_)
                                                (letrec ((_%loop1367813875%_
                                                          (lambda (_%hd1367613879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body1368213882%_)
                    (if (gx#stx-pair? _%hd1367613879%_)
                        (let ((_%e1367913885%_ (gx#syntax-e _%hd1367613879%_)))
                          (let ((_%lp-hd1368013889%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1367913885%_)))
                                (_%lp-tl1368113892%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1367913885%_))))
                            (_%loop1367813875%_
                             _%lp-tl1368113892%_
                             (cons _%lp-hd1368013889%_ _%body1368213882%_))))
                        (let ((_%body1368313895%_
                               (reverse _%body1368213882%_)))
                          ((lambda (_%L13899%_
                                    _%L13901%_
                                    _%L13902%_
                                    _%L13903%_
                                    _%L13904%_
                                    _%L13905%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g1393813941%_
                                                  _%g1393913944%_)
                                           (cons _%g1393813941%_
                                                 _%g1393913944%_))
                                         '()
                                         _%L13905%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%L13904%_
                                                      _%L13905%_)
                                                     (foldr (lambda (_%g1395513959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g1395613962%_
                             _%g1395713964%_)
                      (cons (cons _%g1395613962%_ (cons _%g1395513959%_ '()))
                            _%g1395713964%_))
                    '()
                    _%L13904%_
                    _%L13905%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _%L13902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_%g1395313967%_
                                                               _%g1395413970%_)
                                                        (cons _%g1395313967%_
                                                              _%g1395413970%_))
                                                      '()
                                                      _%L13901%_)))
                                   (cons (cons (gx#datum->syntax '#f 'begin)
                                               (foldr (lambda (_%g1394613973%_
                                                               _%g1394713976%_)
                                                        (cons _%g1394613973%_
                                                              _%g1394713976%_))
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$loop)
                          (begin
                            (gx#syntax-check-splice-targets
                             _%L13903%_
                             _%L13905%_)
                            (foldr (lambda (_%g1394813979%_
                                            _%g1394913982%_
                                            _%g1395013984%_)
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons _%g1394913982%_
                                                       (foldr (lambda (_%g1395113987%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1395213990%_)
                        (cons _%g1395113987%_ _%g1395213990%_))
                      '()
                      _%g1394813979%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g1395013984%_))
                                   '()
                                   _%L13903%_
                                   _%L13905%_)))
                    '())
              _%L13899%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g1363313704%_ _%g1363413708%_)))
                           _%body1368313895%_
                           _%fini1367413865%_
                           _%hd1366413833%_
                           _%step1365713811%_
                           _%init1365813814%_
                           _%var1365913816%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1367813875%_
                                                   _%target1367513869%_
                                                   '()))
                                                (_%g1363313704%_
                                                 _%g1363413708%_)))))
                                      (_%g1363313704%_ _%g1363413708%_)))))))
                  (_%loop1366913845%_ _%target1366613839%_ '()))
                (_%g1363313704%_ _%g1363413708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1363313704%_
                                               _%g1363413708%_))))
                                      (_%g1363313704%_ _%g1363413708%_))))
                              (_%g1363313704%_ _%g1363413708%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1365013737%_
                                                   _%target1364713731%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g1363313704%_
                                                 _%g1363413708%_)))))
                                      (_%g1363313704%_ _%g1363413708%_))))
                              (_%g1363313704%_ _%g1363413708%_))))
                      (_%g1363313704%_ _%g1363413708%_)))))
          (_%g1363213993%_ _%$stx13629%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#do-while|
      (lambda (_%$stx14001%_)
        (let* ((_%g1400514028%_
                (lambda (_%g1400614024%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1400614024%_)))
               (_%g1400414099%_
                (lambda (_%g1400614032%_)
                  (if (gx#stx-pair? _%g1400614032%_)
                      (let ((_%e1401114035%_ (gx#syntax-e _%g1400614032%_)))
                        (let ((_%hd1401214039%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1401114035%_)))
                              (_%tl1401314042%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1401114035%_))))
                          (if (gx#stx-pair? _%tl1401314042%_)
                              (let ((_%e1401414045%_
                                     (gx#syntax-e _%tl1401314042%_)))
                                (let ((_%hd1401514049%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1401414045%_)))
                                      (_%tl1401614052%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1401414045%_))))
                                  (if (gx#stx-pair? _%tl1401614052%_)
                                      (let ((_%e1401714055%_
                                             (gx#syntax-e _%tl1401614052%_)))
                                        (let ((_%hd1401814059%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1401714055%_)))
                                              (_%tl1401914062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1401714055%_))))
                                          (if (gx#stx-pair? _%hd1401814059%_)
                                              (let ((_%e1402014065%_
                                                     (gx#syntax-e
                                                      _%hd1401814059%_)))
                                                (let ((_%hd1402114069%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1402014065%_)))
                                                      (_%tl1402214072%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1402014065%_))))
                                                  ((lambda (_%L14075%_
                                                            _%L14077%_
                                                            _%L14078%_
                                                            _%L14079%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'do)
                                                           (cons _%L14079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (gx#datum->syntax '#f 'not)
                                           (cons _%L14078%_ '()))
                                     _%L14077%_)
                               _%L14075%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%tl1401914062%_
                                                   _%tl1402214072%_
                                                   _%hd1402114069%_
                                                   _%hd1401514049%_)))
                                              (_%g1400514028%_
                                               _%g1400614032%_))))
                                      (_%g1400514028%_ _%g1400614032%_))))
                              (_%g1400514028%_ _%g1400614032%_))))
                      (_%g1400514028%_ _%g1400614032%_)))))
          (_%g1400414099%_ _%$stx14001%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#begin0|
      (lambda (_%$stx14103%_)
        (let* ((_%__stx1988019881%_ _%$stx14103%_)
               (_%g1410814139%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1988019881%_))))
          (let ((_%__kont1988319884%_ (lambda (_%L14251%_) _%L14251%_))
                (_%__kont1988519886%_
                 (lambda (_%L14196%_ _%L14198%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$r)
                                     (cons _%L14198%_ '()))
                               (cons (cons (gx#datum->syntax '#f '%#expression)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1421514218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1421614221%_)
                        (cons _%g1421514218%_ _%g1421614221%_))
                      '()
                      _%L14196%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (gx#datum->syntax '#f '$r)
                                           '())))))))
            (let ((_%__match1992319924%_
                   (lambda (_%e1411914146%_
                            _%hd1412014150%_
                            _%tl1412114153%_
                            _%e1412214156%_
                            _%hd1412314160%_
                            _%tl1412414163%_
                            _%__splice1988719888%_
                            _%target1412514166%_
                            _%tl1412714169%_)
                     (letrec ((_%loop1412814172%_
                               (lambda (_%hd1412614176%_ _%rest1413214179%_)
                                 (if (gx#stx-pair? _%hd1412614176%_)
                                     (let ((_%e1412914182%_
                                            (gx#syntax-e _%hd1412614176%_)))
                                       (let ((_%lp-tl1413114189%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1412914182%_)))
                                             (_%lp-hd1413014186%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1412914182%_))))
                                         (_%loop1412814172%_
                                          _%lp-tl1413114189%_
                                          (cons _%lp-hd1413014186%_
                                                _%rest1413214179%_))))
                                     (let ((_%rest1413314192%_
                                            (reverse _%rest1413214179%_)))
                                       (_%__kont1988519886%_
                                        _%rest1413314192%_
                                        _%hd1412314160%_))))))
                       (_%loop1412814172%_ _%target1412514166%_ '())))))
              (if (gx#stx-pair? _%__stx1988019881%_)
                  (let ((_%e1411114231%_ (gx#syntax-e _%__stx1988019881%_)))
                    (let ((_%tl1411314238%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1411114231%_)))
                          (_%hd1411214235%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1411114231%_))))
                      (if (gx#stx-pair? _%tl1411314238%_)
                          (let ((_%e1411414241%_
                                 (gx#syntax-e _%tl1411314238%_)))
                            (let ((_%tl1411614248%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1411414241%_)))
                                  (_%hd1411514245%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1411414241%_))))
                              (if (gx#stx-null? _%tl1411614248%_)
                                  (_%__kont1988319884%_ _%hd1411514245%_)
                                  (if (gx#stx-pair/null? _%tl1411614248%_)
                                      (let ((_%__splice1988719888%_
                                             (gx#syntax-split-splice
                                              _%tl1411614248%_
                                              '0)))
                                        (let ((_%tl1412714169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1988719888%_
                                                  '1)))
                                              (_%target1412514166%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1988719888%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1412714169%_)
                                              (_%__match1992319924%_
                                               _%e1411114231%_
                                               _%hd1411214235%_
                                               _%tl1411314238%_
                                               _%e1411414241%_
                                               _%hd1411514245%_
                                               _%tl1411614248%_
                                               _%__splice1988719888%_
                                               _%target1412514166%_
                                               _%tl1412714169%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1410814139%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1410814139%_))))))
                          (let () (declare (not safe)) (_%g1410814139%_)))))
                  (let () (declare (not safe)) (_%g1410814139%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#rec|
      (lambda (_%$stx14269%_)
        (let* ((_%__stx1992619927%_ _%$stx14269%_)
               (_%g1427514328%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1992619927%_))))
          (let ((_%__kont1992919930%_
                 (lambda (_%L14530%_ _%L14532%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%L14532%_ (cons _%L14530%_ '()))
                                     '())
                               (cons _%L14532%_ '())))))
                (_%__kont1993119932%_
                 (lambda (_%L14474%_ _%L14476%_)
                   (cons (gx#datum->syntax '#f 'letrec-values)
                         (cons (cons (cons _%L14476%_ (cons _%L14474%_ '()))
                                     '())
                               (cons (cons (gx#datum->syntax '#f 'values)
                                           _%L14476%_)
                                     '())))))
                (_%__kont1993319934%_
                 (lambda (_%L14395%_ _%L14397%_ _%L14398%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%L14398%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons _%L14397%_
                                                             (foldr (lambda (_%g1441814421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1441914424%_)
                              (cons _%g1441814421%_ _%g1441914424%_))
                            '()
                            _%L14395%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons _%L14398%_ '()))))))
            (let* ((_%__match2001320014%_
                    (lambda (_%e1430514335%_
                             _%hd1430614339%_
                             _%tl1430714342%_
                             _%e1430814345%_
                             _%hd1430914349%_
                             _%tl1431014352%_
                             _%e1431114355%_
                             _%hd1431214359%_
                             _%tl1431314362%_
                             _%__splice1993519936%_
                             _%target1431414365%_
                             _%tl1431614368%_)
                      (letrec ((_%loop1431714371%_
                                (lambda (_%hd1431514375%_ _%body1432114378%_)
                                  (if (gx#stx-pair? _%hd1431514375%_)
                                      (let ((_%e1431814381%_
                                             (gx#syntax-e _%hd1431514375%_)))
                                        (let ((_%lp-tl1432014388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1431814381%_)))
                                              (_%lp-hd1431914385%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1431814381%_))))
                                          (_%loop1431714371%_
                                           _%lp-tl1432014388%_
                                           (cons _%lp-hd1431914385%_
                                                 _%body1432114378%_))))
                                      (let ((_%body1432214391%_
                                             (reverse _%body1432114378%_)))
                                        (let ((_%L14395%_ _%body1432214391%_)
                                              (_%L14397%_ _%tl1431314362%_)
                                              (_%L14398%_ _%hd1431214359%_))
                                          (if (gx#identifier? _%L14398%_)
                                              (_%__kont1993319934%_
                                               _%L14395%_
                                               _%L14397%_
                                               _%L14398%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1427514328%_)))))))))
                        (_%loop1431714371%_ _%target1431414365%_ '()))))
                   (_%__match1998719988%_
                    (lambda (_%e1429014434%_
                             _%hd1429114438%_
                             _%tl1429214441%_
                             _%e1429314444%_
                             _%hd1429414448%_
                             _%tl1429514451%_
                             _%e1429614454%_
                             _%hd1429714458%_
                             _%tl1429814461%_
                             _%e1429914464%_
                             _%hd1430014468%_
                             _%tl1430114471%_)
                      (let ((_%L14474%_ _%hd1430014468%_)
                            (_%L14476%_ _%tl1429814461%_))
                        (if (gx#identifier-list? _%L14476%_)
                            (_%__kont1993119932%_ _%L14474%_ _%L14476%_)
                            (if (gx#stx-pair/null? _%tl1429514451%_)
                                (let ((_%__splice1993519936%_
                                       (gx#syntax-split-splice
                                        _%tl1429514451%_
                                        '0)))
                                  (let ((_%tl1431614368%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1993519936%_
                                            '1)))
                                        (_%target1431414365%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1993519936%_
                                            '0))))
                                    (if (gx#stx-null? _%tl1431614368%_)
                                        (_%__match2001320014%_
                                         _%e1429014434%_
                                         _%hd1429114438%_
                                         _%tl1429214441%_
                                         _%e1429314444%_
                                         _%hd1429414448%_
                                         _%tl1429514451%_
                                         _%e1429614454%_
                                         _%hd1429714458%_
                                         _%tl1429814461%_
                                         _%__splice1993519936%_
                                         _%target1431414365%_
                                         _%tl1431614368%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1427514328%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1427514328%_)))))))
                   (_%__match1995719958%_
                    (lambda (_%e1427914500%_
                             _%hd1428014504%_
                             _%tl1428114507%_
                             _%e1428214510%_
                             _%hd1428314514%_
                             _%tl1428414517%_
                             _%e1428514520%_
                             _%hd1428614524%_
                             _%tl1428714527%_)
                      (let ((_%L14530%_ _%hd1428614524%_)
                            (_%L14532%_ _%hd1428314514%_))
                        (if (gx#identifier? _%L14532%_)
                            (_%__kont1992919930%_ _%L14530%_ _%L14532%_)
                            (if (gx#stx-pair? _%hd1428314514%_)
                                (let ((_%e1429614454%_
                                       (gx#syntax-e _%hd1428314514%_)))
                                  (let ((_%tl1429814461%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1429614454%_)))
                                        (_%hd1429714458%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1429614454%_))))
                                    (if (gx#identifier? _%hd1429714458%_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core/sugar~Sugar-2[1]#_g20958_|
                                             _%hd1429714458%_)
                                            (_%__match1998719988%_
                                             _%e1427914500%_
                                             _%hd1428014504%_
                                             _%tl1428114507%_
                                             _%e1428214510%_
                                             _%hd1428314514%_
                                             _%tl1428414517%_
                                             _%e1429614454%_
                                             _%hd1429714458%_
                                             _%tl1429814461%_
                                             _%e1428514520%_
                                             _%hd1428614524%_
                                             _%tl1428714527%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl1428414517%_)
                                                (let ((_%__splice1993519936%_
                                                       (gx#syntax-split-splice
                                                        _%tl1428414517%_
                                                        '0)))
                                                  (let ((_%tl1431614368%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1993519936%_
                                                            '1)))
                                                        (_%target1431414365%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1993519936%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl1431614368%_)
                                                        (_%__match2001320014%_
                                                         _%e1427914500%_
                                                         _%hd1428014504%_
                                                         _%tl1428114507%_
                                                         _%e1428214510%_
                                                         _%hd1428314514%_
                                                         _%tl1428414517%_
                                                         _%e1429614454%_
                                                         _%hd1429714458%_
                                                         _%tl1429814461%_
                                                         _%__splice1993519936%_
                                                         _%target1431414365%_
                                                         _%tl1431614368%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g1427514328%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1427514328%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl1428414517%_)
                                            (let ((_%__splice1993519936%_
                                                   (gx#syntax-split-splice
                                                    _%tl1428414517%_
                                                    '0)))
                                              (let ((_%tl1431614368%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1993519936%_
                                                        '1)))
                                                    (_%target1431414365%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1993519936%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1431614368%_)
                                                    (_%__match2001320014%_
                                                     _%e1427914500%_
                                                     _%hd1428014504%_
                                                     _%tl1428114507%_
                                                     _%e1428214510%_
                                                     _%hd1428314514%_
                                                     _%tl1428414517%_
                                                     _%e1429614454%_
                                                     _%hd1429714458%_
                                                     _%tl1429814461%_
                                                     _%__splice1993519936%_
                                                     _%target1431414365%_
                                                     _%tl1431614368%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1427514328%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g1427514328%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1427514328%_))))))))
              (if (gx#stx-pair? _%__stx1992619927%_)
                  (let ((_%e1427914500%_ (gx#syntax-e _%__stx1992619927%_)))
                    (let ((_%tl1428114507%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1427914500%_)))
                          (_%hd1428014504%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1427914500%_))))
                      (if (gx#stx-pair? _%tl1428114507%_)
                          (let ((_%e1428214510%_
                                 (gx#syntax-e _%tl1428114507%_)))
                            (let ((_%tl1428414517%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1428214510%_)))
                                  (_%hd1428314514%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1428214510%_))))
                              (if (gx#stx-pair? _%tl1428414517%_)
                                  (let ((_%e1428514520%_
                                         (gx#syntax-e _%tl1428414517%_)))
                                    (let ((_%tl1428714527%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1428514520%_)))
                                          (_%hd1428614524%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1428514520%_))))
                                      (if (gx#stx-null? _%tl1428714527%_)
                                          (_%__match1995719958%_
                                           _%e1427914500%_
                                           _%hd1428014504%_
                                           _%tl1428114507%_
                                           _%e1428214510%_
                                           _%hd1428314514%_
                                           _%tl1428414517%_
                                           _%e1428514520%_
                                           _%hd1428614524%_
                                           _%tl1428714527%_)
                                          (if (gx#stx-pair? _%hd1428314514%_)
                                              (let ((_%e1429614454%_
                                                     (gx#syntax-e
                                                      _%hd1428314514%_)))
                                                (let ((_%tl1429814461%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1429614454%_)))
                                                      (_%hd1429714458%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1429614454%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl1428414517%_)
                                                      (let ((_%__splice1993519936%_
                                                             (gx#syntax-split-splice
                                                              _%tl1428414517%_
                                                              '0)))
                                                        (let ((_%tl1431614368%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice1993519936%_ '1)))
                      (_%target1431414365%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice1993519936%_ '0))))
                  (if (gx#stx-null? _%tl1431614368%_)
                      (_%__match2001320014%_
                       _%e1427914500%_
                       _%hd1428014504%_
                       _%tl1428114507%_
                       _%e1428214510%_
                       _%hd1428314514%_
                       _%tl1428414517%_
                       _%e1429614454%_
                       _%hd1429714458%_
                       _%tl1429814461%_
                       _%__splice1993519936%_
                       _%target1431414365%_
                       _%tl1431614368%_)
                      (let () (declare (not safe)) (_%g1427514328%_)))))
              (let () (declare (not safe)) (_%g1427514328%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1427514328%_))))))
                                  (if (gx#stx-pair? _%hd1428314514%_)
                                      (let ((_%e1429614454%_
                                             (gx#syntax-e _%hd1428314514%_)))
                                        (let ((_%tl1429814461%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1429614454%_)))
                                              (_%hd1429714458%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1429614454%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1428414517%_)
                                              (let ((_%__splice1993519936%_
                                                     (gx#syntax-split-splice
                                                      _%tl1428414517%_
                                                      '0)))
                                                (let ((_%tl1431614368%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1993519936%_
                                                          '1)))
                                                      (_%target1431414365%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1993519936%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1431614368%_)
                                                      (_%__match2001320014%_
                                                       _%e1427914500%_
                                                       _%hd1428014504%_
                                                       _%tl1428114507%_
                                                       _%e1428214510%_
                                                       _%hd1428314514%_
                                                       _%tl1428414517%_
                                                       _%e1429614454%_
                                                       _%hd1429714458%_
                                                       _%tl1429814461%_
                                                       _%__splice1993519936%_
                                                       _%target1431414365%_
                                                       _%tl1431614368%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1427514328%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1427514328%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1427514328%_))))))
                          (let () (declare (not safe)) (_%g1427514328%_)))))
                  (let () (declare (not safe)) (_%g1427514328%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet|
      (lambda (_%stx14552%_)
        (letrec ((_%let-bind?14555%_
                  (lambda (_%x15478%_)
                    (let* ((_%__stx2001620017%_ _%x15478%_)
                           (_%g1548315502%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2001620017%_))))
                      (let ((_%__kont2001920020%_
                             (lambda (_%L15570%_ _%L15572%_)
                               (_%let-head?14558%_ _%L15572%_)))
                            (_%__kont2002120022%_ (lambda (_%L15530%_) '#t))
                            (_%__kont2002320024%_ (lambda () '#f)))
                        (if (gx#stx-pair? _%__stx2001620017%_)
                            (let ((_%e1548715550%_
                                   (gx#syntax-e _%__stx2001620017%_)))
                              (let ((_%tl1548915557%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1548715550%_)))
                                    (_%hd1548815554%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1548715550%_))))
                                (if (gx#stx-pair? _%tl1548915557%_)
                                    (let ((_%e1549015560%_
                                           (gx#syntax-e _%tl1548915557%_)))
                                      (let ((_%tl1549215567%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1549015560%_)))
                                            (_%hd1549115564%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1549015560%_))))
                                        (if (gx#stx-null? _%tl1549215567%_)
                                            (_%__kont2001920020%_
                                             _%hd1549115564%_
                                             _%hd1548815554%_)
                                            (_%__kont2002320024%_))))
                                    (if (gx#stx-null? _%tl1548915557%_)
                                        (_%__kont2002120022%_ _%hd1548815554%_)
                                        (_%__kont2002320024%_)))))
                            (_%__kont2002320024%_))))))
                 (_%let-bind14557%_
                  (lambda (_%x15380%_)
                    (let* ((_%__stx2005020051%_ _%x15380%_)
                           (_%g1538415403%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2005020051%_))))
                      (let ((_%__kont2005320054%_
                             (lambda (_%L15459%_ _%L15461%_) _%x15380%_))
                            (_%__kont2005520056%_
                             (lambda (_%L15420%_)
                               (cons (gx#datum->syntax '#f '_)
                                     (cons _%L15420%_ '())))))
                        (if (gx#stx-pair? _%__stx2005020051%_)
                            (let ((_%e1538815439%_
                                   (gx#syntax-e _%__stx2005020051%_)))
                              (let ((_%tl1539015446%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1538815439%_)))
                                    (_%hd1538915443%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1538815439%_))))
                                (if (gx#stx-pair? _%tl1539015446%_)
                                    (let ((_%e1539115449%_
                                           (gx#syntax-e _%tl1539015446%_)))
                                      (let ((_%tl1539315456%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1539115449%_)))
                                            (_%hd1539215453%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1539115449%_))))
                                        (if (gx#stx-null? _%tl1539315456%_)
                                            (_%__kont2005320054%_
                                             _%hd1539215453%_
                                             _%hd1538915443%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1538415403%_)))))
                                    (if (gx#stx-null? _%tl1539015446%_)
                                        (_%__kont2005520056%_ _%hd1538915443%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1538415403%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g1538415403%_)))))))
                 (_%let-head?14558%_
                  (lambda (_%x15320%_)
                    (let* ((_%__stx2008220083%_ _%x15320%_)
                           (_%g1532415335%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2008220083%_))))
                      (let ((_%__kont2008520086%_
                             (lambda (_%L15363%_)
                               (gx#stx-andmap gx#identifier? _%L15363%_)))
                            (_%__kont2008720088%_
                             (lambda () (gx#identifier? _%x15320%_))))
                        (if (gx#stx-pair? _%__stx2008220083%_)
                            (let ((_%e1532715353%_
                                   (gx#syntax-e _%__stx2008220083%_)))
                              (let ((_%tl1532915360%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1532715353%_)))
                                    (_%hd1532815357%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1532715353%_))))
                                (if (gx#identifier? _%hd1532815357%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g20959_|
                                         _%hd1532815357%_)
                                        (_%__kont2008520086%_ _%tl1532915360%_)
                                        (_%__kont2008720088%_))
                                    (_%__kont2008720088%_))))
                            (_%__kont2008720088%_))))))
                 (_%let-head14559%_
                  (lambda (_%x15260%_)
                    (let* ((_%__stx2010220103%_ _%x15260%_)
                           (_%g1526415275%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2010220103%_))))
                      (let ((_%__kont2010520106%_
                             (lambda (_%L15303%_) _%L15303%_))
                            (_%__kont2010720108%_
                             (lambda () (list _%x15260%_))))
                        (if (gx#stx-pair? _%__stx2010220103%_)
                            (let ((_%e1526715293%_
                                   (gx#syntax-e _%__stx2010220103%_)))
                              (let ((_%tl1526915300%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1526715293%_)))
                                    (_%hd1526815297%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1526715293%_))))
                                (if (gx#identifier? _%hd1526815297%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g20960_|
                                         _%hd1526815297%_)
                                        (_%__kont2010520106%_ _%tl1526915300%_)
                                        (_%__kont2010720108%_))
                                    (_%__kont2010720108%_))))
                            (_%__kont2010720108%_)))))))
          (let* ((_%__stx2012220123%_ _%stx14552%_)
                 (_%g1456314635%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2012220123%_))))
            (let ((_%__kont2012520126%_
                   (lambda (_%L15233%_ _%L15235%_ _%L15236%_ _%L15237%_)
                     (cons _%L15237%_
                           (cons (cons (cons _%L15236%_ (cons _%L15235%_ '()))
                                       '())
                                 _%L15233%_))))
                  (_%__kont2012720128%_
                   (lambda (_%L15155%_ _%L15157%_)
                     (cons (gx#datum->syntax '#f 'and)
                           (cons _%L15157%_
                                 (cons (cons (gx#datum->syntax '#f 'let)
                                             (cons '()
                                                   (foldr (lambda (_%g1517715180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1517815183%_)
                    (cons _%g1517715180%_ _%g1517815183%_))
                  '()
                  _%L15155%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                  (_%__kont2013120132%_
                   (lambda (_%L14722%_ _%L14724%_)
                     (let* ((_%g1475514781%_
                             (lambda (_%g1475614777%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g1475614777%_)))
                            (_%g1475415066%_
                             (lambda (_%g1475614785%_)
                               (if (gx#stx-pair/null? _%g1475614785%_)
                                   (let ((_g20961_
                                          (gx#syntax-split-splice
                                           _%g1475614785%_
                                           '0)))
                                     (begin
                                       (let ((_g20962_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20961_)
                                                    (##vector-length _g20961_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20962_ 2)))
                                             (error "Context expects 2 values"
                                                    _g20962_)))
                                       (let ((_%target1475914788%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20961_ 0)))
                                             (_%tl1476114791%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20961_ 1))))
                                         (if (gx#stx-null? _%tl1476114791%_)
                                             (letrec ((_%loop1476214794%_
                                                       (lambda (_%hd1476014798%_
                                                                _%e1476614801%_
                                                                _%hd1476714803%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1476014798%_)
                                                             (let ((_%e1476314806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1476014798%_)))
                       (let ((_%lp-hd1476414810%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1476314806%_)))
                             (_%lp-tl1476514813%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1476314806%_))))
                         (if (gx#stx-pair? _%lp-hd1476414810%_)
                             (let ((_%e1477014816%_
                                    (gx#syntax-e _%lp-hd1476414810%_)))
                               (let ((_%hd1477114820%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1477014816%_)))
                                     (_%tl1477214823%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1477014816%_))))
                                 (if (gx#stx-pair? _%tl1477214823%_)
                                     (let ((_%e1477314826%_
                                            (gx#syntax-e _%tl1477214823%_)))
                                       (let ((_%hd1477414830%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1477314826%_)))
                                             (_%tl1477514833%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1477314826%_))))
                                         (if (gx#stx-null? _%tl1477514833%_)
                                             (_%loop1476214794%_
                                              _%lp-tl1476514813%_
                                              (cons _%hd1477414830%_
                                                    _%e1476614801%_)
                                              (cons _%hd1477114820%_
                                                    _%hd1476714803%_))
                                             (_%g1475514781%_
                                              _%g1475614785%_))))
                                     (_%g1475514781%_ _%g1475614785%_))))
                             (_%g1475514781%_ _%g1475614785%_))))
                     (let ((_%e1476814836%_ (reverse _%e1476614801%_))
                           (_%hd1476914839%_ (reverse _%hd1476714803%_)))
                       ((lambda (_%L14842%_ _%L14844%_)
                          (let* ((_%g1486014877%_
                                  (lambda (_%g1486114873%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1486114873%_)))
                                 (_%g1485915054%_
                                  (lambda (_%g1486114881%_)
                                    (if (gx#stx-pair/null? _%g1486114881%_)
                                        (let ((_g20963_
                                               (gx#syntax-split-splice
                                                _%g1486114881%_
                                                '0)))
                                          (begin
                                            (let ((_g20964_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g20963_)
                                                         (##vector-length
                                                          _g20963_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g20964_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g20964_)))
                                            (let ((_%target1486314884%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g20963_
                                                      0)))
                                                  (_%tl1486514887%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g20963_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl1486514887%_)
                                                  (letrec ((_%loop1486614890%_
                                                            (lambda (_%hd1486414894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$e1487014897%_)
                      (if (gx#stx-pair? _%hd1486414894%_)
                          (let ((_%e1486714900%_
                                 (gx#syntax-e _%hd1486414894%_)))
                            (let ((_%lp-hd1486814904%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1486714900%_)))
                                  (_%lp-tl1486914907%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1486714900%_))))
                              (_%loop1486614890%_
                               _%lp-tl1486914907%_
                               (cons _%lp-hd1486814904%_ _%$e1487014897%_))))
                          (let ((_%$e1487114910%_ (reverse _%$e1487014897%_)))
                            ((lambda (_%L14914%_)
                               (let* ((_%g1493114948%_
                                       (lambda (_%g1493214944%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1493214944%_)))
                                      (_%g1493015042%_
                                       (lambda (_%g1493214952%_)
                                         (if (gx#stx-pair/null?
                                              _%g1493214952%_)
                                             (let ((_g20965_
                                                    (gx#syntax-split-splice
                                                     _%g1493214952%_
                                                     '0)))
                                               (begin
                                                 (let ((_g20966_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g20965_)
                                                              (##vector-length
                                                               _g20965_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g20966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g20966_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target1493414955%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g20965_
                                                           0)))
                                                       (_%tl1493614958%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g20965_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl1493614958%_)
                                                       (letrec ((_%loop1493714961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd1493514965%_ _%hd-bind1494114968%_)
                           (if (gx#stx-pair? _%hd1493514965%_)
                               (let ((_%e1493814971%_
                                      (gx#syntax-e _%hd1493514965%_)))
                                 (let ((_%lp-hd1493914975%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1493814971%_)))
                                       (_%lp-tl1494014978%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1493814971%_))))
                                   (_%loop1493714961%_
                                    _%lp-tl1494014978%_
                                    (cons _%lp-hd1493914975%_
                                          _%hd-bind1494114968%_))))
                               (let ((_%hd-bind1494214981%_
                                      (reverse _%hd-bind1494114968%_)))
                                 ((lambda (_%L14985%_)
                                    (cons (gx#datum->syntax '#f 'let-values)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%L14842%_
                                                   _%L14914%_)
                                                  (foldr (lambda (_%g1501015014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1501115017%_
                          _%g1501215019%_)
                   (cons (cons (cons _%g1501115017%_ '())
                               (cons _%g1501015014%_ '()))
                         _%g1501215019%_))
                 '()
                 _%L14842%_
                 _%L14914%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'and)
                                                            (foldr (lambda (_%g1500315022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1500415025%_)
                             (cons _%g1500315022%_ _%g1500415025%_))
                           (cons (cons (gx#datum->syntax '#f 'let-values)
                                       (cons (begin
                                               (gx#syntax-check-splice-targets
                                                _%L14914%_
                                                _%L14985%_)
                                               (foldr (lambda (_%g1500715028%_
                                                               _%g1500815031%_
                                                               _%g1500915033%_)
                                                        (cons (cons _%g1500815031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g1500715028%_ '()))
                      _%g1500915033%_))
              '()
              _%L14914%_
              _%L14985%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (foldr (lambda (_%g1500515036%_
                                                             _%g1500615039%_)
                                                      (cons _%g1500515036%_
                                                            _%g1500615039%_))
                                                    '()
                                                    _%L14722%_)))
                                 '())
                           _%L14914%_))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%hd-bind1494214981%_))))))
                 (_%loop1493714961%_ _%target1493414955%_ '()))
               (_%g1493114948%_ _%g1493214952%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g1493114948%_
                                              _%g1493214952%_)))))
                                 (_%g1493015042%_
                                  (gx#stx-map
                                   _%let-head14559%_
                                   (foldr (lambda (_%g1504515048%_
                                                   _%g1504615051%_)
                                            (cons _%g1504515048%_
                                                  _%g1504615051%_))
                                          '()
                                          _%L14844%_)))))
                             _%$e1487114910%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop1486614890%_
                                                     _%target1486314884%_
                                                     '()))
                                                  (_%g1486014877%_
                                                   _%g1486114881%_)))))
                                        (_%g1486014877%_ _%g1486114881%_)))))
                            (_%g1485915054%_
                             (gx#gentemps
                              (foldr (lambda (_%g1505715060%_ _%g1505815063%_)
                                       (cons _%g1505715060%_ _%g1505815063%_))
                                     '()
                                     _%L14844%_)))))
                        _%e1476814836%_
                        _%hd1476914839%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1476214794%_
                                                _%target1475914788%_
                                                '()
                                                '()))
                                             (_%g1475514781%_
                                              _%g1475614785%_)))))
                                   (_%g1475514781%_ _%g1475614785%_)))))
                       (_%g1475415066%_
                        (gx#stx-map
                         _%let-bind14557%_
                         (foldr (lambda (_%g1506915072%_ _%g1507015075%_)
                                  (cons _%g1506915072%_ _%g1507015075%_))
                                '()
                                _%L14724%_)))))))
              (let* ((_%__match2021920220%_
                      (lambda (_%e1460614642%_
                               _%hd1460714646%_
                               _%tl1460814649%_
                               _%e1460914652%_
                               _%hd1461014656%_
                               _%tl1461114659%_
                               _%__splice2013320134%_
                               _%target1461214662%_
                               _%tl1461414665%_)
                        (letrec ((_%loop1461514668%_
                                  (lambda (_%hd1461314672%_ _%bind1461914675%_)
                                    (if (gx#stx-pair? _%hd1461314672%_)
                                        (let ((_%e1461614678%_
                                               (gx#syntax-e _%hd1461314672%_)))
                                          (let ((_%lp-tl1461814685%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1461614678%_)))
                                                (_%lp-hd1461714682%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1461614678%_))))
                                            (_%loop1461514668%_
                                             _%lp-tl1461814685%_
                                             (cons _%lp-hd1461714682%_
                                                   _%bind1461914675%_))))
                                        (let ((_%bind1462014688%_
                                               (reverse _%bind1461914675%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl1461114659%_)
                                              (let ((_%__splice2013520136%_
                                                     (gx#syntax-split-splice
                                                      _%tl1461114659%_
                                                      '0)))
                                                (let ((_%tl1462314695%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2013520136%_
                                                          '1)))
                                                      (_%target1462114692%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2013520136%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1462314695%_)
                                                      (letrec ((_%loop1462414698%_
                                                                (lambda (_%hd1462214702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body1462814705%_)
                          (if (gx#stx-pair? _%hd1462214702%_)
                              (let ((_%e1462514708%_
                                     (gx#syntax-e _%hd1462214702%_)))
                                (let ((_%lp-tl1462714715%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1462514708%_)))
                                      (_%lp-hd1462614712%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1462514708%_))))
                                  (_%loop1462414698%_
                                   _%lp-tl1462714715%_
                                   (cons _%lp-hd1462614712%_
                                         _%body1462814705%_))))
                              (let ((_%body1462914718%_
                                     (reverse _%body1462814705%_)))
                                (let ((_%L14722%_ _%body1462914718%_)
                                      (_%L14724%_ _%bind1462014688%_))
                                  (if (gx#stx-andmap
                                       _%let-bind?14555%_
                                       (foldr (lambda (_%g1474614749%_
                                                       _%g1474714752%_)
                                                (cons _%g1474614749%_
                                                      _%g1474714752%_))
                                              '()
                                              _%L14724%_))
                                      (_%__kont2013120132%_
                                       _%L14722%_
                                       _%L14724%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g1456314635%_)))))))))
                (_%loop1462414698%_ _%target1462114692%_ '()))
              (let () (declare (not safe)) (_%g1456314635%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1456314635%_))))))))
                          (_%loop1461514668%_ _%target1461214662%_ '()))))
                     (_%__match2019920200%_
                      (lambda (_%e1458315085%_
                               _%hd1458415089%_
                               _%tl1458515092%_
                               _%e1458615095%_
                               _%hd1458715099%_
                               _%tl1458815102%_
                               _%e1458915105%_
                               _%hd1459015109%_
                               _%tl1459115112%_
                               _%e1459215115%_
                               _%hd1459315119%_
                               _%tl1459415122%_
                               _%__splice2012920130%_
                               _%target1459515125%_
                               _%tl1459715128%_)
                        (letrec ((_%loop1459815131%_
                                  (lambda (_%hd1459615135%_ _%body1460215138%_)
                                    (if (gx#stx-pair? _%hd1459615135%_)
                                        (let ((_%e1459915141%_
                                               (gx#syntax-e _%hd1459615135%_)))
                                          (let ((_%lp-tl1460115148%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1459915141%_)))
                                                (_%lp-hd1460015145%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1459915141%_))))
                                            (_%loop1459815131%_
                                             _%lp-tl1460115148%_
                                             (cons _%lp-hd1460015145%_
                                                   _%body1460215138%_))))
                                        (let ((_%body1460315151%_
                                               (reverse _%body1460215138%_)))
                                          (_%__kont2012720128%_
                                           _%body1460315151%_
                                           _%hd1459315119%_))))))
                          (_%loop1459815131%_ _%target1459515125%_ '()))))
                     (_%__match2016320164%_
                      (lambda (_%e1456915193%_
                               _%hd1457015197%_
                               _%tl1457115200%_
                               _%e1457215203%_
                               _%hd1457315207%_
                               _%tl1457415210%_
                               _%e1457515213%_
                               _%hd1457615217%_
                               _%tl1457715220%_
                               _%e1457815223%_
                               _%hd1457915227%_
                               _%tl1458015230%_)
                        (let ((_%L15233%_ _%tl1457415210%_)
                              (_%L15235%_ _%hd1457915227%_)
                              (_%L15236%_ _%hd1457615217%_)
                              (_%L15237%_ _%hd1457015197%_))
                          (if (_%let-head?14558%_ _%L15236%_)
                              (_%__kont2012520126%_
                               _%L15233%_
                               _%L15235%_
                               _%L15236%_
                               _%L15237%_)
                              (if (gx#stx-pair? _%hd1457615217%_)
                                  (let ((_%e1459215115%_
                                         (gx#syntax-e _%hd1457615217%_)))
                                    (let ((_%tl1459415122%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1459215115%_)))
                                          (_%hd1459315119%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1459215115%_))))
                                      (if (gx#stx-pair/null? _%hd1457315207%_)
                                          (let ((_%__splice2013320134%_
                                                 (gx#syntax-split-splice
                                                  _%hd1457315207%_
                                                  '0)))
                                            (let ((_%tl1461414665%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2013320134%_
                                                      '1)))
                                                  (_%target1461214662%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2013320134%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1461414665%_)
                                                  (_%__match2021920220%_
                                                   _%e1456915193%_
                                                   _%hd1457015197%_
                                                   _%tl1457115200%_
                                                   _%e1457215203%_
                                                   _%hd1457315207%_
                                                   _%tl1457415210%_
                                                   _%__splice2013320134%_
                                                   _%target1461214662%_
                                                   _%tl1461414665%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1456314635%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1456314635%_)))))
                                  (if (gx#stx-pair/null? _%hd1457315207%_)
                                      (let ((_%__splice2013320134%_
                                             (gx#syntax-split-splice
                                              _%hd1457315207%_
                                              '0)))
                                        (let ((_%tl1461414665%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2013320134%_
                                                  '1)))
                                              (_%target1461214662%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2013320134%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1461414665%_)
                                              (_%__match2021920220%_
                                               _%e1456915193%_
                                               _%hd1457015197%_
                                               _%tl1457115200%_
                                               _%e1457215203%_
                                               _%hd1457315207%_
                                               _%tl1457415210%_
                                               _%__splice2013320134%_
                                               _%target1461214662%_
                                               _%tl1461414665%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1456314635%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1456314635%_)))))))))
                (if (gx#stx-pair? _%__stx2012220123%_)
                    (let ((_%e1456915193%_ (gx#syntax-e _%__stx2012220123%_)))
                      (let ((_%tl1457115200%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1456915193%_)))
                            (_%hd1457015197%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1456915193%_))))
                        (if (gx#stx-pair? _%tl1457115200%_)
                            (let ((_%e1457215203%_
                                   (gx#syntax-e _%tl1457115200%_)))
                              (let ((_%tl1457415210%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1457215203%_)))
                                    (_%hd1457315207%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1457215203%_))))
                                (if (gx#stx-pair? _%hd1457315207%_)
                                    (let ((_%e1457515213%_
                                           (gx#syntax-e _%hd1457315207%_)))
                                      (let ((_%tl1457715220%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1457515213%_)))
                                            (_%hd1457615217%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1457515213%_))))
                                        (if (gx#stx-pair? _%tl1457715220%_)
                                            (let ((_%e1457815223%_
                                                   (gx#syntax-e
                                                    _%tl1457715220%_)))
                                              (let ((_%tl1458015230%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1457815223%_)))
                                                    (_%hd1457915227%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1457815223%_))))
                                                (if (gx#stx-null?
                                                     _%tl1458015230%_)
                                                    (_%__match2016320164%_
                                                     _%e1456915193%_
                                                     _%hd1457015197%_
                                                     _%tl1457115200%_
                                                     _%e1457215203%_
                                                     _%hd1457315207%_
                                                     _%tl1457415210%_
                                                     _%e1457515213%_
                                                     _%hd1457615217%_
                                                     _%tl1457715220%_
                                                     _%e1457815223%_
                                                     _%hd1457915227%_
                                                     _%tl1458015230%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1457615217%_)
                                                        (let ((_%e1459215115%_
                                                               (gx#syntax-e
                                                                _%hd1457615217%_)))
                                                          (let ((_%tl1459415122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e1459215115%_)))
                        (_%hd1459315119%_
                         (let ()
                           (declare (not safe))
                           (##car _%e1459215115%_))))
                    (if (gx#stx-pair/null? _%hd1457315207%_)
                        (let ((_%__splice2013320134%_
                               (gx#syntax-split-splice _%hd1457315207%_ '0)))
                          (let ((_%tl1461414665%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2013320134%_ '1)))
                                (_%target1461214662%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2013320134%_ '0))))
                            (if (gx#stx-null? _%tl1461414665%_)
                                (_%__match2021920220%_
                                 _%e1456915193%_
                                 _%hd1457015197%_
                                 _%tl1457115200%_
                                 _%e1457215203%_
                                 _%hd1457315207%_
                                 _%tl1457415210%_
                                 _%__splice2013320134%_
                                 _%target1461214662%_
                                 _%tl1461414665%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1456314635%_)))))
                        (let () (declare (not safe)) (_%g1456314635%_)))))
                (if (gx#stx-pair/null? _%hd1457315207%_)
                    (let ((_%__splice2013320134%_
                           (gx#syntax-split-splice _%hd1457315207%_ '0)))
                      (let ((_%tl1461414665%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2013320134%_ '1)))
                            (_%target1461214662%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2013320134%_ '0))))
                        (if (gx#stx-null? _%tl1461414665%_)
                            (_%__match2021920220%_
                             _%e1456915193%_
                             _%hd1457015197%_
                             _%tl1457115200%_
                             _%e1457215203%_
                             _%hd1457315207%_
                             _%tl1457415210%_
                             _%__splice2013320134%_
                             _%target1461214662%_
                             _%tl1461414665%_)
                            (let () (declare (not safe)) (_%g1456314635%_)))))
                    (let () (declare (not safe)) (_%g1456314635%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%hd1457615217%_)
                                                (let ((_%e1459215115%_
                                                       (gx#syntax-e
                                                        _%hd1457615217%_)))
                                                  (let ((_%tl1459415122%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1459215115%_)))
                                                        (_%hd1459315119%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1459215115%_))))
                                                    (if (gx#stx-null?
                                                         _%tl1459415122%_)
                                                        (if (gx#stx-null?
                                                             _%tl1457715220%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl1457415210%_)
                        (let ((_%__splice2012920130%_
                               (gx#syntax-split-splice _%tl1457415210%_ '0)))
                          (let ((_%tl1459715128%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2012920130%_ '1)))
                                (_%target1459515125%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2012920130%_ '0))))
                            (if (gx#stx-null? _%tl1459715128%_)
                                (_%__match2019920200%_
                                 _%e1456915193%_
                                 _%hd1457015197%_
                                 _%tl1457115200%_
                                 _%e1457215203%_
                                 _%hd1457315207%_
                                 _%tl1457415210%_
                                 _%e1457515213%_
                                 _%hd1457615217%_
                                 _%tl1457715220%_
                                 _%e1459215115%_
                                 _%hd1459315119%_
                                 _%tl1459415122%_
                                 _%__splice2012920130%_
                                 _%target1459515125%_
                                 _%tl1459715128%_)
                                (if (gx#stx-pair/null? _%hd1457315207%_)
                                    (let ((_%__splice2013320134%_
                                           (gx#syntax-split-splice
                                            _%hd1457315207%_
                                            '0)))
                                      (let ((_%tl1461414665%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2013320134%_
                                                '1)))
                                            (_%target1461214662%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2013320134%_
                                                '0))))
                                        (if (gx#stx-null? _%tl1461414665%_)
                                            (_%__match2021920220%_
                                             _%e1456915193%_
                                             _%hd1457015197%_
                                             _%tl1457115200%_
                                             _%e1457215203%_
                                             _%hd1457315207%_
                                             _%tl1457415210%_
                                             _%__splice2013320134%_
                                             _%target1461214662%_
                                             _%tl1461414665%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1456314635%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g1456314635%_))))))
                        (if (gx#stx-pair/null? _%hd1457315207%_)
                            (let ((_%__splice2013320134%_
                                   (gx#syntax-split-splice
                                    _%hd1457315207%_
                                    '0)))
                              (let ((_%tl1461414665%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2013320134%_
                                        '1)))
                                    (_%target1461214662%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2013320134%_
                                        '0))))
                                (if (gx#stx-null? _%tl1461414665%_)
                                    (_%__match2021920220%_
                                     _%e1456915193%_
                                     _%hd1457015197%_
                                     _%tl1457115200%_
                                     _%e1457215203%_
                                     _%hd1457315207%_
                                     _%tl1457415210%_
                                     _%__splice2013320134%_
                                     _%target1461214662%_
                                     _%tl1461414665%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g1456314635%_)))))
                            (let () (declare (not safe)) (_%g1456314635%_))))
                    (if (gx#stx-pair/null? _%hd1457315207%_)
                        (let ((_%__splice2013320134%_
                               (gx#syntax-split-splice _%hd1457315207%_ '0)))
                          (let ((_%tl1461414665%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2013320134%_ '1)))
                                (_%target1461214662%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2013320134%_ '0))))
                            (if (gx#stx-null? _%tl1461414665%_)
                                (_%__match2021920220%_
                                 _%e1456915193%_
                                 _%hd1457015197%_
                                 _%tl1457115200%_
                                 _%e1457215203%_
                                 _%hd1457315207%_
                                 _%tl1457415210%_
                                 _%__splice2013320134%_
                                 _%target1461214662%_
                                 _%tl1461414665%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1456314635%_)))))
                        (let () (declare (not safe)) (_%g1456314635%_))))
                (if (gx#stx-pair/null? _%hd1457315207%_)
                    (let ((_%__splice2013320134%_
                           (gx#syntax-split-splice _%hd1457315207%_ '0)))
                      (let ((_%tl1461414665%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2013320134%_ '1)))
                            (_%target1461214662%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2013320134%_ '0))))
                        (if (gx#stx-null? _%tl1461414665%_)
                            (_%__match2021920220%_
                             _%e1456915193%_
                             _%hd1457015197%_
                             _%tl1457115200%_
                             _%e1457215203%_
                             _%hd1457315207%_
                             _%tl1457415210%_
                             _%__splice2013320134%_
                             _%target1461214662%_
                             _%tl1461414665%_)
                            (let () (declare (not safe)) (_%g1456314635%_)))))
                    (let () (declare (not safe)) (_%g1456314635%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%hd1457315207%_)
                                                    (let ((_%__splice2013320134%_
                                                           (gx#syntax-split-splice
                                                            _%hd1457315207%_
                                                            '0)))
                                                      (let ((_%tl1461414665%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice2013320134%_ '1)))
                    (_%target1461214662%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice2013320134%_ '0))))
                (if (gx#stx-null? _%tl1461414665%_)
                    (_%__match2021920220%_
                     _%e1456915193%_
                     _%hd1457015197%_
                     _%tl1457115200%_
                     _%e1457215203%_
                     _%hd1457315207%_
                     _%tl1457415210%_
                     _%__splice2013320134%_
                     _%target1461214662%_
                     _%tl1461414665%_)
                    (let () (declare (not safe)) (_%g1456314635%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1456314635%_)))))))
                                    (if (gx#stx-pair/null? _%hd1457315207%_)
                                        (let ((_%__splice2013320134%_
                                               (gx#syntax-split-splice
                                                _%hd1457315207%_
                                                '0)))
                                          (let ((_%tl1461414665%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2013320134%_
                                                    '1)))
                                                (_%target1461214662%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2013320134%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1461414665%_)
                                                (_%__match2021920220%_
                                                 _%e1456915193%_
                                                 _%hd1457015197%_
                                                 _%tl1457115200%_
                                                 _%e1457215203%_
                                                 _%hd1457315207%_
                                                 _%tl1457415210%_
                                                 _%__splice2013320134%_
                                                 _%target1461214662%_
                                                 _%tl1461414665%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1456314635%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g1456314635%_))))))
                            (let () (declare (not safe)) (_%g1456314635%_)))))
                    (let () (declare (not safe)) (_%g1456314635%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet*|
      (lambda (_%$stx15595%_)
        (let* ((_%__stx2022220223%_ _%$stx15595%_)
               (_%g1560115652%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2022220223%_))))
          (let ((_%__kont2022520226%_ (lambda () '#t))
                (_%__kont2022720228%_
                 (lambda (_%L15810%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g1582615829%_ _%g1582715832%_)
                                        (cons _%g1582615829%_ _%g1582715832%_))
                                      '()
                                      _%L15810%_)))))
                (_%__kont2023120232%_
                 (lambda (_%L15719%_ _%L15721%_ _%L15722%_ _%L15723%_)
                   (cons (gx#datum->syntax '#f 'alet)
                         (cons (cons _%L15722%_ '())
                               (cons (cons _%L15723%_
                                           (cons _%L15721%_
                                                 (foldr (lambda (_%g1574415747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1574515750%_)
                  (cons _%g1574415747%_ _%g1574515750%_))
                '()
                _%L15719%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match2029920300%_
                    (lambda (_%e1562915659%_
                             _%hd1563015663%_
                             _%tl1563115666%_
                             _%e1563215669%_
                             _%hd1563315673%_
                             _%tl1563415676%_
                             _%e1563515679%_
                             _%hd1563615683%_
                             _%tl1563715686%_
                             _%__splice2023320234%_
                             _%target1563815689%_
                             _%tl1564015692%_)
                      (letrec ((_%loop1564115695%_
                                (lambda (_%hd1563915699%_ _%body1564515702%_)
                                  (if (gx#stx-pair? _%hd1563915699%_)
                                      (let ((_%e1564215705%_
                                             (gx#syntax-e _%hd1563915699%_)))
                                        (let ((_%lp-tl1564415712%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1564215705%_)))
                                              (_%lp-hd1564315709%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1564215705%_))))
                                          (_%loop1564115695%_
                                           _%lp-tl1564415712%_
                                           (cons _%lp-hd1564315709%_
                                                 _%body1564515702%_))))
                                      (let ((_%body1564615715%_
                                             (reverse _%body1564515702%_)))
                                        (_%__kont2023120232%_
                                         _%body1564615715%_
                                         _%tl1563715686%_
                                         _%hd1563615683%_
                                         _%hd1563015663%_))))))
                        (_%loop1564115695%_ _%target1563815689%_ '()))))
                   (_%__match2027320274%_
                    (lambda (_%e1561015760%_
                             _%hd1561115764%_
                             _%tl1561215767%_
                             _%e1561315770%_
                             _%hd1561415774%_
                             _%tl1561515777%_
                             _%__splice2022920230%_
                             _%target1561615780%_
                             _%tl1561815783%_)
                      (letrec ((_%loop1561915786%_
                                (lambda (_%hd1561715790%_ _%body1562315793%_)
                                  (if (gx#stx-pair? _%hd1561715790%_)
                                      (let ((_%e1562015796%_
                                             (gx#syntax-e _%hd1561715790%_)))
                                        (let ((_%lp-tl1562215803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1562015796%_)))
                                              (_%lp-hd1562115800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1562015796%_))))
                                          (_%loop1561915786%_
                                           _%lp-tl1562215803%_
                                           (cons _%lp-hd1562115800%_
                                                 _%body1562315793%_))))
                                      (let ((_%body1562415806%_
                                             (reverse _%body1562315793%_)))
                                        (_%__kont2022720228%_
                                         _%body1562415806%_))))))
                        (_%loop1561915786%_ _%target1561615780%_ '())))))
              (if (gx#stx-pair? _%__stx2022220223%_)
                  (let ((_%e1560315842%_ (gx#syntax-e _%__stx2022220223%_)))
                    (let ((_%tl1560515849%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1560315842%_)))
                          (_%hd1560415846%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1560315842%_))))
                      (if (gx#stx-pair? _%tl1560515849%_)
                          (let ((_%e1560615852%_
                                 (gx#syntax-e _%tl1560515849%_)))
                            (let ((_%tl1560815859%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1560615852%_)))
                                  (_%hd1560715856%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1560615852%_))))
                              (if (gx#stx-null? _%hd1560715856%_)
                                  (if (gx#stx-null? _%tl1560815859%_)
                                      (_%__kont2022520226%_)
                                      (if (gx#stx-pair/null? _%tl1560815859%_)
                                          (let ((_%__splice2022920230%_
                                                 (gx#syntax-split-splice
                                                  _%tl1560815859%_
                                                  '0)))
                                            (let ((_%tl1561815783%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2022920230%_
                                                      '1)))
                                                  (_%target1561615780%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2022920230%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1561815783%_)
                                                  (_%__match2027320274%_
                                                   _%e1560315842%_
                                                   _%hd1560415846%_
                                                   _%tl1560515849%_
                                                   _%e1560615852%_
                                                   _%hd1560715856%_
                                                   _%tl1560815859%_
                                                   _%__splice2022920230%_
                                                   _%target1561615780%_
                                                   _%tl1561815783%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1560115652%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1560115652%_))))
                                  (if (gx#stx-pair? _%hd1560715856%_)
                                      (let ((_%e1563515679%_
                                             (gx#syntax-e _%hd1560715856%_)))
                                        (let ((_%tl1563715686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1563515679%_)))
                                              (_%hd1563615683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1563515679%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1560815859%_)
                                              (let ((_%__splice2023320234%_
                                                     (gx#syntax-split-splice
                                                      _%tl1560815859%_
                                                      '0)))
                                                (let ((_%tl1564015692%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2023320234%_
                                                          '1)))
                                                      (_%target1563815689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2023320234%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1564015692%_)
                                                      (_%__match2029920300%_
                                                       _%e1560315842%_
                                                       _%hd1560415846%_
                                                       _%tl1560515849%_
                                                       _%e1560615852%_
                                                       _%hd1560715856%_
                                                       _%tl1560815859%_
                                                       _%e1563515679%_
                                                       _%hd1563615683%_
                                                       _%tl1563715686%_
                                                       _%__splice2023320234%_
                                                       _%target1563815689%_
                                                       _%tl1564015692%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1560115652%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1560115652%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1560115652%_))))))
                          (let () (declare (not safe)) (_%g1560115652%_)))))
                  (let () (declare (not safe)) (_%g1560115652%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#@list|
      (lambda (_%$stx15872%_)
        (let* ((_%__stx2030220303%_ _%$stx15872%_)
               (_%g1588315961%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2030220303%_))))
          (let ((_%__kont2030520306%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'quote) (cons '() '()))))
                (_%__kont2030720308%_
                 (lambda (_%L16292%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _%L16292%_ '()))))
                (_%__kont2030920310%_
                 (lambda (_%L16240%_)
                   (cons (gx#datum->syntax '#f 'quasiquote)
                         (cons _%L16240%_ '()))))
                (_%__kont2031120312%_ (lambda (_%L16187%_) _%L16187%_))
                (_%__kont2031320314%_
                 (lambda (_%L16129%_ _%L16131%_) _%L16131%_))
                (_%__kont2031520316%_
                 (lambda (_%L16071%_ _%L16073%_ _%L16074%_ _%L16075%_)
                   (cons (gx#datum->syntax '#f 'foldr)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (cons _%L16075%_ _%L16071%_)
                                     (cons _%L16074%_ '()))))))
                (_%__kont2031720318%_
                 (lambda (_%L16017%_ _%L16019%_ _%L16020%_)
                   (cons (gx#datum->syntax '#f 'cons)
                         (cons _%L16019%_
                               (cons (cons _%L16020%_ _%L16017%_) '())))))
                (_%__kont2031920320%_ (lambda (_%L15978%_) _%L15978%_)))
            (let* ((_%__match2044120442%_
                    (lambda (_%e1593416041%_
                             _%hd1593516045%_
                             _%tl1593616048%_
                             _%e1593716051%_
                             _%hd1593816055%_
                             _%tl1593916058%_
                             _%e1594016061%_
                             _%hd1594116065%_
                             _%tl1594216068%_)
                      (let ((_%L16071%_ _%tl1594216068%_)
                            (_%L16073%_ _%hd1594116065%_)
                            (_%L16074%_ _%hd1593816055%_)
                            (_%L16075%_ _%hd1593516045%_))
                        (if (gx#ellipsis? _%L16073%_)
                            (_%__kont2031520316%_
                             _%L16071%_
                             _%L16073%_
                             _%L16074%_
                             _%L16075%_)
                            (_%__kont2031720318%_
                             _%tl1593916058%_
                             _%hd1593816055%_
                             _%hd1593516045%_)))))
                   (_%__match2042320424%_
                    (lambda (_%e1592116099%_
                             _%hd1592216103%_
                             _%tl1592316106%_
                             _%e1592416109%_
                             _%hd1592516113%_
                             _%tl1592616116%_
                             _%e1592716119%_
                             _%hd1592816123%_
                             _%tl1592916126%_)
                      (let ((_%L16129%_ _%hd1592816123%_)
                            (_%L16131%_ _%hd1592516113%_))
                        (if (gx#ellipsis? _%L16129%_)
                            (_%__kont2031320314%_ _%L16129%_ _%L16131%_)
                            (_%__match2044120442%_
                             _%e1592116099%_
                             _%hd1592216103%_
                             _%tl1592316106%_
                             _%e1592416109%_
                             _%hd1592516113%_
                             _%tl1592616116%_
                             _%e1592716119%_
                             _%hd1592816123%_
                             _%tl1592916126%_))))))
              (if (gx#stx-pair? _%__stx2030220303%_)
                  (let ((_%e1588516314%_ (gx#syntax-e _%__stx2030220303%_)))
                    (let ((_%tl1588716321%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1588516314%_)))
                          (_%hd1588616318%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1588516314%_))))
                      (if (gx#stx-null? _%tl1588716321%_)
                          (_%__kont2030520306%_)
                          (if (gx#stx-pair? _%tl1588716321%_)
                              (let ((_%e1589216272%_
                                     (gx#syntax-e _%tl1588716321%_)))
                                (let ((_%tl1589416279%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1589216272%_)))
                                      (_%hd1589316276%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1589216272%_))))
                                  (if (gx#identifier? _%hd1589316276%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g20967_|
                                           _%hd1589316276%_)
                                          (if (gx#stx-pair? _%tl1589416279%_)
                                              (let ((_%e1589516282%_
                                                     (gx#syntax-e
                                                      _%tl1589416279%_)))
                                                (let ((_%tl1589716289%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1589516282%_)))
                                                      (_%hd1589616286%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1589516282%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1589716289%_)
                                                      (_%__kont2030720308%_
                                                       _%hd1589616286%_)
                                                      (_%__match2044120442%_
                                                       _%e1588516314%_
                                                       _%hd1588616318%_
                                                       _%tl1588716321%_
                                                       _%e1589216272%_
                                                       _%hd1589316276%_
                                                       _%tl1589416279%_
                                                       _%e1589516282%_
                                                       _%hd1589616286%_
                                                       _%tl1589716289%_))))
                                              (_%__kont2031720318%_
                                               _%tl1589416279%_
                                               _%hd1589316276%_
                                               _%hd1588616318%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g20968_|
                                               _%hd1589316276%_)
                                              (if (gx#stx-pair?
                                                   _%tl1589416279%_)
                                                  (let ((_%e1590516230%_
                                                         (gx#syntax-e
                                                          _%tl1589416279%_)))
                                                    (let ((_%tl1590716237%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1590516230%_)))
                                                          (_%hd1590616234%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1590516230%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1590716237%_)
                                                          (_%__kont2030920310%_
                                                           _%hd1590616234%_)
                                                          (_%__match2044120442%_
                                                           _%e1588516314%_
                                                           _%hd1588616318%_
                                                           _%tl1588716321%_
                                                           _%e1589216272%_
                                                           _%hd1589316276%_
                                                           _%tl1589416279%_
                                                           _%e1590516230%_
                                                           _%hd1590616234%_
                                                           _%tl1590716237%_))))
                                                  (_%__kont2031720318%_
                                                   _%tl1589416279%_
                                                   _%hd1589316276%_
                                                   _%hd1588616318%_))
                                              (if (gx#stx-pair?
                                                   _%tl1589416279%_)
                                                  (let ((_%e1592716119%_
                                                         (gx#syntax-e
                                                          _%tl1589416279%_)))
                                                    (let ((_%tl1592916126%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1592716119%_)))
                                                          (_%hd1592816123%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1592716119%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1592916126%_)
                                                          (_%__match2042320424%_
                                                           _%e1588516314%_
                                                           _%hd1588616318%_
                                                           _%tl1588716321%_
                                                           _%e1589216272%_
                                                           _%hd1589316276%_
                                                           _%tl1589416279%_
                                                           _%e1592716119%_
                                                           _%hd1592816123%_
                                                           _%tl1592916126%_)
                                                          (_%__match2044120442%_
                                                           _%e1588516314%_
                                                           _%hd1588616318%_
                                                           _%tl1588716321%_
                                                           _%e1589216272%_
                                                           _%hd1589316276%_
                                                           _%tl1589416279%_
                                                           _%e1592716119%_
                                                           _%hd1592816123%_
                                                           _%tl1592916126%_))))
                                                  (_%__kont2031720318%_
                                                   _%tl1589416279%_
                                                   _%hd1589316276%_
                                                   _%hd1588616318%_))))
                                      (if (gx#stx-datum? _%hd1589316276%_)
                                          (let ((_%e1591516173%_
                                                 (gx#stx-e _%hd1589316276%_)))
                                            (if (equal? _%e1591516173%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl1589416279%_)
                                                    (let ((_%e1591616177%_
                                                           (gx#syntax-e
                                                            _%tl1589416279%_)))
                                                      (let ((_%tl1591816184%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1591616177%_)))
                    (_%hd1591716181%_
                     (let () (declare (not safe)) (##car _%e1591616177%_))))
                (if (gx#stx-null? _%tl1591816184%_)
                    (_%__kont2031120312%_ _%hd1591716181%_)
                    (_%__match2044120442%_
                     _%e1588516314%_
                     _%hd1588616318%_
                     _%tl1588716321%_
                     _%e1589216272%_
                     _%hd1589316276%_
                     _%tl1589416279%_
                     _%e1591616177%_
                     _%hd1591716181%_
                     _%tl1591816184%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2031720318%_
                                                     _%tl1589416279%_
                                                     _%hd1589316276%_
                                                     _%hd1588616318%_))
                                                (if (gx#stx-pair?
                                                     _%tl1589416279%_)
                                                    (let ((_%e1592716119%_
                                                           (gx#syntax-e
                                                            _%tl1589416279%_)))
                                                      (let ((_%tl1592916126%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1592716119%_)))
                    (_%hd1592816123%_
                     (let () (declare (not safe)) (##car _%e1592716119%_))))
                (if (gx#stx-null? _%tl1592916126%_)
                    (_%__match2042320424%_
                     _%e1588516314%_
                     _%hd1588616318%_
                     _%tl1588716321%_
                     _%e1589216272%_
                     _%hd1589316276%_
                     _%tl1589416279%_
                     _%e1592716119%_
                     _%hd1592816123%_
                     _%tl1592916126%_)
                    (_%__match2044120442%_
                     _%e1588516314%_
                     _%hd1588616318%_
                     _%tl1588716321%_
                     _%e1589216272%_
                     _%hd1589316276%_
                     _%tl1589416279%_
                     _%e1592716119%_
                     _%hd1592816123%_
                     _%tl1592916126%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2031720318%_
                                                     _%tl1589416279%_
                                                     _%hd1589316276%_
                                                     _%hd1588616318%_))))
                                          (if (gx#stx-pair? _%tl1589416279%_)
                                              (let ((_%e1592716119%_
                                                     (gx#syntax-e
                                                      _%tl1589416279%_)))
                                                (let ((_%tl1592916126%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1592716119%_)))
                                                      (_%hd1592816123%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1592716119%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1592916126%_)
                                                      (_%__match2042320424%_
                                                       _%e1588516314%_
                                                       _%hd1588616318%_
                                                       _%tl1588716321%_
                                                       _%e1589216272%_
                                                       _%hd1589316276%_
                                                       _%tl1589416279%_
                                                       _%e1592716119%_
                                                       _%hd1592816123%_
                                                       _%tl1592916126%_)
                                                      (_%__match2044120442%_
                                                       _%e1588516314%_
                                                       _%hd1588616318%_
                                                       _%tl1588716321%_
                                                       _%e1589216272%_
                                                       _%hd1589316276%_
                                                       _%tl1589416279%_
                                                       _%e1592716119%_
                                                       _%hd1592816123%_
                                                       _%tl1592916126%_))))
                                              (_%__kont2031720318%_
                                               _%tl1589416279%_
                                               _%hd1589316276%_
                                               _%hd1588616318%_))))))
                              (_%__kont2031920320%_ _%tl1588716321%_)))))
                  (let () (declare (not safe)) (_%g1588315961%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#quasiquote|
      (lambda (_%stx16332%_)
        (letrec ((_%simple-quote?16335%_
                  (lambda (_%e17027%_)
                    (let* ((_%__stx2046220463%_ _%e17027%_)
                           (_%g1703517072%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2046220463%_))))
                      (let ((_%__kont2046520466%_ (lambda () '#f))
                            (_%__kont2046720468%_ (lambda () '#f))
                            (_%__kont2046920470%_
                             (lambda (_%L17186%_ _%L17188%_)
                               (if (_%simple-quote?16335%_ _%L17188%_)
                                   (_%simple-quote?16335%_ _%L17186%_)
                                   '#f)))
                            (_%__kont2047120472%_
                             (lambda (_%L17147%_)
                               (_%simple-quote?16335%_
                                (foldr (lambda (_%g1716017163%_
                                                _%g1716117166%_)
                                         (cons _%g1716017163%_
                                               _%g1716117166%_))
                                       '()
                                       _%L17147%_))))
                            (_%__kont2047520476%_
                             (lambda (_%L17094%_)
                               (_%simple-quote?16335%_ _%L17094%_)))
                            (_%__kont2047720478%_ (lambda () '#t)))
                        (let* ((_%g1703317106%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2046220463%_)
                                      (let ((_%e1706617090%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2046220463%_))))
                                        (_%__kont2047520476%_ _%e1706617090%_))
                                      (_%__kont2047720478%_))))
                               (_%__match2053320534%_
                                (lambda (_%e1705517113%_
                                         _%__splice2047320474%_
                                         _%target1705617117%_
                                         _%tl1705817120%_)
                                  (letrec ((_%loop1705917123%_
                                            (lambda (_%hd1705717127%_
                                                     _%e1706317130%_)
                                              (if (gx#stx-pair?
                                                   _%hd1705717127%_)
                                                  (let ((_%e1706017133%_
                                                         (gx#syntax-e
                                                          _%hd1705717127%_)))
                                                    (let ((_%lp-tl1706217140%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1706017133%_)))
                                                          (_%lp-hd1706117137%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1706017133%_))))
                                                      (_%loop1705917123%_
                                                       _%lp-tl1706217140%_
                                                       (cons _%lp-hd1706117137%_
                                                             _%e1706317130%_))))
                                                  (let ((_%e1706417143%_
                                                         (reverse _%e1706317130%_)))
                                                    (_%__kont2047120472%_
                                                     _%e1706417143%_))))))
                                    (_%loop1705917123%_
                                     _%target1705617117%_
                                     '()))))
                               (_%g1703217169%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2046220463%_)
                                      (let ((_%e1705517113%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2046220463%_))))
                                        (if (gx#stx-pair/null? _%e1705517113%_)
                                            (let ((_%__splice2047320474%_
                                                   (gx#syntax-split-splice
                                                    _%e1705517113%_
                                                    '0)))
                                              (let ((_%tl1705817120%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2047320474%_
                                                        '1)))
                                                    (_%target1705617117%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2047320474%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1705817120%_)
                                                    (_%__match2053320534%_
                                                     _%e1705517113%_
                                                     _%__splice2047320474%_
                                                     _%target1705617117%_
                                                     _%tl1705817120%_)
                                                    (_%__kont2047720478%_))))
                                            (_%__kont2047720478%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1703317106%_))))))
                          (if (gx#stx-pair? _%__stx2046220463%_)
                              (let ((_%e1703717237%_
                                     (gx#syntax-e _%__stx2046220463%_)))
                                (let ((_%tl1703917244%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1703717237%_)))
                                      (_%hd1703817241%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1703717237%_))))
                                  (if (gx#identifier? _%hd1703817241%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g20969_|
                                           _%hd1703817241%_)
                                          (if (gx#stx-pair? _%tl1703917244%_)
                                              (let ((_%e1704017247%_
                                                     (gx#syntax-e
                                                      _%tl1703917244%_)))
                                                (let ((_%tl1704217254%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1704017247%_)))
                                                      (_%hd1704117251%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1704017247%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1704217254%_)
                                                      (_%__kont2046520466%_)
                                                      (_%__kont2046920470%_
                                                       _%tl1703917244%_
                                                       _%hd1703817241%_))))
                                              (_%__kont2046920470%_
                                               _%tl1703917244%_
                                               _%hd1703817241%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g20970_|
                                               _%hd1703817241%_)
                                              (if (gx#stx-pair?
                                                   _%tl1703917244%_)
                                                  (let ((_%e1704617216%_
                                                         (gx#syntax-e
                                                          _%tl1703917244%_)))
                                                    (let ((_%tl1704817223%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1704617216%_)))
                                                          (_%hd1704717220%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1704617216%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1704817223%_)
                                                          (_%__kont2046720468%_)
                                                          (_%__kont2046920470%_
                                                           _%tl1703917244%_
                                                           _%hd1703817241%_))))
                                                  (_%__kont2046920470%_
                                                   _%tl1703917244%_
                                                   _%hd1703817241%_))
                                              (_%__kont2046920470%_
                                               _%tl1703917244%_
                                               _%hd1703817241%_)))
                                      (_%__kont2046920470%_
                                       _%tl1703917244%_
                                       _%hd1703817241%_))))
                              (let ()
                                (declare (not safe))
                                (_%g1703217169%_))))))))
                 (_%generate16337%_
                  (lambda (_%e16399%_ _%d16401%_)
                    (let* ((_%__stx2054020541%_ _%e16399%_)
                           (_%g1641016468%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2054020541%_))))
                      (let ((_%__kont2054320544%_
                             (lambda (_%L16979%_)
                               (let* ((_%g1699217000%_
                                       (lambda (_%g1699316996%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1699316996%_)))
                                      (_%g1699117019%_
                                       (lambda (_%g1699317004%_)
                                         ((lambda (_%L17007%_)
                                            (cons (gx#datum->syntax '#f 'list)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quasiquote)
                            '()))
                (cons _%L17007%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1699317004%_))))
                                 (_%g1699117019%_
                                  (_%generate16337%_
                                   _%L16979%_
                                   (fx1+ _%d16401%_))))))
                            (_%__kont2054520546%_
                             (lambda (_%L16908%_)
                               (if (fxzero? _%d16401%_)
                                   _%L16908%_
                                   (let* ((_%g1692116929%_
                                           (lambda (_%g1692216925%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1692216925%_)))
                                          (_%g1692016948%_
                                           (lambda (_%g1692216933%_)
                                             ((lambda (_%L16936%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote) '()))
                    (cons _%L16936%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1692216933%_))))
                                     (_%g1692016948%_
                                      (_%generate16337%_
                                       _%L16908%_
                                       (fx1- _%d16401%_)))))))
                            (_%__kont2054720548%_
                             (lambda (_%L16837%_)
                               (if (fxzero? _%d16401%_)
                                   (cons (gx#datum->syntax '#f 'foldr)
                                         (cons (gx#datum->syntax '#f 'cons)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons '() '()))
                                                     (cons _%L16837%_ '()))))
                                   (let* ((_%g1685016858%_
                                           (lambda (_%g1685116854%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1685116854%_)))
                                          (_%g1684916877%_
                                           (lambda (_%g1685116862%_)
                                             ((lambda (_%L16865%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote-splicing) '()))
                    (cons _%L16865%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1685116862%_))))
                                     (_%g1684916877%_
                                      (_%generate16337%_
                                       _%L16837%_
                                       (fx1- _%d16401%_)))))))
                            (_%__kont2054920550%_
                             (lambda (_%L16762%_ _%L16764%_)
                               (let* ((_%g1677916787%_
                                       (lambda (_%g1678016783%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1678016783%_)))
                                      (_%g1677816806%_
                                       (lambda (_%g1678016791%_)
                                         ((lambda (_%L16794%_)
                                            (cons (gx#datum->syntax '#f 'foldr)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'cons)
                                                        (cons _%L16794%_
                                                              (cons _%L16764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1678016791%_))))
                                 (_%g1677816806%_
                                  (_%generate16337%_ _%L16762%_ _%d16401%_)))))
                            (_%__kont2055120552%_
                             (lambda (_%L16648%_ _%L16650%_)
                               (let* ((_%g1666116676%_
                                       (lambda (_%g1666216672%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1666216672%_)))
                                      (_%g1666016721%_
                                       (lambda (_%g1666216680%_)
                                         (if (gx#stx-pair? _%g1666216680%_)
                                             (let ((_%e1666516683%_
                                                    (gx#syntax-e
                                                     _%g1666216680%_)))
                                               (let ((_%hd1666616687%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1666516683%_)))
                                                     (_%tl1666716690%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1666516683%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl1666716690%_)
                                                     (let ((_%e1666816693%_
                                                            (gx#syntax-e
                                                             _%tl1666716690%_)))
                                                       (let ((_%hd1666916697%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e1666816693%_)))
                     (_%tl1667016700%_
                      (let () (declare (not safe)) (##cdr _%e1666816693%_))))
                 (if (gx#stx-null? _%tl1667016700%_)
                     ((lambda (_%L16703%_ _%L16705%_)
                        (cons (gx#datum->syntax '#f 'cons)
                              (cons _%L16705%_ (cons _%L16703%_ '()))))
                      _%hd1666916697%_
                      _%hd1666616687%_)
                     (_%g1666116676%_ _%g1666216680%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1666116676%_
                                                      _%g1666216680%_))))
                                             (_%g1666116676%_
                                              _%g1666216680%_)))))
                                 (_%g1666016721%_
                                  (list (_%generate16337%_
                                         _%L16650%_
                                         _%d16401%_)
                                        (_%generate16337%_
                                         _%L16648%_
                                         _%d16401%_))))))
                            (_%__kont2055320554%_
                             (lambda (_%L16578%_)
                               (let* ((_%g1659216600%_
                                       (lambda (_%g1659316596%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1659316596%_)))
                                      (_%g1659116619%_
                                       (lambda (_%g1659316604%_)
                                         ((lambda (_%L16607%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'list->vector)
                                                  (cons _%L16607%_ '())))
                                          _%g1659316604%_))))
                                 (_%g1659116619%_
                                  (_%generate16337%_
                                   (foldr (lambda (_%g1662216625%_
                                                   _%g1662316628%_)
                                            (cons _%g1662216625%_
                                                  _%g1662316628%_))
                                          '()
                                          _%L16578%_)
                                   _%d16401%_)))))
                            (_%__kont2055720558%_
                             (lambda (_%L16496%_)
                               (let* ((_%g1650616514%_
                                       (lambda (_%g1650716510%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1650716510%_)))
                                      (_%g1650516533%_
                                       (lambda (_%g1650716518%_)
                                         ((lambda (_%L16521%_)
                                            (cons (gx#datum->syntax '#f 'box)
                                                  (cons _%L16521%_ '())))
                                          _%g1650716518%_))))
                                 (_%g1650516533%_
                                  (_%generate16337%_ _%L16496%_ _%d16401%_)))))
                            (_%__kont2055920560%_
                             (lambda (_%L16475%_)
                               (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L16475%_ '())))))
                        (let* ((_%g1640816537%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2054020541%_)
                                      (let ((_%e1646116492%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2054020541%_))))
                                        (_%__kont2055720558%_ _%e1646116492%_))
                                      (_%__kont2055920560%_
                                       _%__stx2054020541%_))))
                               (_%__match2065920660%_
                                (lambda (_%e1645016544%_
                                         _%__splice2055520556%_
                                         _%target1645116548%_
                                         _%tl1645316551%_)
                                  (letrec ((_%loop1645416554%_
                                            (lambda (_%hd1645216558%_
                                                     _%e1645816561%_)
                                              (if (gx#stx-pair?
                                                   _%hd1645216558%_)
                                                  (let ((_%e1645516564%_
                                                         (gx#syntax-e
                                                          _%hd1645216558%_)))
                                                    (let ((_%lp-tl1645716571%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1645516564%_)))
                                                          (_%lp-hd1645616568%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1645516564%_))))
                                                      (_%loop1645416554%_
                                                       _%lp-tl1645716571%_
                                                       (cons _%lp-hd1645616568%_
                                                             _%e1645816561%_))))
                                                  (let ((_%e1645916574%_
                                                         (reverse _%e1645816561%_)))
                                                    (_%__kont2055320554%_
                                                     _%e1645916574%_))))))
                                    (_%loop1645416554%_
                                     _%target1645116548%_
                                     '()))))
                               (_%g1640716631%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2054020541%_)
                                      (let ((_%e1645016544%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2054020541%_))))
                                        (if (gx#stx-pair/null? _%e1645016544%_)
                                            (let ((_%__splice2055520556%_
                                                   (gx#syntax-split-splice
                                                    _%e1645016544%_
                                                    '0)))
                                              (let ((_%tl1645316551%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2055520556%_
                                                        '1)))
                                                    (_%target1645116548%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2055520556%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1645316551%_)
                                                    (_%__match2065920660%_
                                                     _%e1645016544%_
                                                     _%__splice2055520556%_
                                                     _%target1645116548%_
                                                     _%tl1645316551%_)
                                                    (_%__kont2055920560%_
                                                     _%__stx2054020541%_))))
                                            (_%__kont2055920560%_
                                             _%__stx2054020541%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1640816537%_))))))
                          (if (gx#stx-pair? _%__stx2054020541%_)
                              (let ((_%e1641316959%_
                                     (gx#syntax-e _%__stx2054020541%_)))
                                (let ((_%tl1641516966%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1641316959%_)))
                                      (_%hd1641416963%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1641316959%_))))
                                  (if (gx#identifier? _%hd1641416963%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g20971_|
                                           _%hd1641416963%_)
                                          (if (gx#stx-pair? _%tl1641516966%_)
                                              (let ((_%e1641616969%_
                                                     (gx#syntax-e
                                                      _%tl1641516966%_)))
                                                (let ((_%tl1641816976%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1641616969%_)))
                                                      (_%hd1641716973%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1641616969%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1641816976%_)
                                                      (_%__kont2054320544%_
                                                       _%hd1641716973%_)
                                                      (_%__kont2055120552%_
                                                       _%tl1641516966%_
                                                       _%hd1641416963%_))))
                                              (_%__kont2055120552%_
                                               _%tl1641516966%_
                                               _%hd1641416963%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g20972_|
                                               _%hd1641416963%_)
                                              (if (gx#stx-pair?
                                                   _%tl1641516966%_)
                                                  (let ((_%e1642316898%_
                                                         (gx#syntax-e
                                                          _%tl1641516966%_)))
                                                    (let ((_%tl1642516905%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1642316898%_)))
                                                          (_%hd1642416902%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1642316898%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1642516905%_)
                                                          (_%__kont2054520546%_
                                                           _%hd1642416902%_)
                                                          (_%__kont2055120552%_
                                                           _%tl1641516966%_
                                                           _%hd1641416963%_))))
                                                  (_%__kont2055120552%_
                                                   _%tl1641516966%_
                                                   _%hd1641416963%_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g20973_|
                                                   _%hd1641416963%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1641516966%_)
                                                      (let ((_%e1643016827%_
                                                             (gx#syntax-e
                                                              _%tl1641516966%_)))
                                                        (let ((_%tl1643216834%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1643016827%_)))
                      (_%hd1643116831%_
                       (let () (declare (not safe)) (##car _%e1643016827%_))))
                  (if (gx#stx-null? _%tl1643216834%_)
                      (_%__kont2054720548%_ _%hd1643116831%_)
                      (_%__kont2055120552%_
                       _%tl1641516966%_
                       _%hd1641416963%_))))
              (_%__kont2055120552%_ _%tl1641516966%_ _%hd1641416963%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2055120552%_
                                                   _%tl1641516966%_
                                                   _%hd1641416963%_))))
                                      (if (gx#stx-pair? _%hd1641416963%_)
                                          (let ((_%e1643816742%_
                                                 (gx#syntax-e
                                                  _%hd1641416963%_)))
                                            (let ((_%tl1644016749%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1643816742%_)))
                                                  (_%hd1643916746%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1643816742%_))))
                                              (if (gx#identifier?
                                                   _%hd1643916746%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-2[1]#_g20974_|
                                                       _%hd1643916746%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1644016749%_)
                                                          (let ((_%e1644116752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1644016749%_)))
                    (let ((_%tl1644316759%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1644116752%_)))
                          (_%hd1644216756%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1644116752%_))))
                      (if (gx#stx-null? _%tl1644316759%_)
                          (if (fxzero? _%d16401%_)
                              (let ((_%L16762%_ _%tl1641516966%_)
                                    (_%L16764%_ _%hd1644216756%_))
                                (_%__kont2054920550%_ _%L16762%_ _%L16764%_))
                              (_%__kont2055120552%_
                               _%tl1641516966%_
                               _%hd1641416963%_))
                          (_%__kont2055120552%_
                           _%tl1641516966%_
                           _%hd1641416963%_))))
                  (_%__kont2055120552%_ _%tl1641516966%_ _%hd1641416963%_))
              (_%__kont2055120552%_ _%tl1641516966%_ _%hd1641416963%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2055120552%_
                                                   _%tl1641516966%_
                                                   _%hd1641416963%_))))
                                          (_%__kont2055120552%_
                                           _%tl1641516966%_
                                           _%hd1641416963%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g1640716631%_)))))))))
          (let* ((_%g1633916353%_
                  (lambda (_%g1634016349%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1634016349%_)))
                 (_%g1633816395%_
                  (lambda (_%g1634016357%_)
                    (if (gx#stx-pair? _%g1634016357%_)
                        (let ((_%e1634216360%_ (gx#syntax-e _%g1634016357%_)))
                          (let ((_%hd1634316364%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1634216360%_)))
                                (_%tl1634416367%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1634216360%_))))
                            (if (gx#stx-pair? _%tl1634416367%_)
                                (let ((_%e1634516370%_
                                       (gx#syntax-e _%tl1634416367%_)))
                                  (let ((_%hd1634616374%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1634516370%_)))
                                        (_%tl1634716377%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1634516370%_))))
                                    (if (gx#stx-null? _%tl1634716377%_)
                                        ((lambda (_%L16380%_)
                                           (if (_%simple-quote?16335%_
                                                _%L16380%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L16380%_ '()))
                                               (_%generate16337%_
                                                _%L16380%_
                                                '0)))
                                         _%hd1634616374%_)
                                        (_%g1633916353%_ _%g1634016357%_))))
                                (_%g1633916353%_ _%g1634016357%_))))
                        (_%g1633916353%_ _%g1634016357%_)))))
            (_%g1633816395%_ _%stx16332%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay|
      (lambda (_%$stx17267%_)
        (let* ((_%__stx2066620667%_ _%$stx17267%_)
               (_%g1727217293%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2066620667%_))))
          (let ((_%__kont2066920670%_
                 (lambda (_%L17361%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _%L17361%_ '()))))
                (_%__kont2067120672%_
                 (lambda (_%L17320%_)
                   (cons (gx#datum->syntax '#f 'make-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%L17320%_ '())))
                               '())))))
            (let ((_%__match2068720688%_
                   (lambda (_%e1727517341%_
                            _%hd1727617345%_
                            _%tl1727717348%_
                            _%e1727817351%_
                            _%hd1727917355%_
                            _%tl1728017358%_)
                     (let ((_%L17361%_ _%hd1727917355%_))
                       (if (gx#stx-datum? _%L17361%_)
                           (_%__kont2066920670%_ _%L17361%_)
                           (_%__kont2067120672%_ _%hd1727917355%_))))))
              (if (gx#stx-pair? _%__stx2066620667%_)
                  (let ((_%e1727517341%_ (gx#syntax-e _%__stx2066620667%_)))
                    (let ((_%tl1727717348%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1727517341%_)))
                          (_%hd1727617345%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1727517341%_))))
                      (if (gx#stx-pair? _%tl1727717348%_)
                          (let ((_%e1727817351%_
                                 (gx#syntax-e _%tl1727717348%_)))
                            (let ((_%tl1728017358%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1727817351%_)))
                                  (_%hd1727917355%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1727817351%_))))
                              (if (gx#stx-null? _%tl1728017358%_)
                                  (_%__match2068720688%_
                                   _%e1727517341%_
                                   _%hd1727617345%_
                                   _%tl1727717348%_
                                   _%e1727817351%_
                                   _%hd1727917355%_
                                   _%tl1728017358%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g1727217293%_)))))
                          (let () (declare (not safe)) (_%g1727217293%_)))))
                  (let () (declare (not safe)) (_%g1727217293%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#cut|
      (lambda (_%stx17378%_)
        (letrec ((_%generate17381%_
                  (lambda (_%rest17500%_)
                    (let _%lp17503%_ ((_%rest17506%_ _%rest17500%_)
                                      (_%hd17508%_ '())
                                      (_%body17509%_ '()))
                      (let* ((_%__stx2072420725%_ _%rest17506%_)
                             (_%g1751217524%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx2072420725%_))))
                        (let ((_%__kont2072720728%_
                               (lambda (_%L17552%_ _%L17554%_)
                                 (let* ((_%__stx2070420705%_ _%L17554%_)
                                        (_%g1757117578%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx2070420705%_))))
                                   (let ((_%__kont2070720708%_
                                          (lambda ()
                                            (let ((_%arg17614%_ (gx#genident)))
                                              (_%lp17503%_
                                               _%L17552%_
                                               (cons _%arg17614%_ _%hd17508%_)
                                               (cons _%arg17614%_
                                                     _%body17509%_)))))
                                         (_%__kont2070920710%_
                                          (lambda ()
                                            (if (gx#stx-null? _%L17552%_)
                                                (let ((_%tail17600%_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail17600%_
                         _%hd17508%_)
                  (foldl cons (list _%tail17600%_) _%body17509%_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; cut ellipsis <...> not in tail position"
                                                 _%stx17378%_
                                                 _%L17554%_))))
                                         (_%__kont2071120712%_
                                          (lambda ()
                                            (_%lp17503%_
                                             _%L17552%_
                                             _%hd17508%_
                                             (cons _%L17554%_
                                                   _%body17509%_)))))
                                     (if (gx#identifier? _%__stx2070420705%_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core/sugar~Sugar-2[1]#_g20975_|
                                              _%__stx2070420705%_)
                                             (_%__kont2070720708%_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core/sugar~Sugar-2[1]#_g20976_|
                                                  _%__stx2070420705%_)
                                                 (_%__kont2070920710%_)
                                                 (_%__kont2071120712%_)))
                                         (_%__kont2071120712%_))))))
                              (_%__kont2072920730%_
                               (lambda ()
                                 (values (reverse _%hd17508%_)
                                         (reverse _%body17509%_)
                                         '#f))))
                          (if (gx#stx-pair? _%__stx2072420725%_)
                              (let ((_%e1751617542%_
                                     (gx#syntax-e _%__stx2072420725%_)))
                                (let ((_%tl1751817549%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1751617542%_)))
                                      (_%hd1751717546%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1751617542%_))))
                                  (_%__kont2072720728%_
                                   _%tl1751817549%_
                                   _%hd1751717546%_)))
                              (_%__kont2072920730%_))))))))
          (let* ((_%g1738417395%_
                  (lambda (_%g1738517391%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1738517391%_)))
                 (_%g1738317496%_
                  (lambda (_%g1738517399%_)
                    (if (gx#stx-pair? _%g1738517399%_)
                        (let ((_%e1738717402%_ (gx#syntax-e _%g1738517399%_)))
                          (let ((_%hd1738817406%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1738717402%_)))
                                (_%tl1738917409%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1738717402%_))))
                            ((lambda (_%L17412%_)
                               (if (and (gx#stx-list? _%L17412%_)
                                        (not (gx#stx-null? _%L17412%_)))
                                   (let ((_g20977_
                                          (_%generate17381%_ _%L17412%_)))
                                     (begin
                                       (let ((_g20978_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20977_)
                                                    (##vector-length _g20977_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20978_ 3)))
                                             (error "Context expects 3 values"
                                                    _g20978_)))
                                       (let ((_%hd17425%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20977_ 0)))
                                             (_%body17427%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20977_ 1)))
                                             (_%tail?17428%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20977_ 2))))
                                         (let* ((_%g1743017438%_
                                                 (lambda (_%g1743117434%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g1743117434%_)))
                                                (_%g1742917492%_
                                                 (lambda (_%g1743117442%_)
                                                   ((lambda (_%L17445%_)
                                                      (let* ((_%g1745817466%_
                                                              (lambda (_%g1745917462%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g1745917462%_)))
                     (_%g1745717488%_
                      (lambda (_%g1745917470%_)
                        ((lambda (_%L17473%_)
                           (if _%tail?17428%_
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%L17445%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'apply)
                                                       _%L17473%_)
                                                 '())))
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%L17445%_ (cons _%L17473%_ '())))))
                         _%g1745917470%_))))
                (_%g1745717488%_ _%body17427%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g1743117442%_))))
                                           (_%g1742917492%_ _%hd17425%_)))))
                                   (_%g1738417395%_ _%g1738517399%_)))
                             _%tl1738917409%_)))
                        (_%g1738417395%_ _%g1738517399%_)))))
            (_%g1738317496%_ _%stx17378%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<>|
      (lambda (_%$stx17626%_)
        (let ((_%g1762917636%_
               (lambda (_%g1763017632%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1763017632%_))))
          (_%g1762917636%_ _%$stx17626%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<...>|
      (lambda (_%$stx17640%_)
        (let ((_%g1764317650%_
               (lambda (_%g1764417646%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1764417646%_))))
          (_%g1764317650%_ _%$stx17640%_))))))

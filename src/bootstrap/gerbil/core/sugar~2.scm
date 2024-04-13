(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-2[1]#_g20918_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20919_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20920_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20956_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20957_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20958_|
    (##structure
     gx#syntax-quote::t
     'values
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
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20967_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20968_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20969_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20970_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20971_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20972_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20973_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20974_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-2[:0:]#lambda|
      (lambda (_%stx5284%_)
        (letrec ((_%simple-lambda?5287%_
                  (lambda (_%hd8693%_)
                    (gx#stx-andmap gx#identifier? _%hd8693%_)))
                 (_%opt-lambda?5289%_
                  (lambda (_%hd8545%_)
                    (let _%lp8548%_ ((_%rest8551%_ _%hd8545%_)
                                     (_%opt?8553%_ '#f))
                      (let* ((_%__stx1914219143%_ _%rest8551%_)
                             (_%g85568568%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1914219143%_))))
                        (let ((_%__kont1914519146%_
                               (lambda (_%L8600%_ _%L8602%_)
                                 (let* ((_%__stx1911819119%_ _%L8602%_)
                                        (_%g86188632%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1911819119%_))))
                                   (let ((_%__kont1912119122%_
                                          (lambda (_%L8670%_)
                                            (_%lp8548%_ _%L8600%_ '#t)))
                                         (_%__kont1912319124%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8602%_)
                                                (if (not _%opt?8553%_)
                                                    (_%lp8548%_ _%L8600%_ '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((_%__match1913919140%_
                                            (lambda (_%e86218650%_
                                                     _%hd86228654%_
                                                     _%tl86238657%_
                                                     _%e86248660%_
                                                     _%hd86258664%_
                                                     _%tl86268667%_)
                                              (let ((_%L8670%_ _%hd86228654%_))
                                                (if (gx#identifier? _%L8670%_)
                                                    (_%__kont1912119122%_
                                                     _%L8670%_)
                                                    (_%__kont1912319124%_))))))
                                       (if (gx#stx-pair? _%__stx1911819119%_)
                                           (let ((_%e86218650%_
                                                  (gx#syntax-e
                                                   _%__stx1911819119%_)))
                                             (let ((_%tl86238657%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e86218650%_)))
                                                   (_%hd86228654%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e86218650%_))))
                                               (if (gx#stx-pair?
                                                    _%tl86238657%_)
                                                   (let ((_%e86248660%_
                                                          (gx#syntax-e
                                                           _%tl86238657%_)))
                                                     (let ((_%tl86268667%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e86248660%_)))
                                                           (_%hd86258664%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e86248660%_))))
                                                       (if (gx#stx-null?
                                                            _%tl86268667%_)
                                                           (_%__match1913919140%_
                                                            _%e86218650%_
                                                            _%hd86228654%_
                                                            _%tl86238657%_
                                                            _%e86248660%_
                                                            _%hd86258664%_
                                                            _%tl86268667%_)
                                                           (_%__kont1912319124%_))))
                                                   (_%__kont1912319124%_))))
                                           (_%__kont1912319124%_)))))))
                              (_%__kont1914719148%_
                               (lambda ()
                                 (if _%opt?8553%_
                                     (let ((_%$e8579%_
                                            (gx#stx-null? _%rest8551%_)))
                                       (if _%$e8579%_
                                           _%$e8579%_
                                           (gx#identifier? _%rest8551%_)))
                                     '#f))))
                          (if (gx#stx-pair? _%__stx1914219143%_)
                              (let ((_%e85608590%_
                                     (gx#syntax-e _%__stx1914219143%_)))
                                (let ((_%tl85628597%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e85608590%_)))
                                      (_%hd85618594%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e85608590%_))))
                                  (_%__kont1914519146%_
                                   _%tl85628597%_
                                   _%hd85618594%_)))
                              (_%__kont1914719148%_)))))))
                 (_%opt-lambda-split5290%_
                  (lambda (_%hd8397%_)
                    (let _%lp8400%_ ((_%rest8403%_ _%hd8397%_)
                                     (_%pre8405%_ '())
                                     (_%opt8406%_ '()))
                      (let* ((_%__stx1918219183%_ _%rest8403%_)
                             (_%g84098421%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1918219183%_))))
                        (let ((_%__kont1918519186%_
                               (lambda (_%L8449%_ _%L8451%_)
                                 (let* ((_%__stx1915819159%_ _%L8451%_)
                                        (_%g84678482%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1915819159%_))))
                                   (let ((_%__kont1916119162%_
                                          (lambda (_%L8520%_ _%L8522%_)
                                            (_%lp8400%_
                                             _%L8449%_
                                             _%pre8405%_
                                             (cons (cons _%L8522%_ _%L8520%_)
                                                   _%opt8406%_))))
                                         (_%__kont1916319164%_
                                          (lambda ()
                                            (_%lp8400%_
                                             _%L8449%_
                                             (cons _%L8451%_ _%pre8405%_)
                                             _%opt8406%_))))
                                     (if (gx#stx-pair? _%__stx1915819159%_)
                                         (let ((_%e84718500%_
                                                (gx#syntax-e
                                                 _%__stx1915819159%_)))
                                           (let ((_%tl84738507%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e84718500%_)))
                                                 (_%hd84728504%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e84718500%_))))
                                             (if (gx#stx-pair? _%tl84738507%_)
                                                 (let ((_%e84748510%_
                                                        (gx#syntax-e
                                                         _%tl84738507%_)))
                                                   (let ((_%tl84768517%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e84748510%_)))
                                                         (_%hd84758514%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e84748510%_))))
                                                     (if (gx#stx-null?
                                                          _%tl84768517%_)
                                                         (_%__kont1916119162%_
                                                          _%hd84758514%_
                                                          _%hd84728504%_)
                                                         (_%__kont1916319164%_))))
                                                 (_%__kont1916319164%_))))
                                         (_%__kont1916319164%_))))))
                              (_%__kont1918719188%_
                               (lambda ()
                                 (values (reverse _%pre8405%_)
                                         (reverse _%opt8406%_)
                                         _%rest8403%_))))
                          (if (gx#stx-pair? _%__stx1918219183%_)
                              (let ((_%e84138439%_
                                     (gx#syntax-e _%__stx1918219183%_)))
                                (let ((_%tl84158446%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e84138439%_)))
                                      (_%hd84148443%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e84138439%_))))
                                  (_%__kont1918519186%_
                                   _%tl84158446%_
                                   _%hd84148443%_)))
                              (_%__kont1918719188%_)))))))
                 (_%kw-lambda?5291%_
                  (lambda (_%hd8065%_)
                    (let _%lp8068%_ ((_%rest8071%_ _%hd8065%_)
                                     (_%opt?8073%_ '#f)
                                     (_%key?8074%_ '#f))
                      (let* ((_%__stx1924619247%_ _%rest8071%_)
                             (_%g80798109%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1924619247%_))))
                        (let ((_%__kont1924919250%_
                               (lambda (_%L8304%_ _%L8306%_ _%L8307%_)
                                 (let* ((_%__stx1922219223%_ _%L8306%_)
                                        (_%g83228336%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1922219223%_))))
                                   (let ((_%__kont1922519226%_
                                          (lambda (_%L8374%_)
                                            (if (gx#identifier? _%L8374%_)
                                                (_%lp8068%_
                                                 _%L8304%_
                                                 _%opt?8073%_
                                                 '#t)
                                                '#f)))
                                         (_%__kont1922719228%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8306%_)
                                                (_%lp8068%_
                                                 _%L8304%_
                                                 _%opt?8073%_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1922219223%_)
                                         (let ((_%e83258354%_
                                                (gx#syntax-e
                                                 _%__stx1922219223%_)))
                                           (let ((_%tl83278361%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e83258354%_)))
                                                 (_%hd83268358%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e83258354%_))))
                                             (if (gx#stx-pair? _%tl83278361%_)
                                                 (let ((_%e83288364%_
                                                        (gx#syntax-e
                                                         _%tl83278361%_)))
                                                   (let ((_%tl83308371%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e83288364%_)))
                                                         (_%hd83298368%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e83288364%_))))
                                                     (if (gx#stx-null?
                                                          _%tl83308371%_)
                                                         (_%__kont1922519226%_
                                                          _%hd83268358%_)
                                                         (_%__kont1922719228%_))))
                                                 (_%__kont1922719228%_))))
                                         (_%__kont1922719228%_))))))
                              (_%__kont1925119252%_
                               (lambda (_%L8261%_ _%L8263%_)
                                 (if (gx#identifier? _%L8263%_)
                                     (_%lp8068%_ _%L8261%_ _%opt?8073%_ '#t)
                                     '#f)))
                              (_%__kont1925319254%_
                               (lambda (_%L8141%_ _%L8143%_)
                                 (let* ((_%__stx1919819199%_ _%L8143%_)
                                        (_%g81598173%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1919819199%_))))
                                   (let ((_%__kont1920119202%_
                                          (lambda (_%L8211%_)
                                            (if (gx#identifier? _%L8211%_)
                                                (_%lp8068%_
                                                 _%L8141%_
                                                 '#t
                                                 _%key?8074%_)
                                                '#f)))
                                         (_%__kont1920319204%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8143%_)
                                                (if (not _%opt?8073%_)
                                                    (_%lp8068%_
                                                     _%L8141%_
                                                     '#f
                                                     _%key?8074%_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1919819199%_)
                                         (let ((_%e81628191%_
                                                (gx#syntax-e
                                                 _%__stx1919819199%_)))
                                           (let ((_%tl81648198%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e81628191%_)))
                                                 (_%hd81638195%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e81628191%_))))
                                             (if (gx#stx-pair? _%tl81648198%_)
                                                 (let ((_%e81658201%_
                                                        (gx#syntax-e
                                                         _%tl81648198%_)))
                                                   (let ((_%tl81678208%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e81658201%_)))
                                                         (_%hd81668205%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e81658201%_))))
                                                     (if (gx#stx-null?
                                                          _%tl81678208%_)
                                                         (_%__kont1920119202%_
                                                          _%hd81638195%_)
                                                         (_%__kont1920319204%_))))
                                                 (_%__kont1920319204%_))))
                                         (_%__kont1920319204%_))))))
                              (_%__kont1925519256%_
                               (lambda ()
                                 (if _%key?8074%_
                                     (let ((_%$e8120%_
                                            (gx#stx-null? _%rest8071%_)))
                                       (if _%$e8120%_
                                           _%$e8120%_
                                           (gx#identifier? _%rest8071%_)))
                                     '#f))))
                          (let ((_%__match1926919270%_
                                 (lambda (_%e80848284%_
                                          _%hd80858288%_
                                          _%tl80868291%_
                                          _%e80878294%_
                                          _%hd80888298%_
                                          _%tl80898301%_)
                                   (let ((_%L8304%_ _%tl80898301%_)
                                         (_%L8306%_ _%hd80888298%_)
                                         (_%L8307%_ _%hd80858288%_))
                                     (if (gx#stx-keyword? _%L8307%_)
                                         (_%__kont1924919250%_
                                          _%L8304%_
                                          _%L8306%_
                                          _%L8307%_)
                                         (if (gx#stx-datum? _%hd80858288%_)
                                             (let ((_%e80958247%_
                                                    (gx#stx-e _%hd80858288%_)))
                                               (if (equal? _%e80958247%_
                                                           '#!key)
                                                   (_%__kont1925119252%_
                                                    _%tl80898301%_
                                                    _%hd80888298%_)
                                                   (_%__kont1925319254%_
                                                    _%tl80868291%_
                                                    _%hd80858288%_)))
                                             (_%__kont1925319254%_
                                              _%tl80868291%_
                                              _%hd80858288%_)))))))
                            (if (gx#stx-pair? _%__stx1924619247%_)
                                (let ((_%e80848284%_
                                       (gx#syntax-e _%__stx1924619247%_)))
                                  (let ((_%tl80868291%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e80848284%_)))
                                        (_%hd80858288%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e80848284%_))))
                                    (if (gx#stx-pair? _%tl80868291%_)
                                        (let ((_%e80878294%_
                                               (gx#syntax-e _%tl80868291%_)))
                                          (let ((_%tl80898301%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e80878294%_)))
                                                (_%hd80888298%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e80878294%_))))
                                            (_%__match1926919270%_
                                             _%e80848284%_
                                             _%hd80858288%_
                                             _%tl80868291%_
                                             _%e80878294%_
                                             _%hd80888298%_
                                             _%tl80898301%_)))
                                        (if (gx#stx-datum? _%hd80858288%_)
                                            (let ((_%e80958247%_
                                                   (gx#stx-e _%hd80858288%_)))
                                              (_%__kont1925319254%_
                                               _%tl80868291%_
                                               _%hd80858288%_))
                                            (_%__kont1925319254%_
                                             _%tl80868291%_
                                             _%hd80858288%_)))))
                                (_%__kont1925519256%_))))))))
                 (_%kw-lambda-split5292%_
                  (lambda (_%hd7798%_)
                    (let _%lp7801%_ ((_%rest7804%_ _%hd7798%_)
                                     (_%kwvar7806%_ '#f)
                                     (_%kwargs7807%_ '())
                                     (_%args7808%_ '()))
                      (let* ((_%__stx1932019321%_ _%rest7804%_)
                             (_%g78137843%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1932019321%_))))
                        (let ((_%__kont1932319324%_
                               (lambda (_%L7962%_ _%L7964%_ _%L7965%_)
                                 (let ((_%key7979%_ (gx#stx-e _%L7965%_)))
                                   (if (find (lambda (_%kwarg7982%_)
                                               (eq? _%key7979%_
                                                    (car _%kwarg7982%_)))
                                             _%kwargs7807%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad syntax; duplicate keyword argument"
                                        _%stx5284%_
                                        _%hd7798%_
                                        _%key7979%_)
                                       (let* ((_%__stx1929619297%_ _%L7964%_)
                                              (_%g79868001%_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx1929619297%_))))
                                         (let ((_%__kont1929919300%_
                                                (lambda (_%L8039%_ _%L8041%_)
                                                  (_%lp7801%_
                                                   _%L7962%_
                                                   _%kwvar7806%_
                                                   (cons (list _%key7979%_
                                                               _%L8041%_
                                                               _%L8039%_)
                                                         _%kwargs7807%_)
                                                   _%args7808%_)))
                                               (_%__kont1930119302%_
                                                (lambda ()
                                                  (_%lp7801%_
                                                   _%L7962%_
                                                   _%kwvar7806%_
                                                   (cons (list _%key7979%_
                                                               _%L7964%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'error)
                             (cons '"Missing required keyword argument"
                                   (cons _%L7965%_ '()))))
                 _%kwargs7807%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%args7808%_))))
                                           (if (gx#stx-pair?
                                                _%__stx1929619297%_)
                                               (let ((_%e79908019%_
                                                      (gx#syntax-e
                                                       _%__stx1929619297%_)))
                                                 (let ((_%tl79928026%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e79908019%_)))
                                                       (_%hd79918023%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e79908019%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl79928026%_)
                                                       (let ((_%e79938029%_
                                                              (gx#syntax-e
                                                               _%tl79928026%_)))
                                                         (let ((_%tl79958036%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e79938029%_)))
                       (_%hd79948033%_
                        (let () (declare (not safe)) (##car _%e79938029%_))))
                   (if (gx#stx-null? _%tl79958036%_)
                       (_%__kont1929919300%_ _%hd79948033%_ _%hd79918023%_)
                       (_%__kont1930119302%_))))
               (_%__kont1930119302%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont1930119302%_))))))))
                              (_%__kont1932519326%_
                               (lambda (_%L7919%_ _%L7921%_)
                                 (if _%kwvar7806%_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"bad syntax; duplicate #!key argument"
                                      _%stx5284%_
                                      _%hd7798%_
                                      _%L7921%_)
                                     (_%lp7801%_
                                      _%L7919%_
                                      _%L7921%_
                                      _%kwargs7807%_
                                      _%args7808%_))))
                              (_%__kont1932719328%_
                               (lambda (_%L7871%_ _%L7873%_)
                                 (_%lp7801%_
                                  _%L7871%_
                                  _%kwvar7806%_
                                  _%kwargs7807%_
                                  (cons _%L7873%_ _%args7808%_))))
                              (_%__kont1932919330%_
                               (lambda ()
                                 (values _%kwvar7806%_
                                         (reverse _%kwargs7807%_)
                                         (foldl cons
                                                _%rest7804%_
                                                _%args7808%_)))))
                          (let ((_%__match1934319344%_
                                 (lambda (_%e78187942%_
                                          _%hd78197946%_
                                          _%tl78207949%_
                                          _%e78217952%_
                                          _%hd78227956%_
                                          _%tl78237959%_)
                                   (let ((_%L7962%_ _%tl78237959%_)
                                         (_%L7964%_ _%hd78227956%_)
                                         (_%L7965%_ _%hd78197946%_))
                                     (if (gx#stx-keyword? _%L7965%_)
                                         (_%__kont1932319324%_
                                          _%L7962%_
                                          _%L7964%_
                                          _%L7965%_)
                                         (if (gx#stx-datum? _%hd78197946%_)
                                             (let ((_%e78297905%_
                                                    (gx#stx-e _%hd78197946%_)))
                                               (if (equal? _%e78297905%_
                                                           '#!key)
                                                   (_%__kont1932519326%_
                                                    _%tl78237959%_
                                                    _%hd78227956%_)
                                                   (_%__kont1932719328%_
                                                    _%tl78207949%_
                                                    _%hd78197946%_)))
                                             (_%__kont1932719328%_
                                              _%tl78207949%_
                                              _%hd78197946%_)))))))
                            (if (gx#stx-pair? _%__stx1932019321%_)
                                (let ((_%e78187942%_
                                       (gx#syntax-e _%__stx1932019321%_)))
                                  (let ((_%tl78207949%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e78187942%_)))
                                        (_%hd78197946%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e78187942%_))))
                                    (if (gx#stx-pair? _%tl78207949%_)
                                        (let ((_%e78217952%_
                                               (gx#syntax-e _%tl78207949%_)))
                                          (let ((_%tl78237959%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e78217952%_)))
                                                (_%hd78227956%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e78217952%_))))
                                            (_%__match1934319344%_
                                             _%e78187942%_
                                             _%hd78197946%_
                                             _%tl78207949%_
                                             _%e78217952%_
                                             _%hd78227956%_
                                             _%tl78237959%_)))
                                        (if (gx#stx-datum? _%hd78197946%_)
                                            (let ((_%e78297905%_
                                                   (gx#stx-e _%hd78197946%_)))
                                              (_%__kont1932719328%_
                                               _%tl78207949%_
                                               _%hd78197946%_))
                                            (_%__kont1932719328%_
                                             _%tl78207949%_
                                             _%hd78197946%_)))))
                                (_%__kont1932919330%_))))))))
                 (_%check-duplicate-bindings5293%_
                  (lambda (_%hd7490%_)
                    (let _%lp7493%_ ((_%rest7496%_ _%hd7490%_)
                                     (_%ids7498%_ '()))
                      (let* ((_%__stx1939419395%_ _%rest7496%_)
                             (_%g75017513%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1939419395%_))))
                        (let ((_%__kont1939719398%_
                               (lambda (_%L7541%_ _%L7543%_)
                                 (if (gx#identifier? _%L7543%_)
                                     (_%lp7493%_
                                      _%L7541%_
                                      (cons _%L7543%_ _%ids7498%_))
                                     (if (gx#stx-pair? _%L7543%_)
                                         (let* ((_%g75627576%_
                                                 (lambda (_%g75637572%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g75637572%_)))
                                                (_%g75617618%_
                                                 (lambda (_%g75637580%_)
                                                   (if (gx#stx-pair?
                                                        _%g75637580%_)
                                                       (let ((_%e75657583%_
                                                              (gx#syntax-e
                                                               _%g75637580%_)))
                                                         (let ((_%hd75667587%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e75657583%_)))
                       (_%tl75677590%_
                        (let () (declare (not safe)) (##cdr _%e75657583%_))))
                   (if (gx#stx-pair? _%tl75677590%_)
                       (let ((_%e75687593%_ (gx#syntax-e _%tl75677590%_)))
                         (let ((_%hd75697597%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e75687593%_)))
                               (_%tl75707600%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e75687593%_))))
                           (if (gx#stx-null? _%tl75707600%_)
                               ((lambda (_%L7603%_)
                                  (_%lp7493%_
                                   _%L7541%_
                                   (cons _%L7603%_ _%ids7498%_)))
                                _%hd75667587%_)
                               (_%g75627576%_ _%g75637580%_))))
                       (_%g75627576%_ _%g75637580%_))))
               (_%g75627576%_ _%g75637580%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g75617618%_ _%L7543%_))
                                         (if (gx#stx-keyword? _%L7543%_)
                                             (let* ((_%g76247636%_
                                                     (lambda (_%g76257632%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g76257632%_)))
                                                    (_%g76237739%_
                                                     (lambda (_%g76257640%_)
                                                       (if (gx#stx-pair?
                                                            _%g76257640%_)
                                                           (let ((_%e76287643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g76257640%_)))
                     (let ((_%hd76297647%_
                            (let ()
                              (declare (not safe))
                              (##car _%e76287643%_)))
                           (_%tl76307650%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e76287643%_))))
                       ((lambda (_%L7653%_ _%L7655%_)
                          (let* ((_%__stx1937019371%_ _%L7655%_)
                                 (_%g76687682%_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx1937019371%_))))
                            (let ((_%__kont1937319374%_
                                   (lambda (_%L7720%_)
                                     (_%lp7493%_
                                      _%L7653%_
                                      (cons _%L7720%_ _%ids7498%_))))
                                  (_%__kont1937519376%_
                                   (lambda ()
                                     (_%lp7493%_
                                      _%L7653%_
                                      (cons _%L7655%_ _%ids7498%_)))))
                              (if (gx#stx-pair? _%__stx1937019371%_)
                                  (let ((_%e76717700%_
                                         (gx#syntax-e _%__stx1937019371%_)))
                                    (let ((_%tl76737707%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e76717700%_)))
                                          (_%hd76727704%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e76717700%_))))
                                      (if (gx#stx-pair? _%tl76737707%_)
                                          (let ((_%e76747710%_
                                                 (gx#syntax-e _%tl76737707%_)))
                                            (let ((_%tl76767717%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e76747710%_)))
                                                  (_%hd76757714%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e76747710%_))))
                                              (if (gx#stx-null? _%tl76767717%_)
                                                  (_%__kont1937319374%_
                                                   _%hd76727704%_)
                                                  (_%__kont1937519376%_))))
                                          (_%__kont1937519376%_))))
                                  (_%__kont1937519376%_)))))
                        _%tl76307650%_
                        _%hd76297647%_)))
                   (_%g76247636%_ _%g76257640%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g76237739%_ _%L7541%_))
                                             (if (eq? (gx#stx-e _%L7543%_)
                                                      '#!key)
                                                 (let* ((_%g77457757%_
                                                         (lambda (_%g77467753%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g77467753%_)))
                                                        (_%g77447788%_
                                                         (lambda (_%g77467761%_)
                                                           (if (gx#stx-pair?
                                                                _%g77467761%_)
                                                               (let ((_%e77497764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%g77467761%_)))
                         (let ((_%hd77507768%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e77497764%_)))
                               (_%tl77517771%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e77497764%_))))
                           ((lambda (_%L7774%_ _%L7776%_)
                              (_%lp7493%_
                               _%L7774%_
                               (cons _%L7776%_ _%ids7498%_)))
                            _%tl77517771%_
                            _%hd77507768%_)))
                       (_%g77457757%_ _%g77467761%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g77447788%_ _%L7541%_))
                                                 (error '"BUG: check-duplicate-bindings"
                                                        _%stx5284%_
                                                        _%rest7496%_)))))))
                              (_%__kont1939919400%_
                               (lambda ()
                                 (gx#check-duplicate-identifiers
                                  (if (gx#stx-null? _%rest7496%_)
                                      _%ids7498%_
                                      (cons _%rest7496%_ _%ids7498%_))
                                  _%stx5284%_))))
                          (if (gx#stx-pair? _%__stx1939419395%_)
                              (let ((_%e75057531%_
                                     (gx#syntax-e _%__stx1939419395%_)))
                                (let ((_%tl75077538%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e75057531%_)))
                                      (_%hd75067535%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e75057531%_))))
                                  (_%__kont1939719398%_
                                   _%tl75077538%_
                                   _%hd75067535%_)))
                              (_%__kont1939919400%_)))))))
                 (_%generate-opt-primary5294%_
                  (lambda (_%pre7282%_ _%opt7284%_ _%tail7285%_ _%body7286%_)
                    (let* ((_%g72887329%_
                            (lambda (_%g72897325%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g72897325%_)))
                           (_%g72877486%_
                            (lambda (_%g72897333%_)
                              (if (gx#stx-pair? _%g72897333%_)
                                  (let ((_%e72947336%_
                                         (gx#syntax-e _%g72897333%_)))
                                    (let ((_%hd72957340%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e72947336%_)))
                                          (_%tl72967343%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e72947336%_))))
                                      (if (gx#stx-pair/null? _%hd72957340%_)
                                          (let ((_g20883_
                                                 (gx#syntax-split-splice
                                                  _%hd72957340%_
                                                  '0)))
                                            (begin
                                              (let ((_g20884_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20883_)
                                                           (##vector-length
                                                            _g20883_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20884_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20884_)))
                                              (let ((_%target72977346%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20883_
                                                        0)))
                                                    (_%tl72997349%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20883_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl72997349%_)
                                                    (letrec ((_%loop73007352%_
                                                              (lambda (_%hd72987356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%pre73047359%_)
                        (if (gx#stx-pair? _%hd72987356%_)
                            (let ((_%e73017362%_ (gx#syntax-e _%hd72987356%_)))
                              (let ((_%lp-hd73027366%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e73017362%_)))
                                    (_%lp-tl73037369%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e73017362%_))))
                                (_%loop73007352%_
                                 _%lp-tl73037369%_
                                 (cons _%lp-hd73027366%_ _%pre73047359%_))))
                            (let ((_%pre73057372%_ (reverse _%pre73047359%_)))
                              (if (gx#stx-pair? _%tl72967343%_)
                                  (let ((_%e73067376%_
                                         (gx#syntax-e _%tl72967343%_)))
                                    (let ((_%hd73077380%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e73067376%_)))
                                          (_%tl73087383%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e73067376%_))))
                                      (if (gx#stx-pair/null? _%hd73077380%_)
                                          (let ((_g20885_
                                                 (gx#syntax-split-splice
                                                  _%hd73077380%_
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
                                              (let ((_%target73097386%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20885_
                                                        0)))
                                                    (_%tl73117389%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20885_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl73117389%_)
                                                    (letrec ((_%loop73127392%_
                                                              (lambda (_%hd73107396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%opt73167399%_)
                        (if (gx#stx-pair? _%hd73107396%_)
                            (let ((_%e73137402%_ (gx#syntax-e _%hd73107396%_)))
                              (let ((_%lp-hd73147406%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e73137402%_)))
                                    (_%lp-tl73157409%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e73137402%_))))
                                (_%loop73127392%_
                                 _%lp-tl73157409%_
                                 (cons _%lp-hd73147406%_ _%opt73167399%_))))
                            (let ((_%opt73177412%_ (reverse _%opt73167399%_)))
                              (if (gx#stx-pair? _%tl73087383%_)
                                  (let ((_%e73187416%_
                                         (gx#syntax-e _%tl73087383%_)))
                                    (let ((_%hd73197420%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e73187416%_)))
                                          (_%tl73207423%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e73187416%_))))
                                      (if (gx#stx-pair? _%tl73207423%_)
                                          (let ((_%e73217426%_
                                                 (gx#syntax-e _%tl73207423%_)))
                                            (let ((_%hd73227430%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e73217426%_)))
                                                  (_%tl73237433%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e73217426%_))))
                                              (if (gx#stx-null? _%tl73237433%_)
                                                  ((lambda (_%L7436%_
                                                            _%L7438%_
                                                            _%L7439%_
                                                            _%L7440%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda%)
                                                           (cons (foldr (lambda (_%g74697474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _%g74707477%_)
                                  (cons _%g74697474%_ _%g74707477%_))
                                (foldr (lambda (_%g74717480%_ _%g74727483%_)
                                         (cons _%g74717480%_ _%g74727483%_))
                                       _%L7438%_
                                       _%L7439%_)
                                _%L7440%_)
                         _%L7436%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%hd73227430%_
                                                   _%hd73197420%_
                                                   _%opt73177412%_
                                                   _%pre73057372%_)
                                                  (_%g72887329%_
                                                   _%g72897333%_))))
                                          (_%g72887329%_ _%g72897333%_))))
                                  (_%g72887329%_ _%g72897333%_)))))))
              (_%loop73127392%_ _%target73097386%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g72887329%_
                                                     _%g72897333%_)))))
                                          (_%g72887329%_ _%g72897333%_))))
                                  (_%g72887329%_ _%g72897333%_)))))))
              (_%loop73007352%_ _%target72977346%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g72887329%_
                                                     _%g72897333%_)))))
                                          (_%g72887329%_ _%g72897333%_))))
                                  (_%g72887329%_ _%g72897333%_)))))
                      (_%g72877486%_
                       (list _%pre7282%_
                             (map car _%opt7284%_)
                             _%tail7285%_
                             _%body7286%_)))))
                 (_%generate-opt-dispatch5295%_
                  (lambda (_%primary7276%_
                           _%pre7278%_
                           _%opt7279%_
                           _%tail7280%_)
                    (cons (list _%pre7278%_
                                (_%generate-opt-clause5297%_
                                 _%primary7276%_
                                 _%pre7278%_
                                 _%opt7279%_))
                          (_%generate-opt-dispatch*5296%_
                           _%primary7276%_
                           _%pre7278%_
                           _%opt7279%_
                           _%tail7280%_))))
                 (_%generate-opt-dispatch*5296%_
                  (lambda (_%primary6825%_
                           _%pre6827%_
                           _%opt6828%_
                           _%tail6829%_)
                    (let _%recur6831%_ ((_%opt-rest6834%_ _%opt6828%_)
                                        (_%right6836%_ '()))
                      (if (pair? _%opt-rest6834%_)
                          (let* ((_%hd6840%_ (caar _%opt-rest6834%_))
                                 (_%rest6843%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%opt-rest6834%_)))
                                 (_%right*6846%_
                                  (cons _%hd6840%_ _%right6836%_))
                                 (_%g68496866%_
                                  (lambda (_%g68506862%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g68506862%_)))
                                 (_%g68487050%_
                                  (lambda (_%g68506870%_)
                                    (if (gx#stx-pair/null? _%g68506870%_)
                                        (let ((_g20887_
                                               (gx#syntax-split-splice
                                                _%g68506870%_
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
                                            (let ((_%target68526873%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g20887_
                                                      0)))
                                                  (_%tl68546876%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g20887_
                                                      1))))
                                              (if (gx#stx-null? _%tl68546876%_)
                                                  (letrec ((_%loop68556879%_
                                                            (lambda (_%hd68536883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%pre-bind68596886%_)
                      (if (gx#stx-pair? _%hd68536883%_)
                          (let ((_%e68566889%_ (gx#syntax-e _%hd68536883%_)))
                            (let ((_%lp-hd68576893%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e68566889%_)))
                                  (_%lp-tl68586896%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e68566889%_))))
                              (_%loop68556879%_
                               _%lp-tl68586896%_
                               (cons _%lp-hd68576893%_ _%pre-bind68596886%_))))
                          (let ((_%pre-bind68606899%_
                                 (reverse _%pre-bind68596886%_)))
                            ((lambda (_%L6903%_)
                               (let* ((_%g69256942%_
                                       (lambda (_%g69266938%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g69266938%_)))
                                      (_%g69247046%_
                                       (lambda (_%g69266946%_)
                                         (if (gx#stx-pair/null? _%g69266946%_)
                                             (let ((_g20889_
                                                    (gx#syntax-split-splice
                                                     _%g69266946%_
                                                     '0)))
                                               (begin
                                                 (let ((_g20890_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g20889_)
                                                              (##vector-length
                                                               _g20889_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g20890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g20890_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target69286949%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g20889_
                                                           0)))
                                                       (_%tl69306952%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g20889_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl69306952%_)
                                                       (letrec ((_%loop69316955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd69296959%_ _%opt-bind69356962%_)
                           (if (gx#stx-pair? _%hd69296959%_)
                               (let ((_%e69326965%_
                                      (gx#syntax-e _%hd69296959%_)))
                                 (let ((_%lp-hd69336969%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e69326965%_)))
                                       (_%lp-tl69346972%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e69326965%_))))
                                   (_%loop69316955%_
                                    _%lp-tl69346972%_
                                    (cons _%lp-hd69336969%_
                                          _%opt-bind69356962%_))))
                               (let ((_%opt-bind69366975%_
                                      (reverse _%opt-bind69356962%_)))
                                 ((lambda (_%L6979%_)
                                    (let* ((_%g69967004%_
                                            (lambda (_%g69977000%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g69977000%_)))
                                           (_%g69957042%_
                                            (lambda (_%g69977008%_)
                                              ((lambda (_%L7011%_)
                                                 (cons (list (foldr (lambda (_%g70257030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g70267033%_)
                              (cons _%g70257030%_ _%g70267033%_))
                            (foldr (lambda (_%g70277036%_ _%g70287039%_)
                                     (cons _%g70277036%_ _%g70287039%_))
                                   (cons _%L7011%_ '())
                                   _%L6979%_)
                            _%L6903%_)
                     (_%generate-opt-clause5297%_
                      _%primary6825%_
                      (foldr cons (reverse _%right*6846%_) _%pre6827%_)
                      _%rest6843%_))
               (_%recur6831%_ _%rest6843%_ _%right*6846%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g69977008%_))))
                                      (_%g69957042%_ _%hd6840%_)))
                                  _%opt-bind69366975%_))))))
                 (_%loop69316955%_ _%target69286949%_ '()))
               (_%g69256942%_ _%g69266946%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g69256942%_ _%g69266946%_)))))
                                 (_%g69247046%_ (reverse _%right6836%_))))
                             _%pre-bind68606899%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop68556879%_
                                                     _%target68526873%_
                                                     '()))
                                                  (_%g68496866%_
                                                   _%g68506870%_)))))
                                        (_%g68496866%_ _%g68506870%_)))))
                            (_%g68487050%_ _%pre6827%_))
                          (if (gx#stx-null? _%tail6829%_)
                              '()
                              (let* ((_%g70587099%_
                                      (lambda (_%g70597095%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g70597095%_)))
                                     (_%g70577272%_
                                      (lambda (_%g70597103%_)
                                        (if (gx#stx-pair? _%g70597103%_)
                                            (let ((_%e70647106%_
                                                   (gx#syntax-e
                                                    _%g70597103%_)))
                                              (let ((_%hd70657110%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e70647106%_)))
                                                    (_%tl70667113%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e70647106%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd70657110%_)
                                                    (let ((_g20891_
                                                           (gx#syntax-split-splice
                                                            _%hd70657110%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20892_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g20891_)
                             (##vector-length _g20891_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g20892_ 2)))
                      (error "Context expects 2 values" _g20892_)))
                (let ((_%target70677116%_
                       (let () (declare (not safe)) (##vector-ref _g20891_ 0)))
                      (_%tl70697119%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g20891_ 1))))
                  (if (gx#stx-null? _%tl70697119%_)
                      (letrec ((_%loop70707122%_
                                (lambda (_%hd70687126%_ _%pre70747129%_)
                                  (if (gx#stx-pair? _%hd70687126%_)
                                      (let ((_%e70717132%_
                                             (gx#syntax-e _%hd70687126%_)))
                                        (let ((_%lp-hd70727136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e70717132%_)))
                                              (_%lp-tl70737139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e70717132%_))))
                                          (_%loop70707122%_
                                           _%lp-tl70737139%_
                                           (cons _%lp-hd70727136%_
                                                 _%pre70747129%_))))
                                      (let ((_%pre70757142%_
                                             (reverse _%pre70747129%_)))
                                        (if (gx#stx-pair? _%tl70667113%_)
                                            (let ((_%e70767146%_
                                                   (gx#syntax-e
                                                    _%tl70667113%_)))
                                              (let ((_%hd70777150%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e70767146%_)))
                                                    (_%tl70787153%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e70767146%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd70777150%_)
                                                    (let ((_g20893_
                                                           (gx#syntax-split-splice
                                                            _%hd70777150%_
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
                (let ((_%target70797156%_
                       (let () (declare (not safe)) (##vector-ref _g20893_ 0)))
                      (_%tl70817159%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g20893_ 1))))
                  (if (gx#stx-null? _%tl70817159%_)
                      (letrec ((_%loop70827162%_
                                (lambda (_%hd70807166%_ _%opt70867169%_)
                                  (if (gx#stx-pair? _%hd70807166%_)
                                      (let ((_%e70837172%_
                                             (gx#syntax-e _%hd70807166%_)))
                                        (let ((_%lp-hd70847176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e70837172%_)))
                                              (_%lp-tl70857179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e70837172%_))))
                                          (_%loop70827162%_
                                           _%lp-tl70857179%_
                                           (cons _%lp-hd70847176%_
                                                 _%opt70867169%_))))
                                      (let ((_%opt70877182%_
                                             (reverse _%opt70867169%_)))
                                        (if (gx#stx-pair? _%tl70787153%_)
                                            (let ((_%e70887186%_
                                                   (gx#syntax-e
                                                    _%tl70787153%_)))
                                              (let ((_%hd70897190%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e70887186%_)))
                                                    (_%tl70907193%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e70887186%_))))
                                                (if (gx#stx-pair?
                                                     _%tl70907193%_)
                                                    (let ((_%e70917196%_
                                                           (gx#syntax-e
                                                            _%tl70907193%_)))
                                                      (let ((_%hd70927200%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e70917196%_)))
                    (_%tl70937203%_
                     (let () (declare (not safe)) (##cdr _%e70917196%_))))
                (if (gx#stx-null? _%tl70937203%_)
                    ((lambda (_%L7206%_ _%L7208%_ _%L7209%_ _%L7210%_)
                       (list (list (foldr (lambda (_%g72397244%_ _%g72407247%_)
                                            (cons _%g72397244%_ _%g72407247%_))
                                          (foldr (lambda (_%g72417250%_
                                                          _%g72427253%_)
                                                   (cons _%g72417250%_
                                                         _%g72427253%_))
                                                 _%L7208%_
                                                 _%L7209%_)
                                          _%L7210%_)
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'apply)
                                          (cons _%L7206%_
                                                (foldr (lambda (_%g72557260%_
                                                                _%g72567263%_)
                                                         (cons _%g72557260%_
                                                               _%g72567263%_))
                                                       (foldr (lambda (_%g72577266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g72587269%_)
                        (cons _%g72577266%_ _%g72587269%_))
                      (cons _%L7208%_ '())
                      _%L7209%_)
               _%L7210%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (gx#stx-source _%stx5284%_)))))
                     _%hd70927200%_
                     _%hd70897190%_
                     _%opt70877182%_
                     _%pre70757142%_)
                    (_%g70587099%_ _%g70597103%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g70587099%_
                                                     _%g70597103%_))))
                                            (_%g70587099%_ _%g70597103%_)))))))
                        (_%loop70827162%_ _%target70797156%_ '()))
                      (_%g70587099%_ _%g70597103%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g70587099%_
                                                     _%g70597103%_))))
                                            (_%g70587099%_ _%g70597103%_)))))))
                        (_%loop70707122%_ _%target70677116%_ '()))
                      (_%g70587099%_ _%g70597103%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g70587099%_
                                                     _%g70597103%_))))
                                            (_%g70587099%_ _%g70597103%_)))))
                                (_%g70577272%_
                                 (list _%pre6827%_
                                       (reverse _%right6836%_)
                                       _%tail6829%_
                                       _%primary6825%_))))))))
                 (_%generate-opt-clause5297%_
                  (lambda (_%primary6523%_ _%pre6525%_ _%opt6526%_)
                    (let _%recur6528%_ ((_%opt-rest6531%_ _%opt6526%_)
                                        (_%right6533%_ '()))
                      (if (pair? _%opt-rest6531%_)
                          (let* ((_%hd6535%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%opt-rest6531%_)))
                                 (_%rest6538%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%opt-rest6531%_)))
                                 (_%g65416549%_
                                  (lambda (_%g65426545%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g65426545%_)))
                                 (_%g65406638%_
                                  (lambda (_%g65426553%_)
                                    ((lambda (_%L6556%_)
                                       (let* ((_%g65726580%_
                                               (lambda (_%g65736576%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g65736576%_)))
                                              (_%g65716634%_
                                               (lambda (_%g65736584%_)
                                                 ((lambda (_%L6587%_)
                                                    (let* ((_%g66006608%_
                                                            (lambda (_%g66016604%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g66016604%_)))
                                                           (_%g65996630%_
                                                            (lambda (_%g66016612%_)
                                                              ((lambda (_%L6615%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons (cons (cons (cons _%L6556%_ '())
                                                 (cons _%L6587%_ '()))
                                           '())
                                     (cons _%L6615%_ '()))))
                       _%g66016612%_))))
              (_%g65996630%_
               (_%recur6528%_ _%rest6538%_ (cons _%L6556%_ _%right6533%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g65736584%_))))
                                         (_%g65716634%_ (cdr _%hd6535%_))))
                                     _%g65426553%_))))
                            (_%g65406638%_ (car _%hd6535%_)))
                          (let* ((_%g66426679%_
                                  (lambda (_%g66436675%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g66436675%_)))
                                 (_%g66416821%_
                                  (lambda (_%g66436683%_)
                                    (if (gx#stx-pair? _%g66436683%_)
                                        (let ((_%e66476686%_
                                               (gx#syntax-e _%g66436683%_)))
                                          (let ((_%hd66486690%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e66476686%_)))
                                                (_%tl66496693%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e66476686%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd66486690%_)
                                                (let ((_g20895_
                                                       (gx#syntax-split-splice
                                                        _%hd66486690%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20896_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20895_)
                         (##vector-length _g20895_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20896_ 2)))
                  (error "Context expects 2 values" _g20896_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target66506696%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20895_
                                                              0)))
                                                          (_%tl66526699%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20895_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl66526699%_)
                                                          (letrec ((_%loop66536702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd66516706%_ _%pre66576709%_)
                              (if (gx#stx-pair? _%hd66516706%_)
                                  (let ((_%e66546712%_
                                         (gx#syntax-e _%hd66516706%_)))
                                    (let ((_%lp-hd66556716%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e66546712%_)))
                                          (_%lp-tl66566719%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e66546712%_))))
                                      (_%loop66536702%_
                                       _%lp-tl66566719%_
                                       (cons _%lp-hd66556716%_
                                             _%pre66576709%_))))
                                  (let ((_%pre66586722%_
                                         (reverse _%pre66576709%_)))
                                    (if (gx#stx-pair? _%tl66496693%_)
                                        (let ((_%e66596726%_
                                               (gx#syntax-e _%tl66496693%_)))
                                          (let ((_%hd66606730%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e66596726%_)))
                                                (_%tl66616733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e66596726%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd66606730%_)
                                                (let ((_g20897_
                                                       (gx#syntax-split-splice
                                                        _%hd66606730%_
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
                                                    (let ((_%target66626736%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20897_
                                                              0)))
                                                          (_%tl66646739%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20897_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl66646739%_)
                                                          (letrec ((_%loop66656742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd66636746%_ _%opt66696749%_)
                              (if (gx#stx-pair? _%hd66636746%_)
                                  (let ((_%e66666752%_
                                         (gx#syntax-e _%hd66636746%_)))
                                    (let ((_%lp-hd66676756%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e66666752%_)))
                                          (_%lp-tl66686759%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e66666752%_))))
                                      (_%loop66656742%_
                                       _%lp-tl66686759%_
                                       (cons _%lp-hd66676756%_
                                             _%opt66696749%_))))
                                  (let ((_%opt66706762%_
                                         (reverse _%opt66696749%_)))
                                    (if (gx#stx-pair? _%tl66616733%_)
                                        (let ((_%e66716766%_
                                               (gx#syntax-e _%tl66616733%_)))
                                          (let ((_%hd66726770%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e66716766%_)))
                                                (_%tl66736773%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e66716766%_))))
                                            (if (gx#stx-null? _%tl66736773%_)
                                                ((lambda (_%L6776%_
                                                          _%L6778%_
                                                          _%L6779%_)
                                                   (gx#stx-wrap-source
                                                    (cons _%L6776%_
                                                          (foldr (lambda (_%g68046809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g68056812%_)
                           (cons _%g68046809%_ _%g68056812%_))
                         (foldr (lambda (_%g68066815%_ _%g68076818%_)
                                  (cons _%g68066815%_ _%g68076818%_))
                                '()
                                _%L6778%_)
                         _%L6779%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _%stx5284%_)))
                                                 _%hd66726770%_
                                                 _%opt66706762%_
                                                 _%pre66586722%_)
                                                (_%g66426679%_
                                                 _%g66436683%_))))
                                        (_%g66426679%_ _%g66436683%_)))))))
                    (_%loop66656742%_ _%target66626736%_ '()))
                  (_%g66426679%_ _%g66436683%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g66426679%_
                                                 _%g66436683%_))))
                                        (_%g66426679%_ _%g66436683%_)))))))
                    (_%loop66536702%_ _%target66506696%_ '()))
                  (_%g66426679%_ _%g66436683%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g66426679%_
                                                 _%g66436683%_))))
                                        (_%g66426679%_ _%g66436683%_)))))
                            (_%g66416821%_
                             (list _%pre6525%_
                                   (reverse _%right6533%_)
                                   _%primary6523%_)))))))
                 (_%generate-kw-primary5298%_
                  (lambda (_%key5899%_
                           _%kwargs5901%_
                           _%args5902%_
                           _%body5903%_)
                    (letrec ((_%make-body5905%_
                              (lambda (_%kwargs6392%_ _%kwvals6394%_)
                                (if (pair? _%kwargs6392%_)
                                    (let* ((_%kwarg6396%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%kwargs6392%_)))
                                           (_%var6399%_ (cadr _%kwarg6396%_))
                                           (_%default6402%_
                                            (caddr _%kwarg6396%_))
                                           (_%kwval6405%_ (car _%kwvals6394%_))
                                           (_%rest-kwargs6408%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%kwargs6392%_)))
                                           (_%rest-kwvals6411%_
                                            (cdr _%kwvals6394%_))
                                           (_%g64166439%_
                                            (lambda (_%g64176435%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g64176435%_)))
                                           (_%g64156519%_
                                            (lambda (_%g64176443%_)
                                              (if (gx#stx-pair? _%g64176443%_)
                                                  (let ((_%e64226446%_
                                                         (gx#syntax-e
                                                          _%g64176443%_)))
                                                    (let ((_%hd64236450%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e64226446%_)))
                                                          (_%tl64246453%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e64226446%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl64246453%_)
                                                          (let ((_%e64256456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl64246453%_)))
                    (let ((_%hd64266460%_
                           (let () (declare (not safe)) (##car _%e64256456%_)))
                          (_%tl64276463%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e64256456%_))))
                      (if (gx#stx-pair? _%tl64276463%_)
                          (let ((_%e64286466%_ (gx#syntax-e _%tl64276463%_)))
                            (let ((_%hd64296470%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e64286466%_)))
                                  (_%tl64306473%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e64286466%_))))
                              (if (gx#stx-pair? _%tl64306473%_)
                                  (let ((_%e64316476%_
                                         (gx#syntax-e _%tl64306473%_)))
                                    (let ((_%hd64326480%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e64316476%_)))
                                          (_%tl64336483%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e64316476%_))))
                                      (if (gx#stx-null? _%tl64336483%_)
                                          ((lambda (_%L6486%_
                                                    _%L6488%_
                                                    _%L6489%_
                                                    _%L6490%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'let-values)
                                                   (cons (cons (cons (cons _%L6490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'eq?)
                                                     (cons _%L6489%_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'absent-value)
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L6488%_
                                                     (cons _%L6489%_ '()))))
                                   '()))
                       '())
                 (cons _%L6486%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd64326480%_
                                           _%hd64296470%_
                                           _%hd64266460%_
                                           _%hd64236450%_)
                                          (_%g64166439%_ _%g64176443%_))))
                                  (_%g64166439%_ _%g64176443%_))))
                          (_%g64166439%_ _%g64176443%_))))
                  (_%g64166439%_ _%g64176443%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g64166439%_
                                                   _%g64176443%_)))))
                                      (_%g64156519%_
                                       (list _%var6399%_
                                             _%kwval6405%_
                                             _%default6402%_
                                             (_%make-body5905%_
                                              _%rest-kwargs6408%_
                                              _%rest-kwvals6411%_))))
                                    (cons 'begin _%body5903%_))))
                             (_%make-main5907%_
                              (lambda ()
                                (let* ((_%g62006208%_
                                        (lambda (_%g62016204%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g62016204%_)))
                                       (_%g61996384%_
                                        (lambda (_%g62016212%_)
                                          ((lambda (_%L6215%_)
                                             (let* ((_%g62276244%_
                                                     (lambda (_%g62286240%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g62286240%_)))
                                                    (_%g62266380%_
                                                     (lambda (_%g62286248%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g62286248%_)
                                                           (let ((_g20899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g62286248%_ '0)))
                     (begin
                       (let ((_g20900_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g20899_)
                                    (##vector-length _g20899_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g20900_ 2)))
                             (error "Context expects 2 values" _g20900_)))
                       (let ((_%target62306251%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g20899_ 0)))
                             (_%tl62326254%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g20899_ 1))))
                         (if (gx#stx-null? _%tl62326254%_)
                             (letrec ((_%loop62336257%_
                                       (lambda (_%hd62316261%_
                                                _%kwval62376264%_)
                                         (if (gx#stx-pair? _%hd62316261%_)
                                             (let ((_%e62346267%_
                                                    (gx#syntax-e
                                                     _%hd62316261%_)))
                                               (let ((_%lp-hd62356271%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e62346267%_)))
                                                     (_%lp-tl62366274%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e62346267%_))))
                                                 (_%loop62336257%_
                                                  _%lp-tl62366274%_
                                                  (cons _%lp-hd62356271%_
                                                        _%kwval62376264%_))))
                                             (let ((_%kwval62386277%_
                                                    (reverse _%kwval62376264%_)))
                                               ((lambda (_%L6281%_)
                                                  (let* ((_%g62986306%_
                                                          (lambda (_%g62996302%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g62996302%_)))
                                                         (_%g62976376%_
                                                          (lambda (_%g62996310%_)
                                                            ((lambda (_%L6313%_)
                                                               (let* ((_%g63266334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g63276330%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g63276330%_)))
                              (_%g63256364%_
                               (lambda (_%g63276338%_)
                                 ((lambda (_%L6341%_)
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (cons _%L6215%_
                                                       (foldr (lambda (_%g63556358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g63566361%_)
                        (cons _%g63556358%_ _%g63566361%_))
                      _%L6313%_
                      _%L6281%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L6341%_ '())))
                                     (gx#stx-source _%stx5284%_)))
                                  _%g63276338%_))))
                         (_%g63256364%_
                          (_%make-body5905%_
                           _%kwargs5901%_
                           (foldr (lambda (_%g63676370%_ _%g63686373%_)
                                    (cons _%g63676370%_ _%g63686373%_))
                                  '()
                                  _%L6281%_)))))
                     _%g62996310%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g62976376%_
                                                     _%args5902%_)))
                                                _%kwval62386277%_))))))
                               (_%loop62336257%_ _%target62306251%_ '()))
                             (_%g62276244%_ _%g62286248%_)))))
                   (_%g62276244%_ _%g62286248%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g62266380%_
                                                (gx#gentemps
                                                 (map cadr _%kwargs5901%_)))))
                                           _%g62016212%_))))
                                  (_%g61996384%_
                                   (let ((_%$e6388%_ _%key5899%_))
                                     (if _%$e6388%_
                                         _%$e6388%_
                                         (gx#syntax-local-introduce
                                          '@@keywords)))))))
                             (_%make-dispatch5908%_
                              (lambda (_%main6008%_)
                                (let* ((_%g60116019%_
                                        (lambda (_%g60126015%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g60126015%_)))
                                       (_%g60106190%_
                                        (lambda (_%g60126023%_)
                                          ((lambda (_%L6026%_)
                                             (let* ((_%g60386055%_
                                                     (lambda (_%g60396051%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g60396051%_)))
                                                    (_%g60376151%_
                                                     (lambda (_%g60396059%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g60396059%_)
                                                           (let ((_g20901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g60396059%_ '0)))
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
                       (let ((_%target60416062%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g20901_ 0)))
                             (_%tl60436065%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g20901_ 1))))
                         (if (gx#stx-null? _%tl60436065%_)
                             (letrec ((_%loop60446068%_
                                       (lambda (_%hd60426072%_
                                                _%get-kw60486075%_)
                                         (if (gx#stx-pair? _%hd60426072%_)
                                             (let ((_%e60456078%_
                                                    (gx#syntax-e
                                                     _%hd60426072%_)))
                                               (let ((_%lp-hd60466082%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e60456078%_)))
                                                     (_%lp-tl60476085%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e60456078%_))))
                                                 (_%loop60446068%_
                                                  _%lp-tl60476085%_
                                                  (cons _%lp-hd60466082%_
                                                        _%get-kw60486075%_))))
                                             (let ((_%get-kw60496088%_
                                                    (reverse _%get-kw60486075%_)))
                                               ((lambda (_%L6092%_)
                                                  (let* ((_%g61096117%_
                                                          (lambda (_%g61106113%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g61106113%_)))
                                                         (_%g61086147%_
                                                          (lambda (_%g61106121%_)
                                                            ((lambda (_%L6124%_)
                                                               (gx#stx-wrap-source
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'lambda)
                              (cons (cons _%L6026%_
                                          (gx#datum->syntax '#f 'args))
                                    (cons (cons (gx#datum->syntax '#f 'apply)
                                                (cons _%L6124%_
                                                      (cons _%L6026%_
                                                            (foldr (lambda (_%g61386141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g61396144%_)
                             (cons _%g61386141%_ _%g61396144%_))
                           (cons (gx#datum->syntax '#f 'args) '())
                           _%L6092%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (gx#stx-source _%stx5284%_)))
                     _%g61106121%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g61086147%_
                                                     _%main6008%_)))
                                                _%get-kw60496088%_))))))
                               (_%loop60446068%_ _%target60416062%_ '()))
                             (_%g60386055%_ _%g60396059%_)))))
                   (_%g60386055%_ _%g60396059%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g60376151%_
                                                (map (lambda (_%kwarg6155%_)
                                                       (let* ((_%g61586166%_
                                                               (lambda (_%g61596162%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g61596162%_)))
                      (_%g61576186%_
                       (lambda (_%g61596170%_)
                         ((lambda (_%L6173%_)
                            (cons (gx#datum->syntax '#f 'symbolic-table-ref)
                                  (cons _%L6026%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%L6173%_ '()))
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'absent-value)
                                                    '())))))
                          _%g61596170%_))))
                 (_%g61576186%_ (car _%kwarg6155%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%kwargs5901%_))))
                                           _%g60126023%_))))
                                  (_%g60106190%_
                                   (let ((_%$e6194%_ _%key5899%_))
                                     (if _%$e6194%_
                                         _%$e6194%_
                                         (gx#syntax-local-introduce
                                          '@@keywords))))))))
                      (let* ((_%g59105918%_
                              (lambda (_%g59115914%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g59115914%_)))
                             (_%g59096004%_
                              (lambda (_%g59115922%_)
                                ((lambda (_%L5925%_)
                                   (let* ((_%g59385946%_
                                           (lambda (_%g59395942%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g59395942%_)))
                                          (_%g59376000%_
                                           (lambda (_%g59395950%_)
                                             ((lambda (_%L5953%_)
                                                (let* ((_%g59665974%_
                                                        (lambda (_%g59675970%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g59675970%_)))
                                                       (_%g59655996%_
                                                        (lambda (_%g59675978%_)
                                                          ((lambda (_%L5981%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons (cons (cons (cons _%L5925%_ '())
                                             (cons _%L5981%_ '()))
                                       '())
                                 (cons _%L5953%_ '()))))
                   _%g59675978%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g59655996%_
                                                   (_%make-main5907%_))))
                                              _%g59395950%_))))
                                     (_%g59376000%_
                                      (_%make-dispatch5908%_ _%L5925%_))))
                                 _%g59115922%_))))
                        (_%g59096004%_ (gx#genident 'kw-lambda-main))))))
                 (_%generate-kw-dispatch5299%_
                  (lambda (_%primary5812%_ _%kwargs5814%_ _%strict?5815%_)
                    (let* ((_%g58175836%_
                            (lambda (_%g58185832%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g58185832%_)))
                           (_%g58165895%_
                            (lambda (_%g58185840%_)
                              (if (gx#stx-pair? _%g58185840%_)
                                  (let ((_%e58225843%_
                                         (gx#syntax-e _%g58185840%_)))
                                    (let ((_%hd58235847%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e58225843%_)))
                                          (_%tl58245850%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e58225843%_))))
                                      (if (gx#stx-pair? _%tl58245850%_)
                                          (let ((_%e58255853%_
                                                 (gx#syntax-e _%tl58245850%_)))
                                            (let ((_%hd58265857%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e58255853%_)))
                                                  (_%tl58275860%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e58255853%_))))
                                              (if (gx#stx-pair? _%tl58275860%_)
                                                  (let ((_%e58285863%_
                                                         (gx#syntax-e
                                                          _%tl58275860%_)))
                                                    (let ((_%hd58295867%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e58285863%_)))
                                                          (_%tl58305870%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e58285863%_))))
                                                      (if (gx#stx-null?
                                                           _%tl58305870%_)
                                                          ((lambda (_%L5873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L5875%_
                            _%L5876%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%L5873%_
                                 (cons (cons (gx#datum->syntax '#f 'apply)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'keyword-dispatch)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%L5876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L5875%_ (cons _%L5873%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _%hd58295867%_
                   _%hd58265857%_
                   _%hd58235847%_)
                  (_%g58175836%_ _%g58185840%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g58175836%_
                                                   _%g58185840%_))))
                                          (_%g58175836%_ _%g58185840%_))))
                                  (_%g58175836%_ _%g58185840%_)))))
                      (_%g58165895%_
                       (list (if _%strict?5815%_
                                 (_%generate-kw-table5300%_
                                  (map car _%kwargs5814%_))
                                 '#f)
                             _%primary5812%_
                             (gx#genident 'args))))))
                 (_%generate-kw-table5300%_
                  (lambda (_%kws5786%_)
                    (let _%rehash5789%_ ((_%pht5792%_
                                          (let ((__tmp20907
                                                 (length _%kws5786%_)))
                                            (declare (not safe))
                                            (##make-vector __tmp20907 '#f))))
                      (let _%lp5795%_ ((_%rest5798%_ _%kws5786%_))
                        (if (pair? _%rest5798%_)
                            (let* ((_%key5801%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest5798%_)))
                                   (_%rest5804%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest5798%_)))
                                   (_%pos5807%_
                                    (let ((__tmp20904
                                           (keyword-hash _%key5801%_))
                                          (__tmp20903
                                           (vector-length _%pht5792%_)))
                                      (declare (not safe))
                                      (##fxmodulo __tmp20904 __tmp20903))))
                              (if (vector-ref _%pht5792%_ _%pos5807%_)
                                  (if (let ((__tmp20905
                                             (vector-length _%pht5792%_)))
                                        (declare (not safe))
                                        (##fx< __tmp20905 '8192))
                                      (_%rehash5789%_
                                       (make-vector
                                        (quotient
                                         (let ((__tmp20906
                                                (vector-length _%pht5792%_)))
                                           (declare (not safe))
                                           (##fx* '3 __tmp20906))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _%kws5786%_))
                                  (begin
                                    (vector-set!
                                     _%pht5792%_
                                     _%pos5807%_
                                     _%key5801%_)
                                    (_%lp5795%_ _%rest5804%_))))
                            _%pht5792%_))))))
          (let* ((_%__stx1941019411%_ _%stx5284%_)
                 (_%g53045335%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1941019411%_))))
            (let ((_%__kont1941319414%_
                   (lambda (_%L5767%_ _%L5769%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%L5769%_ _%L5767%_))))
                  (_%__kont1941519416%_
                   (lambda (_%L5539%_ _%L5541%_)
                     (let ((_g20908_ (_%opt-lambda-split5290%_ _%L5541%_)))
                       (begin
                         (let ((_g20909_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g20908_)
                                      (##vector-length _g20908_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g20909_ 3)))
                               (error "Context expects 3 values" _g20909_)))
                         (let ((_%pre5554%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g20908_ 0)))
                               (_%opt5556%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g20908_ 1)))
                               (_%tail5557%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g20908_ 2))))
                           (let* ((_%g55595567%_
                                   (lambda (_%g55605563%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g55605563%_)))
                                  (_%g55585736%_
                                   (lambda (_%g55605571%_)
                                     ((lambda (_%L5574%_)
                                        (let* ((_%g55875595%_
                                                (lambda (_%g55885591%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g55885591%_)))
                                               (_%g55865732%_
                                                (lambda (_%g55885599%_)
                                                  ((lambda (_%L5602%_)
                                                     (let* ((_%g56155632%_
                                                             (lambda (_%g56165628%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g56165628%_)))
                                                            (_%g56145728%_
                                                             (lambda (_%g56165636%_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g56165636%_)
                           (let ((_g20910_
                                  (gx#syntax-split-splice _%g56165636%_ '0)))
                             (begin
                               (let ((_g20911_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g20910_)
                                            (##vector-length _g20910_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g20911_ 2)))
                                     (error "Context expects 2 values"
                                            _g20911_)))
                               (let ((_%target56185639%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g20910_ 0)))
                                     (_%tl56205642%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g20910_ 1))))
                                 (if (gx#stx-null? _%tl56205642%_)
                                     (letrec ((_%loop56215645%_
                                               (lambda (_%hd56195649%_
                                                        _%clause56255652%_)
                                                 (if (gx#stx-pair?
                                                      _%hd56195649%_)
                                                     (let ((_%e56225655%_
                                                            (gx#syntax-e
                                                             _%hd56195649%_)))
                                                       (let ((_%lp-hd56235659%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e56225655%_)))
                     (_%lp-tl56245662%_
                      (let () (declare (not safe)) (##cdr _%e56225655%_))))
                 (_%loop56215645%_
                  _%lp-tl56245662%_
                  (cons _%lp-hd56235659%_ _%clause56255652%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause56265665%_
                                                            (reverse _%clause56255652%_)))
                                                       ((lambda (_%L5669%_)
                                                          (let* ((_%g56865694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g56875690%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g56875690%_)))
                         (_%g56855716%_
                          (lambda (_%g56875698%_)
                            ((lambda (_%L5701%_)
                               (cons (gx#datum->syntax '#f 'let-values)
                                     (cons (cons (cons (cons _%L5574%_ '())
                                                       (cons _%L5602%_ '()))
                                                 '())
                                           (cons _%L5701%_ '()))))
                             _%g56875698%_))))
                    (_%g56855716%_
                     (gx#stx-wrap-source
                      (cons (gx#datum->syntax '#f 'case-lambda)
                            (foldr (lambda (_%g57195722%_ _%g57205725%_)
                                     (cons _%g57195722%_ _%g57205725%_))
                                   '()
                                   _%L5669%_))
                      (gx#stx-source _%stx5284%_)))))
                _%clause56265665%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop56215645%_
                                        _%target56185639%_
                                        '()))
                                     (_%g56155632%_ _%g56165636%_)))))
                           (_%g56155632%_ _%g56165636%_)))))
               (_%g56145728%_
                (_%generate-opt-dispatch5295%_
                 _%L5574%_
                 _%pre5554%_
                 _%opt5556%_
                 _%tail5557%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g55885599%_))))
                                          (_%g55865732%_
                                           (gx#stx-wrap-source
                                            (_%generate-opt-primary5294%_
                                             _%pre5554%_
                                             _%opt5556%_
                                             _%tail5557%_
                                             _%L5539%_)
                                            (gx#stx-source _%stx5284%_)))))
                                      _%g55605571%_))))
                             (_%g55585736%_ (gx#genident 'opt-lambda))))))))
                  (_%__kont1941719418%_
                   (lambda (_%L5362%_ _%L5364%_)
                     (let* ((_%g53805387%_
                             (lambda (_%g53815383%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g53815383%_)))
                            (_%g53795508%_
                             (lambda (_%g53815391%_)
                               ((lambda ()
                                  (let ((_g20912_
                                         (_%kw-lambda-split5292%_ _%L5364%_)))
                                    (begin
                                      (let ((_g20913_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g20912_)
                                                   (##vector-length _g20912_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g20913_ 3)))
                                            (error "Context expects 3 values"
                                                   _g20913_)))
                                      (let ((_%key5400%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g20912_ 0)))
                                            (_%kwargs5402%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g20912_ 1)))
                                            (_%args5403%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g20912_ 2))))
                                        (let* ((_%g54055413%_
                                                (lambda (_%g54065409%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g54065409%_)))
                                               (_%g54045504%_
                                                (lambda (_%g54065417%_)
                                                  ((lambda (_%L5420%_)
                                                     (let* ((_%g54385446%_
                                                             (lambda (_%g54395442%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g54395442%_)))
                                                            (_%g54375500%_
                                                             (lambda (_%g54395450%_)
                                                               ((lambda (_%L5453%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g54665474%_
                                  (lambda (_%g54675470%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g54675470%_)))
                                 (_%g54655496%_
                                  (lambda (_%g54675478%_)
                                    ((lambda (_%L5481%_)
                                       (cons (gx#datum->syntax '#f 'let-values)
                                             (cons (cons (cons (cons _%L5420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _%L5453%_ '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%L5481%_ '()))))
                                     _%g54675478%_))))
                            (_%g54655496%_
                             (gx#stx-wrap-source
                              (_%generate-kw-dispatch5299%_
                               _%L5420%_
                               _%kwargs5402%_
                               (not _%key5400%_))
                              (gx#stx-source _%stx5284%_)))))
                        _%g54395450%_))))
               (_%g54375500%_
                (gx#stx-wrap-source
                 (_%generate-kw-primary5298%_
                  _%key5400%_
                  _%kwargs5402%_
                  _%args5403%_
                  _%L5362%_)
                 (gx#stx-source _%stx5284%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g54065417%_))))
                                          (_%g54045504%_
                                           (gx#genident 'kw-lambda)))))))))))
                       (_%g53795508%_
                        (_%check-duplicate-bindings5293%_ _%L5364%_))))))
              (let* ((_%__match1945519456%_
                      (lambda (_%e53245342%_
                               _%hd53255346%_
                               _%tl53265349%_
                               _%e53275352%_
                               _%hd53285356%_
                               _%tl53295359%_)
                        (let ((_%L5362%_ _%tl53295359%_)
                              (_%L5364%_ _%hd53285356%_))
                          (if (_%kw-lambda?5291%_ _%L5364%_)
                              (_%__kont1941719418%_ _%L5362%_ _%L5364%_)
                              (let () (declare (not safe)) (_%g53045335%_))))))
                     (_%__match1944319444%_
                      (lambda (_%e53165519%_
                               _%hd53175523%_
                               _%tl53185526%_
                               _%e53195529%_
                               _%hd53205533%_
                               _%tl53215536%_)
                        (let ((_%L5539%_ _%tl53215536%_)
                              (_%L5541%_ _%hd53205533%_))
                          (if (_%opt-lambda?5289%_ _%L5541%_)
                              (_%__kont1941519416%_ _%L5539%_ _%L5541%_)
                              (_%__match1945519456%_
                               _%e53165519%_
                               _%hd53175523%_
                               _%tl53185526%_
                               _%e53195529%_
                               _%hd53205533%_
                               _%tl53215536%_)))))
                     (_%__match1943119432%_
                      (lambda (_%e53085747%_
                               _%hd53095751%_
                               _%tl53105754%_
                               _%e53115757%_
                               _%hd53125761%_
                               _%tl53135764%_)
                        (let ((_%L5767%_ _%tl53135764%_)
                              (_%L5769%_ _%hd53125761%_))
                          (if (_%simple-lambda?5287%_ _%L5769%_)
                              (_%__kont1941319414%_ _%L5767%_ _%L5769%_)
                              (_%__match1944319444%_
                               _%e53085747%_
                               _%hd53095751%_
                               _%tl53105754%_
                               _%e53115757%_
                               _%hd53125761%_
                               _%tl53135764%_))))))
                (if (gx#stx-pair? _%__stx1941019411%_)
                    (let ((_%e53085747%_ (gx#syntax-e _%__stx1941019411%_)))
                      (let ((_%tl53105754%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e53085747%_)))
                            (_%hd53095751%_
                             (let ()
                               (declare (not safe))
                               (##car _%e53085747%_))))
                        (if (gx#stx-pair? _%tl53105754%_)
                            (let ((_%e53115757%_ (gx#syntax-e _%tl53105754%_)))
                              (let ((_%tl53135764%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e53115757%_)))
                                    (_%hd53125761%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e53115757%_))))
                                (_%__match1943119432%_
                                 _%e53085747%_
                                 _%hd53095751%_
                                 _%tl53105754%_
                                 _%e53115757%_
                                 _%hd53125761%_
                                 _%tl53135764%_)))
                            (let () (declare (not safe)) (_%g53045335%_)))))
                    (let () (declare (not safe)) (_%g53045335%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def|
      (lambda (_%$stx8709%_)
        (let* ((_%__stx1945819459%_ _%$stx8709%_)
               (_%g87158779%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1945819459%_))))
          (let ((_%__kont1946119462%_
                 (lambda (_%L9009%_ _%L9011%_ _%L9012%_ _%L9013%_)
                   (cons (gx#datum->syntax '#f 'def)
                         (cons (cons _%L9013%_ _%L9012%_)
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L9011%_
                                                 (foldr (lambda (_%g90359038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g90369041%_)
                  (cons _%g90359038%_ _%g90369041%_))
                '()
                _%L9009%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1946519466%_
                 (lambda (_%L8901%_ _%L8903%_ _%L8904%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L8904%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L8903%_
                                                 (foldr (lambda (_%g89238926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g89248929%_)
                  (cons _%g89238926%_ _%g89248929%_))
                '()
                _%L8901%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1946919470%_
                 (lambda (_%L8816%_ _%L8818%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L8818%_ '()) (cons _%L8816%_ '()))))))
            (let* ((_%__match1954919550%_
                    (lambda (_%e87658786%_
                             _%hd87668790%_
                             _%tl87678793%_
                             _%e87688796%_
                             _%hd87698800%_
                             _%tl87708803%_
                             _%e87718806%_
                             _%hd87728810%_
                             _%tl87738813%_)
                      (let ((_%L8816%_ _%hd87728810%_)
                            (_%L8818%_ _%hd87698800%_))
                        (if (gx#identifier? _%L8818%_)
                            (_%__kont1946919470%_ _%L8816%_ _%L8818%_)
                            (let () (declare (not safe)) (_%g87158779%_))))))
                   (_%__match1954119542%_
                    (lambda (_%e87658786%_
                             _%hd87668790%_
                             _%tl87678793%_
                             _%e87688796%_
                             _%hd87698800%_
                             _%tl87708803%_)
                      (if (gx#stx-pair? _%tl87708803%_)
                          (let ((_%e87718806%_ (gx#syntax-e _%tl87708803%_)))
                            (let ((_%tl87738813%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e87718806%_)))
                                  (_%hd87728810%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e87718806%_))))
                              (if (gx#stx-null? _%tl87738813%_)
                                  (_%__match1954919550%_
                                   _%e87658786%_
                                   _%hd87668790%_
                                   _%tl87678793%_
                                   _%e87688796%_
                                   _%hd87698800%_
                                   _%tl87708803%_
                                   _%e87718806%_
                                   _%hd87728810%_
                                   _%tl87738813%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g87158779%_)))))
                          (let () (declare (not safe)) (_%g87158779%_)))))
                   (_%__match1952919530%_
                    (lambda (_%e87458841%_
                             _%hd87468845%_
                             _%tl87478848%_
                             _%e87488851%_
                             _%hd87498855%_
                             _%tl87508858%_
                             _%e87518861%_
                             _%hd87528865%_
                             _%tl87538868%_
                             _%__splice1946719468%_
                             _%target87548871%_
                             _%tl87568874%_)
                      (letrec ((_%loop87578877%_
                                (lambda (_%hd87558881%_ _%body87618884%_)
                                  (if (gx#stx-pair? _%hd87558881%_)
                                      (let ((_%e87588887%_
                                             (gx#syntax-e _%hd87558881%_)))
                                        (let ((_%lp-tl87608894%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e87588887%_)))
                                              (_%lp-hd87598891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e87588887%_))))
                                          (_%loop87578877%_
                                           _%lp-tl87608894%_
                                           (cons _%lp-hd87598891%_
                                                 _%body87618884%_))))
                                      (let ((_%body87628897%_
                                             (reverse _%body87618884%_)))
                                        (let ((_%L8901%_ _%body87628897%_)
                                              (_%L8903%_ _%tl87538868%_)
                                              (_%L8904%_ _%hd87528865%_))
                                          (if (gx#identifier? _%L8904%_)
                                              (_%__kont1946519466%_
                                               _%L8901%_
                                               _%L8903%_
                                               _%L8904%_)
                                              (_%__match1954119542%_
                                               _%e87458841%_
                                               _%hd87468845%_
                                               _%tl87478848%_
                                               _%e87488851%_
                                               _%hd87498855%_
                                               _%tl87508858%_))))))))
                        (_%loop87578877%_ _%target87548871%_ '()))))
                   (_%__match1950319504%_
                    (lambda (_%e87218939%_
                             _%hd87228943%_
                             _%tl87238946%_
                             _%e87248949%_
                             _%hd87258953%_
                             _%tl87268956%_
                             _%e87278959%_
                             _%hd87288963%_
                             _%tl87298966%_
                             _%e87308969%_
                             _%hd87318973%_
                             _%tl87328976%_
                             _%__splice1946319464%_
                             _%target87338979%_
                             _%tl87358982%_)
                      (letrec ((_%loop87368985%_
                                (lambda (_%hd87348989%_ _%body87408992%_)
                                  (if (gx#stx-pair? _%hd87348989%_)
                                      (let ((_%e87378995%_
                                             (gx#syntax-e _%hd87348989%_)))
                                        (let ((_%lp-tl87399002%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e87378995%_)))
                                              (_%lp-hd87388999%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e87378995%_))))
                                          (_%loop87368985%_
                                           _%lp-tl87399002%_
                                           (cons _%lp-hd87388999%_
                                                 _%body87408992%_))))
                                      (let ((_%body87419005%_
                                             (reverse _%body87408992%_)))
                                        (_%__kont1946119462%_
                                         _%body87419005%_
                                         _%tl87298966%_
                                         _%tl87328976%_
                                         _%hd87318973%_))))))
                        (_%loop87368985%_ _%target87338979%_ '())))))
              (if (gx#stx-pair? _%__stx1945819459%_)
                  (let ((_%e87218939%_ (gx#syntax-e _%__stx1945819459%_)))
                    (let ((_%tl87238946%_
                           (let () (declare (not safe)) (##cdr _%e87218939%_)))
                          (_%hd87228943%_
                           (let ()
                             (declare (not safe))
                             (##car _%e87218939%_))))
                      (if (gx#stx-pair? _%tl87238946%_)
                          (let ((_%e87248949%_ (gx#syntax-e _%tl87238946%_)))
                            (let ((_%tl87268956%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e87248949%_)))
                                  (_%hd87258953%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e87248949%_))))
                              (if (gx#stx-pair? _%hd87258953%_)
                                  (let ((_%e87278959%_
                                         (gx#syntax-e _%hd87258953%_)))
                                    (let ((_%tl87298966%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e87278959%_)))
                                          (_%hd87288963%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e87278959%_))))
                                      (if (gx#stx-pair? _%hd87288963%_)
                                          (let ((_%e87308969%_
                                                 (gx#syntax-e _%hd87288963%_)))
                                            (let ((_%tl87328976%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e87308969%_)))
                                                  (_%hd87318973%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e87308969%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl87268956%_)
                                                  (let ((_%__splice1946319464%_
                                                         (gx#syntax-split-splice
                                                          _%tl87268956%_
                                                          '0)))
                                                    (let ((_%tl87358982%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1946319464%_
                                                              '1)))
                                                          (_%target87338979%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1946319464%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl87358982%_)
                                                          (_%__match1950319504%_
                                                           _%e87218939%_
                                                           _%hd87228943%_
                                                           _%tl87238946%_
                                                           _%e87248949%_
                                                           _%hd87258953%_
                                                           _%tl87268956%_
                                                           _%e87278959%_
                                                           _%hd87288963%_
                                                           _%tl87298966%_
                                                           _%e87308969%_
                                                           _%hd87318973%_
                                                           _%tl87328976%_
                                                           _%__splice1946319464%_
                                                           _%target87338979%_
                                                           _%tl87358982%_)
                                                          (if (gx#stx-pair?
                                                               _%tl87268956%_)
                                                              (let ((_%e87718806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl87268956%_)))
                        (let ((_%tl87738813%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e87718806%_)))
                              (_%hd87728810%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e87718806%_))))
                          (if (gx#stx-null? _%tl87738813%_)
                              (_%__match1954919550%_
                               _%e87218939%_
                               _%hd87228943%_
                               _%tl87238946%_
                               _%e87248949%_
                               _%hd87258953%_
                               _%tl87268956%_
                               _%e87718806%_
                               _%hd87728810%_
                               _%tl87738813%_)
                              (let () (declare (not safe)) (_%g87158779%_)))))
                      (let () (declare (not safe)) (_%g87158779%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl87268956%_)
                                                      (let ((_%e87718806%_
                                                             (gx#syntax-e
                                                              _%tl87268956%_)))
                                                        (let ((_%tl87738813%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e87718806%_)))
                      (_%hd87728810%_
                       (let () (declare (not safe)) (##car _%e87718806%_))))
                  (if (gx#stx-null? _%tl87738813%_)
                      (_%__match1954919550%_
                       _%e87218939%_
                       _%hd87228943%_
                       _%tl87238946%_
                       _%e87248949%_
                       _%hd87258953%_
                       _%tl87268956%_
                       _%e87718806%_
                       _%hd87728810%_
                       _%tl87738813%_)
                      (let () (declare (not safe)) (_%g87158779%_)))))
              (let () (declare (not safe)) (_%g87158779%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl87268956%_)
                                              (let ((_%__splice1946719468%_
                                                     (gx#syntax-split-splice
                                                      _%tl87268956%_
                                                      '0)))
                                                (let ((_%tl87568874%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1946719468%_
                                                          '1)))
                                                      (_%target87548871%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1946719468%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl87568874%_)
                                                      (_%__match1952919530%_
                                                       _%e87218939%_
                                                       _%hd87228943%_
                                                       _%tl87238946%_
                                                       _%e87248949%_
                                                       _%hd87258953%_
                                                       _%tl87268956%_
                                                       _%e87278959%_
                                                       _%hd87288963%_
                                                       _%tl87298966%_
                                                       _%__splice1946719468%_
                                                       _%target87548871%_
                                                       _%tl87568874%_)
                                                      (if (gx#stx-pair?
                                                           _%tl87268956%_)
                                                          (let ((_%e87718806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl87268956%_)))
                    (let ((_%tl87738813%_
                           (let () (declare (not safe)) (##cdr _%e87718806%_)))
                          (_%hd87728810%_
                           (let ()
                             (declare (not safe))
                             (##car _%e87718806%_))))
                      (if (gx#stx-null? _%tl87738813%_)
                          (_%__match1954919550%_
                           _%e87218939%_
                           _%hd87228943%_
                           _%tl87238946%_
                           _%e87248949%_
                           _%hd87258953%_
                           _%tl87268956%_
                           _%e87718806%_
                           _%hd87728810%_
                           _%tl87738813%_)
                          (let () (declare (not safe)) (_%g87158779%_)))))
                  (let () (declare (not safe)) (_%g87158779%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _%tl87268956%_)
                                                  (let ((_%e87718806%_
                                                         (gx#syntax-e
                                                          _%tl87268956%_)))
                                                    (let ((_%tl87738813%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e87718806%_)))
                                                          (_%hd87728810%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e87718806%_))))
                                                      (if (gx#stx-null?
                                                           _%tl87738813%_)
                                                          (_%__match1954919550%_
                                                           _%e87218939%_
                                                           _%hd87228943%_
                                                           _%tl87238946%_
                                                           _%e87248949%_
                                                           _%hd87258953%_
                                                           _%tl87268956%_
                                                           _%e87718806%_
                                                           _%hd87728810%_
                                                           _%tl87738813%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g87158779%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g87158779%_)))))))
                                  (if (gx#stx-pair? _%tl87268956%_)
                                      (let ((_%e87718806%_
                                             (gx#syntax-e _%tl87268956%_)))
                                        (let ((_%tl87738813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e87718806%_)))
                                              (_%hd87728810%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e87718806%_))))
                                          (if (gx#stx-null? _%tl87738813%_)
                                              (_%__match1954919550%_
                                               _%e87218939%_
                                               _%hd87228943%_
                                               _%tl87238946%_
                                               _%e87248949%_
                                               _%hd87258953%_
                                               _%tl87268956%_
                                               _%e87718806%_
                                               _%hd87728810%_
                                               _%tl87738813%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g87158779%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g87158779%_))))))
                          (let () (declare (not safe)) (_%g87158779%_)))))
                  (let () (declare (not safe)) (_%g87158779%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def*|
      (lambda (_%$stx9050%_)
        (let* ((_%g90549078%_
                (lambda (_%g90559074%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g90559074%_)))
               (_%g90539163%_
                (lambda (_%g90559082%_)
                  (if (gx#stx-pair? _%g90559082%_)
                      (let ((_%e90589085%_ (gx#syntax-e _%g90559082%_)))
                        (let ((_%hd90599089%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e90589085%_)))
                              (_%tl90609092%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e90589085%_))))
                          (if (gx#stx-pair? _%tl90609092%_)
                              (let ((_%e90619095%_
                                     (gx#syntax-e _%tl90609092%_)))
                                (let ((_%hd90629099%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e90619095%_)))
                                      (_%tl90639102%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e90619095%_))))
                                  (if (gx#stx-pair/null? _%tl90639102%_)
                                      (let ((_g20914_
                                             (gx#syntax-split-splice
                                              _%tl90639102%_
                                              '0)))
                                        (begin
                                          (let ((_g20915_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20914_)
                                                       (##vector-length
                                                        _g20914_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20915_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20915_)))
                                          (let ((_%target90649105%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20914_ 0)))
                                                (_%tl90669108%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20914_ 1))))
                                            (if (gx#stx-null? _%tl90669108%_)
                                                (letrec ((_%loop90679111%_
                                                          (lambda (_%hd90659115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clauses90719118%_)
                    (if (gx#stx-pair? _%hd90659115%_)
                        (let ((_%e90689121%_ (gx#syntax-e _%hd90659115%_)))
                          (let ((_%lp-hd90699125%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e90689121%_)))
                                (_%lp-tl90709128%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e90689121%_))))
                            (_%loop90679111%_
                             _%lp-tl90709128%_
                             (cons _%lp-hd90699125%_ _%clauses90719118%_))))
                        (let ((_%clauses90729131%_
                               (reverse _%clauses90719118%_)))
                          ((lambda (_%L9135%_ _%L9137%_)
                             (if (gx#identifier? _%L9137%_)
                                 (cons (gx#datum->syntax '#f 'define-values)
                                       (cons (cons _%L9137%_ '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'case-lambda)
                                                         (foldr (lambda (_%g91549157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g91559160%_)
                          (cons _%g91549157%_ _%g91559160%_))
                        '()
                        _%L9135%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 (_%g90549078%_ _%g90559082%_)))
                           _%clauses90729131%_
                           _%hd90629099%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop90679111%_
                                                   _%target90649105%_
                                                   '()))
                                                (_%g90549078%_
                                                 _%g90559082%_)))))
                                      (_%g90549078%_ _%g90559082%_))))
                              (_%g90549078%_ _%g90559082%_))))
                      (_%g90549078%_ _%g90559082%_)))))
          (_%g90539163%_ _%$stx9050%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#defvalues|
      (lambda (_%$stx9168%_)
        (let* ((_%g91729190%_
                (lambda (_%g91739186%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g91739186%_)))
               (_%g91719245%_
                (lambda (_%g91739194%_)
                  (if (gx#stx-pair? _%g91739194%_)
                      (let ((_%e91769197%_ (gx#syntax-e _%g91739194%_)))
                        (let ((_%hd91779201%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e91769197%_)))
                              (_%tl91789204%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e91769197%_))))
                          (if (gx#stx-pair? _%tl91789204%_)
                              (let ((_%e91799207%_
                                     (gx#syntax-e _%tl91789204%_)))
                                (let ((_%hd91809211%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e91799207%_)))
                                      (_%tl91819214%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e91799207%_))))
                                  (if (gx#stx-pair? _%tl91819214%_)
                                      (let ((_%e91829217%_
                                             (gx#syntax-e _%tl91819214%_)))
                                        (let ((_%hd91839221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e91829217%_)))
                                              (_%tl91849224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e91829217%_))))
                                          (if (gx#stx-null? _%tl91849224%_)
                                              ((lambda (_%L9227%_ _%L9229%_)
                                                 (if (gx#identifier-list?
                                                      _%L9229%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons _%L9229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L9227%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g91729190%_
                                                      _%g91739194%_)))
                                               _%hd91839221%_
                                               _%hd91809211%_)
                                              (_%g91729190%_ _%g91739194%_))))
                                      (_%g91729190%_ _%g91739194%_))))
                              (_%g91729190%_ _%g91739194%_))))
                      (_%g91729190%_ _%g91739194%_)))))
          (_%g91719245%_ _%$stx9168%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#case|
      (lambda (_%$stx9249%_)
        (let* ((_%g92539277%_
                (lambda (_%g92549273%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g92549273%_)))
               (_%g92529362%_
                (lambda (_%g92549281%_)
                  (if (gx#stx-pair? _%g92549281%_)
                      (let ((_%e92579284%_ (gx#syntax-e _%g92549281%_)))
                        (let ((_%hd92589288%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e92579284%_)))
                              (_%tl92599291%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e92579284%_))))
                          (if (gx#stx-pair? _%tl92599291%_)
                              (let ((_%e92609294%_
                                     (gx#syntax-e _%tl92599291%_)))
                                (let ((_%hd92619298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e92609294%_)))
                                      (_%tl92629301%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e92609294%_))))
                                  (if (gx#stx-pair/null? _%tl92629301%_)
                                      (let ((_g20916_
                                             (gx#syntax-split-splice
                                              _%tl92629301%_
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
                                          (let ((_%target92639304%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20916_ 0)))
                                                (_%tl92659307%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20916_ 1))))
                                            (if (gx#stx-null? _%tl92659307%_)
                                                (letrec ((_%loop92669310%_
                                                          (lambda (_%hd92649314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause92709317%_)
                    (if (gx#stx-pair? _%hd92649314%_)
                        (let ((_%e92679320%_ (gx#syntax-e _%hd92649314%_)))
                          (let ((_%lp-hd92689324%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e92679320%_)))
                                (_%lp-tl92699327%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e92679320%_))))
                            (_%loop92669310%_
                             _%lp-tl92699327%_
                             (cons _%lp-hd92689324%_ _%clause92709317%_))))
                        (let ((_%clause92719330%_
                               (reverse _%clause92709317%_)))
                          ((lambda (_%L9334%_ _%L9336%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (gx#datum->syntax '#f '$e)
                                               (cons _%L9336%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '~case)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$e)
                                                           (foldr (lambda (_%g93539356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g93549359%_)
                            (cons _%g93539356%_ _%g93549359%_))
                          '()
                          _%L9334%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%clause92719330%_
                           _%hd92619298%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop92669310%_
                                                   _%target92639304%_
                                                   '()))
                                                (_%g92539277%_
                                                 _%g92549281%_)))))
                                      (_%g92539277%_ _%g92549281%_))))
                              (_%g92539277%_ _%g92549281%_))))
                      (_%g92539277%_ _%g92549281%_)))))
          (_%g92529362%_ _%$stx9249%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case|
      (lambda (_%stx9367%_)
        (letrec ((_%parse-clauses9370%_
                  (lambda (_%e11845%_ _%clauses11847%_)
                    (let _%lp11849%_ ((_%rest11852%_ _%clauses11847%_)
                                      (_%datums11854%_ '())
                                      (_%dispatch11855%_ '())
                                      (_%default11856%_ '#f))
                      (let* ((_%__stx1964819649%_ _%rest11852%_)
                             (_%g1185911871%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1964819649%_))))
                        (let ((_%__kont1965119652%_
                               (lambda (_%L11903%_ _%L11905%_)
                                 (let* ((_%__stx1955219553%_ _%L11905%_)
                                        (_%g1192311996%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1955219553%_))))
                                   (let ((_%__kont1955519556%_
                                          (lambda (_%L12361%_)
                                            (if (gx#stx-null? _%L11903%_)
                                                (let* ((_%g1237612384%_
                                                        (lambda (_%g1237712380%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1237712380%_)))
                                                       (_%g1237512403%_
                                                        (lambda (_%g1237712388%_)
                                                          ((lambda (_%L12391%_)
                                                             (_%lp11849%_
                                                              '()
                                                              _%datums11854%_
                                                              _%dispatch11855%_
                                                              (cons _%L12361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L12391%_ '()))))
                   _%g1237712388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1237512403%_ _%e11845%_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9367%_
                                                 _%L11905%_))))
                                         (_%__kont1955719558%_
                                          (lambda (_%L12301%_)
                                            (if (gx#stx-null? _%L11903%_)
                                                (_%lp11849%_
                                                 '()
                                                 _%datums11854%_
                                                 _%dispatch11855%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1231512318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1231612321%_)
                        (cons _%g1231512318%_ _%g1231612321%_))
                      '()
                      _%L12301%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9367%_
                                                 _%L11905%_))))
                                         (_%__kont1956119562%_
                                          (lambda (_%L12186%_ _%L12188%_)
                                            (if (null? (foldr (lambda (_%g1220612209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1220712212%_)
                        (cons _%g1220612209%_ _%g1220712212%_))
                      '()
                      _%L12188%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp11849%_
                                                 _%L11903%_
                                                 _%datums11854%_
                                                 _%dispatch11855%_
                                                 _%default11856%_)
                                                (let* ((_%g1221512223%_
                                                        (lambda (_%g1221612219%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1221612219%_)))
                                                       (_%g1221412250%_
                                                        (lambda (_%g1221612227%_)
                                                          ((lambda (_%L12230%_)
                                                             (_%lp11849%_
                                                              _%L11903%_
                                                              (cons (map gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (foldr (lambda (_%g1224112244%_
                                                 _%g1224212247%_)
                                          (cons _%g1224112244%_
                                                _%g1224212247%_))
                                        '()
                                        _%L12188%_))
                            _%datums11854%_)
                      (cons (cons _%L12186%_ (cons _%L12230%_ '()))
                            _%dispatch11855%_)
                      _%default11856%_))
                   _%g1221612227%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1221412250%_
                                                   _%e11845%_)))))
                                         (_%__kont1956519566%_
                                          (lambda (_%L12073%_ _%L12075%_)
                                            (if (null? (foldr (lambda (_%g1209412097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1209512100%_)
                        (cons _%g1209412097%_ _%g1209512100%_))
                      '()
                      _%L12075%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp11849%_
                                                 _%L11903%_
                                                 _%datums11854%_
                                                 _%dispatch11855%_
                                                 _%default11856%_)
                                                (_%lp11849%_
                                                 _%L11903%_
                                                 (cons (map gx#stx-e
                                                            (foldr (lambda (_%g1210212105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1210312108%_)
                             (cons _%g1210212105%_ _%g1210312108%_))
                           '()
                           _%L12075%_))
               _%datums11854%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (foldr (lambda (_%g1211012113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1211112116%_)
                              (cons _%g1211012113%_ _%g1211112116%_))
                            '()
                            _%L12073%_))
               _%dispatch11855%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%default11856%_)))))
                                     (let* ((_%__match1964519646%_
                                             (lambda (_%e1197012003%_
                                                      _%hd1197112007%_
                                                      _%tl1197212010%_
                                                      _%__splice1956719568%_
                                                      _%target1197312013%_
                                                      _%tl1197512016%_)
                                               (letrec ((_%loop1197612019%_
                                                         (lambda (_%hd1197412023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1198012026%_)
                   (if (gx#stx-pair? _%hd1197412023%_)
                       (let ((_%e1197712029%_ (gx#syntax-e _%hd1197412023%_)))
                         (let ((_%lp-tl1197912036%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1197712029%_)))
                               (_%lp-hd1197812033%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1197712029%_))))
                           (_%loop1197612019%_
                            _%lp-tl1197912036%_
                            (cons _%lp-hd1197812033%_ _%datum1198012026%_))))
                       (let ((_%datum1198112039%_
                              (reverse _%datum1198012026%_)))
                         (if (gx#stx-pair/null? _%tl1197212010%_)
                             (let ((_%__splice1956919570%_
                                    (gx#syntax-split-splice
                                     _%tl1197212010%_
                                     '0)))
                               (let ((_%tl1198412046%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1956919570%_
                                         '1)))
                                     (_%target1198212043%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1956919570%_
                                         '0))))
                                 (if (gx#stx-null? _%tl1198412046%_)
                                     (letrec ((_%loop1198512049%_
                                               (lambda (_%hd1198312053%_
                                                        _%body1198912056%_)
                                                 (if (gx#stx-pair?
                                                      _%hd1198312053%_)
                                                     (let ((_%e1198612059%_
                                                            (gx#syntax-e
                                                             _%hd1198312053%_)))
                                                       (let ((_%lp-tl1198812066%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e1198612059%_)))
                     (_%lp-hd1198712063%_
                      (let () (declare (not safe)) (##car _%e1198612059%_))))
                 (_%loop1198512049%_
                  _%lp-tl1198812066%_
                  (cons _%lp-hd1198712063%_ _%body1198912056%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%body1199012069%_
                                                            (reverse _%body1198912056%_)))
                                                       (_%__kont1956519566%_
                                                        _%body1199012069%_
                                                        _%datum1198112039%_))))))
                                       (_%loop1198512049%_
                                        _%target1198212043%_
                                        '()))
                                     (let ()
                                       (declare (not safe))
                                       (_%g1192311996%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g1192311996%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1197612019%_
                                                  _%target1197312013%_
                                                  '()))))
                                            (_%__match1963119632%_
                                             (lambda (_%e1195012126%_
                                                      _%hd1195112130%_
                                                      _%tl1195212133%_
                                                      _%__splice1956319564%_
                                                      _%target1195312136%_
                                                      _%tl1195512139%_)
                                               (letrec ((_%loop1195612142%_
                                                         (lambda (_%hd1195412146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1196012149%_)
                   (if (gx#stx-pair? _%hd1195412146%_)
                       (let ((_%e1195712152%_ (gx#syntax-e _%hd1195412146%_)))
                         (let ((_%lp-tl1195912159%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1195712152%_)))
                               (_%lp-hd1195812156%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1195712152%_))))
                           (_%loop1195612142%_
                            _%lp-tl1195912159%_
                            (cons _%lp-hd1195812156%_ _%datum1196012149%_))))
                       (let ((_%datum1196112162%_
                              (reverse _%datum1196012149%_)))
                         (if (gx#stx-pair? _%tl1195212133%_)
                             (let ((_%e1196212166%_
                                    (gx#syntax-e _%tl1195212133%_)))
                               (let ((_%tl1196412173%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1196212166%_)))
                                     (_%hd1196312170%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1196212166%_))))
                                 (if (gx#identifier? _%hd1196312170%_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core/sugar~Sugar-2[1]#_g20918_|
                                          _%hd1196312170%_)
                                         (if (gx#stx-pair? _%tl1196412173%_)
                                             (let ((_%e1196512176%_
                                                    (gx#syntax-e
                                                     _%tl1196412173%_)))
                                               (let ((_%tl1196712183%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1196512176%_)))
                                                     (_%hd1196612180%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1196512176%_))))
                                                 (if (gx#stx-null?
                                                      _%tl1196712183%_)
                                                     (_%__kont1956119562%_
                                                      _%hd1196612180%_
                                                      _%datum1196112162%_)
                                                     (_%__match1964519646%_
                                                      _%e1195012126%_
                                                      _%hd1195112130%_
                                                      _%tl1195212133%_
                                                      _%__splice1956319564%_
                                                      _%target1195312136%_
                                                      _%tl1195512139%_))))
                                             (_%__match1964519646%_
                                              _%e1195012126%_
                                              _%hd1195112130%_
                                              _%tl1195212133%_
                                              _%__splice1956319564%_
                                              _%target1195312136%_
                                              _%tl1195512139%_))
                                         (_%__match1964519646%_
                                          _%e1195012126%_
                                          _%hd1195112130%_
                                          _%tl1195212133%_
                                          _%__splice1956319564%_
                                          _%target1195312136%_
                                          _%tl1195512139%_))
                                     (_%__match1964519646%_
                                      _%e1195012126%_
                                      _%hd1195112130%_
                                      _%tl1195212133%_
                                      _%__splice1956319564%_
                                      _%target1195312136%_
                                      _%tl1195512139%_))))
                             (_%__match1964519646%_
                              _%e1195012126%_
                              _%hd1195112130%_
                              _%tl1195212133%_
                              _%__splice1956319564%_
                              _%target1195312136%_
                              _%tl1195512139%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1195612142%_
                                                  _%target1195312136%_
                                                  '()))))
                                            (_%__match1961719618%_
                                             (lambda (_%e1193612261%_
                                                      _%hd1193712265%_
                                                      _%tl1193812268%_
                                                      _%__splice1955919560%_
                                                      _%target1193912271%_
                                                      _%tl1194112274%_)
                                               (letrec ((_%loop1194212277%_
                                                         (lambda (_%hd1194012281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body1194612284%_)
                   (if (gx#stx-pair? _%hd1194012281%_)
                       (let ((_%e1194312287%_ (gx#syntax-e _%hd1194012281%_)))
                         (let ((_%lp-tl1194512294%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1194312287%_)))
                               (_%lp-hd1194412291%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1194312287%_))))
                           (_%loop1194212277%_
                            _%lp-tl1194512294%_
                            (cons _%lp-hd1194412291%_ _%body1194612284%_))))
                       (let ((_%body1194712297%_ (reverse _%body1194612284%_)))
                         (_%__kont1955719558%_ _%body1194712297%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1194212277%_
                                                  _%target1193912271%_
                                                  '())))))
                                       (if (gx#stx-pair? _%__stx1955219553%_)
                                           (let ((_%e1192612331%_
                                                  (gx#syntax-e
                                                   _%__stx1955219553%_)))
                                             (let ((_%tl1192812338%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e1192612331%_)))
                                                   (_%hd1192712335%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e1192612331%_))))
                                               (if (gx#identifier?
                                                    _%hd1192712335%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/sugar~Sugar-2[1]#_g20919_|
                                                        _%hd1192712335%_)
                                                       (if (gx#stx-pair?
                                                            _%tl1192812338%_)
                                                           (let ((_%e1192912341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl1192812338%_)))
                     (let ((_%tl1193112348%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1192912341%_)))
                           (_%hd1193012345%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1192912341%_))))
                       (if (gx#identifier? _%hd1193012345%_)
                           (if (gx#free-identifier=?
                                |gerbil/core/sugar~Sugar-2[1]#_g20920_|
                                _%hd1193012345%_)
                               (if (gx#stx-pair? _%tl1193112348%_)
                                   (let ((_%e1193212351%_
                                          (gx#syntax-e _%tl1193112348%_)))
                                     (let ((_%tl1193412358%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e1193212351%_)))
                                           (_%hd1193312355%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e1193212351%_))))
                                       (if (gx#stx-null? _%tl1193412358%_)
                                           (_%__kont1955519556%_
                                            _%hd1193312355%_)
                                           (if (gx#stx-pair/null?
                                                _%tl1192812338%_)
                                               (let ((_%__splice1955919560%_
                                                      (gx#syntax-split-splice
                                                       _%tl1192812338%_
                                                       '0)))
                                                 (let ((_%tl1194112274%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1955919560%_
                                                           '1)))
                                                       (_%target1193912271%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1955919560%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1194112274%_)
                                                       (_%__match1961719618%_
                                                        _%e1192612331%_
                                                        _%hd1192712335%_
                                                        _%tl1192812338%_
                                                        _%__splice1955919560%_
                                                        _%target1193912271%_
                                                        _%tl1194112274%_)
                                                       (if (gx#stx-pair/null?
                                                            _%hd1192712335%_)
                                                           (let ((_%__splice1956319564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%hd1192712335%_ '0)))
                     (let ((_%tl1195512139%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1956319564%_ '1)))
                           (_%target1195312136%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1956319564%_ '0))))
                       (if (gx#stx-null? _%tl1195512139%_)
                           (_%__match1963119632%_
                            _%e1192612331%_
                            _%hd1192712335%_
                            _%tl1192812338%_
                            _%__splice1956319564%_
                            _%target1195312136%_
                            _%tl1195512139%_)
                           (let () (declare (not safe)) (_%g1192311996%_)))))
                   (let () (declare (not safe)) (_%g1192311996%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _%hd1192712335%_)
                                                   (let ((_%__splice1956319564%_
                                                          (gx#syntax-split-splice
                                                           _%hd1192712335%_
                                                           '0)))
                                                     (let ((_%tl1195512139%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1956319564%_
                                                               '1)))
                                                           (_%target1195312136%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1956319564%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1195512139%_)
                                                           (_%__match1963119632%_
                                                            _%e1192612331%_
                                                            _%hd1192712335%_
                                                            _%tl1192812338%_
                                                            _%__splice1956319564%_
                                                            _%target1195312136%_
                                                            _%tl1195512139%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1192311996%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1192311996%_)))))))
                                   (if (gx#stx-pair/null? _%tl1192812338%_)
                                       (let ((_%__splice1955919560%_
                                              (gx#syntax-split-splice
                                               _%tl1192812338%_
                                               '0)))
                                         (let ((_%tl1194112274%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1955919560%_
                                                   '1)))
                                               (_%target1193912271%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1955919560%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1194112274%_)
                                               (_%__match1961719618%_
                                                _%e1192612331%_
                                                _%hd1192712335%_
                                                _%tl1192812338%_
                                                _%__splice1955919560%_
                                                _%target1193912271%_
                                                _%tl1194112274%_)
                                               (if (gx#stx-pair/null?
                                                    _%hd1192712335%_)
                                                   (let ((_%__splice1956319564%_
                                                          (gx#syntax-split-splice
                                                           _%hd1192712335%_
                                                           '0)))
                                                     (let ((_%tl1195512139%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1956319564%_
                                                               '1)))
                                                           (_%target1195312136%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1956319564%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1195512139%_)
                                                           (_%__match1963119632%_
                                                            _%e1192612331%_
                                                            _%hd1192712335%_
                                                            _%tl1192812338%_
                                                            _%__splice1956319564%_
                                                            _%target1195312136%_
                                                            _%tl1195512139%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1192311996%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1192311996%_))))))
                                       (if (gx#stx-pair/null? _%hd1192712335%_)
                                           (let ((_%__splice1956319564%_
                                                  (gx#syntax-split-splice
                                                   _%hd1192712335%_
                                                   '0)))
                                             (let ((_%tl1195512139%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1956319564%_
                                                       '1)))
                                                   (_%target1195312136%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1956319564%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1195512139%_)
                                                   (_%__match1963119632%_
                                                    _%e1192612331%_
                                                    _%hd1192712335%_
                                                    _%tl1192812338%_
                                                    _%__splice1956319564%_
                                                    _%target1195312136%_
                                                    _%tl1195512139%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1192311996%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1192311996%_)))))
                               (if (gx#stx-pair/null? _%tl1192812338%_)
                                   (let ((_%__splice1955919560%_
                                          (gx#syntax-split-splice
                                           _%tl1192812338%_
                                           '0)))
                                     (let ((_%tl1194112274%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1955919560%_
                                               '1)))
                                           (_%target1193912271%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1955919560%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1194112274%_)
                                           (_%__match1961719618%_
                                            _%e1192612331%_
                                            _%hd1192712335%_
                                            _%tl1192812338%_
                                            _%__splice1955919560%_
                                            _%target1193912271%_
                                            _%tl1194112274%_)
                                           (if (gx#stx-pair/null?
                                                _%hd1192712335%_)
                                               (let ((_%__splice1956319564%_
                                                      (gx#syntax-split-splice
                                                       _%hd1192712335%_
                                                       '0)))
                                                 (let ((_%tl1195512139%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1956319564%_
                                                           '1)))
                                                       (_%target1195312136%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1956319564%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1195512139%_)
                                                       (_%__match1963119632%_
                                                        _%e1192612331%_
                                                        _%hd1192712335%_
                                                        _%tl1192812338%_
                                                        _%__splice1956319564%_
                                                        _%target1195312136%_
                                                        _%tl1195512139%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g1192311996%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1192311996%_))))))
                                   (if (gx#stx-pair/null? _%hd1192712335%_)
                                       (let ((_%__splice1956319564%_
                                              (gx#syntax-split-splice
                                               _%hd1192712335%_
                                               '0)))
                                         (let ((_%tl1195512139%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1956319564%_
                                                   '1)))
                                               (_%target1195312136%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1956319564%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1195512139%_)
                                               (_%__match1963119632%_
                                                _%e1192612331%_
                                                _%hd1192712335%_
                                                _%tl1192812338%_
                                                _%__splice1956319564%_
                                                _%target1195312136%_
                                                _%tl1195512139%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1192311996%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g1192311996%_)))))
                           (if (gx#stx-pair/null? _%tl1192812338%_)
                               (let ((_%__splice1955919560%_
                                      (gx#syntax-split-splice
                                       _%tl1192812338%_
                                       '0)))
                                 (let ((_%tl1194112274%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1955919560%_
                                           '1)))
                                       (_%target1193912271%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1955919560%_
                                           '0))))
                                   (if (gx#stx-null? _%tl1194112274%_)
                                       (_%__match1961719618%_
                                        _%e1192612331%_
                                        _%hd1192712335%_
                                        _%tl1192812338%_
                                        _%__splice1955919560%_
                                        _%target1193912271%_
                                        _%tl1194112274%_)
                                       (if (gx#stx-pair/null? _%hd1192712335%_)
                                           (let ((_%__splice1956319564%_
                                                  (gx#syntax-split-splice
                                                   _%hd1192712335%_
                                                   '0)))
                                             (let ((_%tl1195512139%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1956319564%_
                                                       '1)))
                                                   (_%target1195312136%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1956319564%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1195512139%_)
                                                   (_%__match1963119632%_
                                                    _%e1192612331%_
                                                    _%hd1192712335%_
                                                    _%tl1192812338%_
                                                    _%__splice1956319564%_
                                                    _%target1195312136%_
                                                    _%tl1195512139%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1192311996%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1192311996%_))))))
                               (if (gx#stx-pair/null? _%hd1192712335%_)
                                   (let ((_%__splice1956319564%_
                                          (gx#syntax-split-splice
                                           _%hd1192712335%_
                                           '0)))
                                     (let ((_%tl1195512139%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1956319564%_
                                               '1)))
                                           (_%target1195312136%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1956319564%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1195512139%_)
                                           (_%__match1963119632%_
                                            _%e1192612331%_
                                            _%hd1192712335%_
                                            _%tl1192812338%_
                                            _%__splice1956319564%_
                                            _%target1195312136%_
                                            _%tl1195512139%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1192311996%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1192311996%_)))))))
                   (if (gx#stx-pair/null? _%tl1192812338%_)
                       (let ((_%__splice1955919560%_
                              (gx#syntax-split-splice _%tl1192812338%_ '0)))
                         (let ((_%tl1194112274%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1955919560%_ '1)))
                               (_%target1193912271%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1955919560%_ '0))))
                           (if (gx#stx-null? _%tl1194112274%_)
                               (_%__match1961719618%_
                                _%e1192612331%_
                                _%hd1192712335%_
                                _%tl1192812338%_
                                _%__splice1955919560%_
                                _%target1193912271%_
                                _%tl1194112274%_)
                               (if (gx#stx-pair/null? _%hd1192712335%_)
                                   (let ((_%__splice1956319564%_
                                          (gx#syntax-split-splice
                                           _%hd1192712335%_
                                           '0)))
                                     (let ((_%tl1195512139%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1956319564%_
                                               '1)))
                                           (_%target1195312136%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1956319564%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1195512139%_)
                                           (_%__match1963119632%_
                                            _%e1192612331%_
                                            _%hd1192712335%_
                                            _%tl1192812338%_
                                            _%__splice1956319564%_
                                            _%target1195312136%_
                                            _%tl1195512139%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1192311996%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1192311996%_))))))
                       (if (gx#stx-pair/null? _%hd1192712335%_)
                           (let ((_%__splice1956319564%_
                                  (gx#syntax-split-splice
                                   _%hd1192712335%_
                                   '0)))
                             (let ((_%tl1195512139%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1956319564%_
                                       '1)))
                                   (_%target1195312136%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1956319564%_
                                       '0))))
                               (if (gx#stx-null? _%tl1195512139%_)
                                   (_%__match1963119632%_
                                    _%e1192612331%_
                                    _%hd1192712335%_
                                    _%tl1192812338%_
                                    _%__splice1956319564%_
                                    _%target1195312136%_
                                    _%tl1195512139%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g1192311996%_)))))
                           (let () (declare (not safe)) (_%g1192311996%_)))))
               (if (gx#stx-pair/null? _%hd1192712335%_)
                   (let ((_%__splice1956319564%_
                          (gx#syntax-split-splice _%hd1192712335%_ '0)))
                     (let ((_%tl1195512139%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1956319564%_ '1)))
                           (_%target1195312136%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1956319564%_ '0))))
                       (if (gx#stx-null? _%tl1195512139%_)
                           (_%__match1963119632%_
                            _%e1192612331%_
                            _%hd1192712335%_
                            _%tl1192812338%_
                            _%__splice1956319564%_
                            _%target1195312136%_
                            _%tl1195512139%_)
                           (let () (declare (not safe)) (_%g1192311996%_)))))
                   (let () (declare (not safe)) (_%g1192311996%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%hd1192712335%_)
                                                       (let ((_%__splice1956319564%_
                                                              (gx#syntax-split-splice
                                                               _%hd1192712335%_
                                                               '0)))
                                                         (let ((_%tl1195512139%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice1956319564%_ '1)))
                       (_%target1195312136%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice1956319564%_ '0))))
                   (if (gx#stx-null? _%tl1195512139%_)
                       (_%__match1963119632%_
                        _%e1192612331%_
                        _%hd1192712335%_
                        _%tl1192812338%_
                        _%__splice1956319564%_
                        _%target1195312136%_
                        _%tl1195512139%_)
                       (let () (declare (not safe)) (_%g1192311996%_)))))
               (let () (declare (not safe)) (_%g1192311996%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_%g1192311996%_))))))))
                              (_%__kont1965319654%_
                               (lambda ()
                                 (_%check-duplicate-datums9372%_
                                  _%datums11854%_)
                                 (values (reverse _%datums11854%_)
                                         (reverse _%dispatch11855%_)
                                         (let ((_%$e11882%_ _%default11856%_))
                                           (if _%$e11882%_
                                               _%$e11882%_
                                               '#!void))))))
                          (let ((_%g1185811886%_
                                 (lambda ()
                                   (if (gx#stx-null? _%__stx1964819649%_)
                                       (_%__kont1965319654%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g1185911871%_))))))
                            (if (gx#stx-pair? _%__stx1964819649%_)
                                (let ((_%e1186311893%_
                                       (gx#syntax-e _%__stx1964819649%_)))
                                  (let ((_%tl1186511900%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1186311893%_)))
                                        (_%hd1186411897%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1186311893%_))))
                                    (_%__kont1965119652%_
                                     _%tl1186511900%_
                                     _%hd1186411897%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g1185811886%_)))))))))
                 (_%check-duplicate-datums9372%_
                  (lambda (_%datums11833%_)
                    (let ((_%ht11836%_ (make-hash-table)))
                      (for-each
                       (lambda (_%lst11839%_)
                         (for-each
                          (lambda (_%datum11842%_)
                            (if (hash-get _%ht11836%_ _%datum11842%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _%stx9367%_
                                 _%datum11842%_)
                                (hash-put! _%ht11836%_ _%datum11842%_ '#t)))
                          _%lst11839%_))
                       _%datums11833%_))))
                 (_%count-datums9373%_
                  (lambda (_%datums11826%_)
                    (foldl (lambda (_%lst11829%_ _%r11831%_)
                             (+ (length _%lst11829%_) _%r11831%_))
                           '0
                           _%datums11826%_)))
                 (_%symbolic-datums?9374%_
                  (lambda (_%datums11820%_)
                    (andmap (lambda (_%lst11823%_)
                              (andmap symbol? _%lst11823%_))
                            _%datums11820%_)))
                 (_%char-datums?9375%_
                  (lambda (_%datums11814%_)
                    (andmap (lambda (_%lst11817%_) (andmap char? _%lst11817%_))
                            _%datums11814%_)))
                 (_%fixnum-datums?9376%_
                  (lambda (_%datums11808%_)
                    (andmap (lambda (_%lst11811%_)
                              (andmap fixnum? _%lst11811%_))
                            _%datums11808%_)))
                 (_%eq-datums?9377%_
                  (lambda (_%datums11791%_)
                    (andmap (lambda (_%lst11794%_)
                              (andmap (lambda (_%x11797%_)
                                        (let ((_%$e11800%_
                                               (symbol? _%x11797%_)))
                                          (if _%$e11800%_
                                              _%$e11800%_
                                              (let ((_%$e11804%_
                                                     (keyword? _%x11797%_)))
                                                (if _%$e11804%_
                                                    _%$e11804%_
                                                    (immediate?
                                                     _%x11797%_))))))
                                      _%lst11794%_))
                            _%datums11791%_)))
                 (_%generate-simple-case9378%_
                  (lambda (_%e11555%_
                           _%datums11557%_
                           _%dispatch11558%_
                           _%default11559%_)
                    (let* ((_%g1156111569%_
                            (lambda (_%g1156211565%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1156211565%_)))
                           (_%g1156011787%_
                            (lambda (_%g1156211573%_)
                              ((lambda (_%L11576%_)
                                 (let _%recur11588%_ ((_%datums11591%_
                                                       _%datums11557%_)
                                                      (_%dispatch11593%_
                                                       _%dispatch11558%_))
                                   (let* ((_%__stx1966619667%_ _%datums11591%_)
                                          (_%g1159611617%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx1966619667%_))))
                                     (let ((_%__kont1966919670%_
                                            (lambda (_%L11675%_ _%L11677%_)
                                              (let* ((_%g1169711709%_
                                                      (lambda (_%g1169811705%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1169811705%_)))
                                                     (_%g1169611779%_
                                                      (lambda (_%g1169811713%_)
                                                        (if (gx#stx-pair?
                                                             _%g1169811713%_)
                                                            (let ((_%e1170111716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%g1169811713%_)))
                      (let ((_%hd1170211720%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1170111716%_)))
                            (_%tl1170311723%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1170111716%_))))
                        ((lambda (_%L11726%_ _%L11728%_)
                           (let* ((_%g1174011748%_
                                   (lambda (_%g1174111744%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g1174111744%_)))
                                  (_%g1173911775%_
                                   (lambda (_%g1174111752%_)
                                     ((lambda (_%L11755%_)
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'or)
                                                          (foldr (lambda (_%g1176611769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g1176711772%_)
                           (cons (cons (gx#datum->syntax '#f '~case-test)
                                       (cons _%g1176611769%_
                                             (cons _%L11576%_ '())))
                                 _%g1176711772%_))
                         '()
                         _%L11677%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L11728%_
                                                          (cons _%L11755%_
                                                                '())))))
                                      _%g1174111752%_))))
                             (_%g1173911775%_
                              (_%recur11588%_ _%L11675%_ _%L11726%_))))
                         _%tl1170311723%_
                         _%hd1170211720%_)))
                    (_%g1169711709%_ _%g1169811713%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1169611779%_
                                                 _%dispatch11593%_))))
                                           (_%__kont1967319674%_
                                            (lambda () _%default11559%_)))
                                       (let ((_%__match1968919690%_
                                              (lambda (_%e1160011635%_
                                                       _%hd1160111639%_
                                                       _%tl1160211642%_
                                                       _%__splice1967119672%_
                                                       _%target1160311645%_
                                                       _%tl1160511648%_)
                                                (letrec ((_%loop1160611651%_
                                                          (lambda (_%hd1160411655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%datum1161011658%_)
                    (if (gx#stx-pair? _%hd1160411655%_)
                        (let ((_%e1160711661%_ (gx#syntax-e _%hd1160411655%_)))
                          (let ((_%lp-tl1160911668%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1160711661%_)))
                                (_%lp-hd1160811665%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1160711661%_))))
                            (_%loop1160611651%_
                             _%lp-tl1160911668%_
                             (cons _%lp-hd1160811665%_ _%datum1161011658%_))))
                        (let ((_%datum1161111671%_
                               (reverse _%datum1161011658%_)))
                          (_%__kont1966919670%_
                           _%tl1160211642%_
                           _%datum1161111671%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1160611651%_
                                                   _%target1160311645%_
                                                   '())))))
                                         (if (gx#stx-pair? _%__stx1966619667%_)
                                             (let ((_%e1160011635%_
                                                    (gx#syntax-e
                                                     _%__stx1966619667%_)))
                                               (let ((_%tl1160211642%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1160011635%_)))
                                                     (_%hd1160111639%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1160011635%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%hd1160111639%_)
                                                     (let ((_%__splice1967119672%_
                                                            (gx#syntax-split-splice
                                                             _%hd1160111639%_
                                                             '0)))
                                                       (let ((_%tl1160511648%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice1967119672%_ '1)))
                     (_%target1160311645%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice1967119672%_ '0))))
                 (if (gx#stx-null? _%tl1160511648%_)
                     (_%__match1968919690%_
                      _%e1160011635%_
                      _%hd1160111639%_
                      _%tl1160211642%_
                      _%__splice1967119672%_
                      _%target1160311645%_
                      _%tl1160511648%_)
                     (_%__kont1967319674%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont1967319674%_))))
                                             (_%__kont1967319674%_)))))))
                               _%g1156211573%_))))
                      (_%g1156011787%_ _%e11555%_))))
                 (_%datum-dispatch-index9379%_
                  (lambda (_%datums11427%_)
                    (let _%lp11430%_ ((_%rest11433%_ _%datums11427%_)
                                      (_%ix11435%_ '0)
                                      (_%r11436%_ '()))
                      (let* ((_%__stx1969219693%_ _%rest11433%_)
                             (_%g1143911460%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1969219693%_))))
                        (let ((_%__kont1969519696%_
                               (lambda (_%L11518%_ _%L11520%_)
                                 (_%lp11430%_
                                  _%L11518%_
                                  (fx1+ _%ix11435%_)
                                  (foldl (lambda (_%x11539%_ _%r11541%_)
                                           (cons (cons _%x11539%_ _%ix11435%_)
                                                 _%r11541%_))
                                         _%r11436%_
                                         (foldr (lambda (_%g1154211545%_
                                                         _%g1154311548%_)
                                                  (cons _%g1154211545%_
                                                        _%g1154311548%_))
                                                '()
                                                _%L11520%_)))))
                              (_%__kont1969919700%_ (lambda () _%r11436%_)))
                          (let ((_%__match1971519716%_
                                 (lambda (_%e1144311478%_
                                          _%hd1144411482%_
                                          _%tl1144511485%_
                                          _%__splice1969719698%_
                                          _%target1144611488%_
                                          _%tl1144811491%_)
                                   (letrec ((_%loop1144911494%_
                                             (lambda (_%hd1144711498%_
                                                      _%datum1145311501%_)
                                               (if (gx#stx-pair?
                                                    _%hd1144711498%_)
                                                   (let ((_%e1145011504%_
                                                          (gx#syntax-e
                                                           _%hd1144711498%_)))
                                                     (let ((_%lp-tl1145211511%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e1145011504%_)))
                                                           (_%lp-hd1145111508%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e1145011504%_))))
                                                       (_%loop1144911494%_
                                                        _%lp-tl1145211511%_
                                                        (cons _%lp-hd1145111508%_
                                                              _%datum1145311501%_))))
                                                   (let ((_%datum1145411514%_
                                                          (reverse _%datum1145311501%_)))
                                                     (_%__kont1969519696%_
                                                      _%tl1144511485%_
                                                      _%datum1145411514%_))))))
                                     (_%loop1144911494%_
                                      _%target1144611488%_
                                      '())))))
                            (if (gx#stx-pair? _%__stx1969219693%_)
                                (let ((_%e1144311478%_
                                       (gx#syntax-e _%__stx1969219693%_)))
                                  (let ((_%tl1144511485%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1144311478%_)))
                                        (_%hd1144411482%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1144311478%_))))
                                    (if (gx#stx-pair/null? _%hd1144411482%_)
                                        (let ((_%__splice1969719698%_
                                               (gx#syntax-split-splice
                                                _%hd1144411482%_
                                                '0)))
                                          (let ((_%tl1144811491%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1969719698%_
                                                    '1)))
                                                (_%target1144611488%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1969719698%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1144811491%_)
                                                (_%__match1971519716%_
                                                 _%e1144311478%_
                                                 _%hd1144411482%_
                                                 _%tl1144511485%_
                                                 _%__splice1969719698%_
                                                 _%target1144611488%_
                                                 _%tl1144811491%_)
                                                (_%__kont1969919700%_))))
                                        (_%__kont1969919700%_))))
                                (_%__kont1969919700%_))))))))
                 (_%duplicate-indexes?9380%_
                  (lambda (_%xs11408%_)
                    (let ((_%ht11411%_ (make-hash-table-eq)))
                      (let _%lp11414%_ ((_%rest11417%_ _%xs11408%_))
                        (if (pair? _%rest11417%_)
                            (let* ((_%ix11420%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest11417%_)))
                                   (_%$e11423%_
                                    (hash-get _%ht11411%_ _%ix11420%_)))
                              (if _%$e11423%_
                                  _%$e11423%_
                                  (begin
                                    (hash-put! _%ht11411%_ _%ix11420%_ '#t)
                                    (_%lp11414%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest11417%_))))))
                            '#f)))))
                 (_%generate-hash-dispatch-table9381%_
                  (lambda (_%indexes11377%_ _%hash-e11379%_)
                    (let _%lp11381%_ ((_%len11384%_
                                       (* '2 (length _%indexes11377%_))))
                      (let* ((_%hs11390%_
                              (map (lambda (_%x11387%_)
                                     (_%hash-e11379%_ (car _%x11387%_)))
                                   _%indexes11377%_))
                             (_%xs11396%_
                              (map (lambda (_%h11393%_)
                                     (fxmodulo _%h11393%_ _%len11384%_))
                                   _%hs11390%_)))
                        (if (_%duplicate-indexes?9380%_ _%xs11396%_)
                            (if (< _%len11384%_ '131072)
                                (_%lp11381%_
                                 (quotient
                                  (let ()
                                    (declare (not safe))
                                    (##fx* _%len11384%_ '3))
                                  '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _%stx9367%_
                                 _%indexes11377%_))
                            (let ((_%tab11401%_
                                   (make-vector _%len11384%_ '#f)))
                              (for-each
                               (lambda (_%entry11404%_ _%x11406%_)
                                 (vector-set!
                                  _%tab11401%_
                                  _%x11406%_
                                  _%entry11404%_))
                               _%indexes11377%_
                               _%xs11396%_)
                              _%tab11401%_))))))
                 (_%generate-symbolic-dispatch9382%_
                  (lambda (_%e10980%_
                           _%datums10982%_
                           _%dispatch10983%_
                           _%default10984%_)
                    (let* ((_%indexes10986%_
                            (_%datum-dispatch-index9379%_ _%datums10982%_))
                           (_%tab10989%_
                            (_%generate-hash-dispatch-table9381%_
                             _%indexes10986%_
                             symbol-hash)))
                      (if (= (length _%dispatch10983%_) '1)
                          (let* ((_%tab10997%_
                                  (vector-map
                                   (lambda (_%x10994%_)
                                     (if _%x10994%_ (car _%x10994%_) '#f))
                                   _%tab10989%_))
                                 (_%g1100011038%_
                                  (lambda (_%g1100111034%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1100111034%_)))
                                 (_%g1099911169%_
                                  (lambda (_%g1100111042%_)
                                    (if (gx#stx-pair? _%g1100111042%_)
                                        (let ((_%e1100911045%_
                                               (gx#syntax-e _%g1100111042%_)))
                                          (let ((_%hd1101011049%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1100911045%_)))
                                                (_%tl1101111052%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1100911045%_))))
                                            (if (gx#stx-pair? _%tl1101111052%_)
                                                (let ((_%e1101211055%_
                                                       (gx#syntax-e
                                                        _%tl1101111052%_)))
                                                  (let ((_%hd1101311059%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1101211055%_)))
                                                        (_%tl1101411062%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1101211055%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1101411062%_)
                                                        (let ((_%e1101511065%_
                                                               (gx#syntax-e
                                                                _%tl1101411062%_)))
                                                          (let ((_%hd1101611069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1101511065%_)))
                        (_%tl1101711072%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1101511065%_))))
                    (if (gx#stx-pair? _%tl1101711072%_)
                        (let ((_%e1101811075%_ (gx#syntax-e _%tl1101711072%_)))
                          (let ((_%hd1101911079%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1101811075%_)))
                                (_%tl1102011082%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1101811075%_))))
                            (if (gx#stx-pair? _%hd1101911079%_)
                                (let ((_%e1102111085%_
                                       (gx#syntax-e _%hd1101911079%_)))
                                  (let ((_%hd1102211089%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1102111085%_)))
                                        (_%tl1102311092%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1102111085%_))))
                                    (if (gx#stx-null? _%tl1102311092%_)
                                        (if (gx#stx-pair? _%tl1102011082%_)
                                            (let ((_%e1102411095%_
                                                   (gx#syntax-e
                                                    _%tl1102011082%_)))
                                              (let ((_%hd1102511099%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1102411095%_)))
                                                    (_%tl1102611102%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1102411095%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1102611102%_)
                                                    (let ((_%e1102711105%_
                                                           (gx#syntax-e
                                                            _%tl1102611102%_)))
                                                      (let ((_%hd1102811109%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1102711105%_)))
                    (_%tl1102911112%_
                     (let () (declare (not safe)) (##cdr _%e1102711105%_))))
                (if (gx#stx-pair? _%tl1102911112%_)
                    (let ((_%e1103011115%_ (gx#syntax-e _%tl1102911112%_)))
                      (let ((_%hd1103111119%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1103011115%_)))
                            (_%tl1103211122%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1103011115%_))))
                        (if (gx#stx-null? _%tl1103211122%_)
                            ((lambda (_%L11125%_
                                      _%L11127%_
                                      _%L11128%_
                                      _%L11129%_
                                      _%L11130%_
                                      _%L11131%_
                                      _%L11132%_)
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L11131%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _%L11128%_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L11130%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%L11127%_ '()))
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
                           (cons _%L11132%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'let*)
                                 (cons (cons (cons (gx#datum->syntax '#f 'h)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##symbol-hash)
                                                               (cons _%L11132%_
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
                                   (cons _%L11125%_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'q)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##vector-ref)
                                   (cons _%L11130%_
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
                             (cons _%L11132%_ '())))
                 (cons _%L11129%_ (cons (cons _%L11131%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _%L11131%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                             _%hd1103111119%_
                             _%hd1102811109%_
                             _%hd1102511099%_
                             _%hd1102211089%_
                             _%hd1101611069%_
                             _%hd1101311059%_
                             _%hd1101011049%_)
                            (_%g1100011038%_ _%g1100111042%_))))
                    (_%g1100011038%_ _%g1100111042%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1100011038%_
                                                     _%g1100111042%_))))
                                            (_%g1100011038%_ _%g1100111042%_))
                                        (_%g1100011038%_ _%g1100111042%_))))
                                (_%g1100011038%_ _%g1100111042%_))))
                        (_%g1100011038%_ _%g1100111042%_))))
                (_%g1100011038%_ _%g1100111042%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1100011038%_
                                                 _%g1100111042%_))))
                                        (_%g1100011038%_ _%g1100111042%_)))))
                            (_%g1099911169%_
                             (list _%e10980%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch10983%_
                                   _%default10984%_
                                   _%tab10997%_
                                   (vector-length _%tab10997%_))))
                          (let* ((_%g1117311217%_
                                  (lambda (_%g1117411213%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1117411213%_)))
                                 (_%g1117211373%_
                                  (lambda (_%g1117411221%_)
                                    (if (gx#stx-pair? _%g1117411221%_)
                                        (let ((_%e1118211224%_
                                               (gx#syntax-e _%g1117411221%_)))
                                          (let ((_%hd1118311228%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1118211224%_)))
                                                (_%tl1118411231%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1118211224%_))))
                                            (if (gx#stx-pair? _%tl1118411231%_)
                                                (let ((_%e1118511234%_
                                                       (gx#syntax-e
                                                        _%tl1118411231%_)))
                                                  (let ((_%hd1118611238%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1118511234%_)))
                                                        (_%tl1118711241%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1118511234%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1118711241%_)
                                                        (let ((_%e1118811244%_
                                                               (gx#syntax-e
                                                                _%tl1118711241%_)))
                                                          (let ((_%hd1118911248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1118811244%_)))
                        (_%tl1119011251%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1118811244%_))))
                    (if (gx#stx-pair? _%tl1119011251%_)
                        (let ((_%e1119111254%_ (gx#syntax-e _%tl1119011251%_)))
                          (let ((_%hd1119211258%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1119111254%_)))
                                (_%tl1119311261%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1119111254%_))))
                            (if (gx#stx-pair/null? _%hd1119211258%_)
                                (let ((_g20921_
                                       (gx#syntax-split-splice
                                        _%hd1119211258%_
                                        '0)))
                                  (begin
                                    (let ((_g20922_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g20921_)
                                                 (##vector-length _g20921_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g20922_ 2)))
                                          (error "Context expects 2 values"
                                                 _g20922_)))
                                    (let ((_%target1119411264%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g20921_ 0)))
                                          (_%tl1119611267%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g20921_ 1))))
                                      (if (gx#stx-null? _%tl1119611267%_)
                                          (letrec ((_%loop1119711270%_
                                                    (lambda (_%hd1119511274%_
                                                             _%dispatch1120111277%_)
                                                      (if (gx#stx-pair?
                                                           _%hd1119511274%_)
                                                          (let ((_%e1119811280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd1119511274%_)))
                    (let ((_%lp-hd1119911284%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1119811280%_)))
                          (_%lp-tl1120011287%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1119811280%_))))
                      (_%loop1119711270%_
                       _%lp-tl1120011287%_
                       (cons _%lp-hd1119911284%_ _%dispatch1120111277%_))))
                  (let ((_%dispatch1120211290%_
                         (reverse _%dispatch1120111277%_)))
                    (if (gx#stx-pair? _%tl1119311261%_)
                        (let ((_%e1120311294%_ (gx#syntax-e _%tl1119311261%_)))
                          (let ((_%hd1120411298%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1120311294%_)))
                                (_%tl1120511301%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1120311294%_))))
                            (if (gx#stx-pair? _%tl1120511301%_)
                                (let ((_%e1120611304%_
                                       (gx#syntax-e _%tl1120511301%_)))
                                  (let ((_%hd1120711308%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1120611304%_)))
                                        (_%tl1120811311%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1120611304%_))))
                                    (if (gx#stx-pair? _%tl1120811311%_)
                                        (let ((_%e1120911314%_
                                               (gx#syntax-e _%tl1120811311%_)))
                                          (let ((_%hd1121011318%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1120911314%_)))
                                                (_%tl1121111321%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1120911314%_))))
                                            (if (gx#stx-null? _%tl1121111321%_)
                                                ((lambda (_%L11324%_
                                                          _%L11326%_
                                                          _%L11327%_
                                                          _%L11328%_
                                                          _%L11329%_
                                                          _%L11330%_
                                                          _%L11331%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _%L11330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons '()
                                                     (cons _%L11327%_ '())))
                                         '()))
                             (cons (cons _%L11329%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L11326%_ '()))
                                               '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f 'symbol?)
                                               (cons _%L11331%_ '()))
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
                                           (cons _%L11331%_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'ix)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##fxmodulo)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'h)
                                                       (cons _%L11324%_ '())))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'q)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _%L11329%_
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
                           (cons _%L11331%_ '())))
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
                                                   (foldr (lambda (_%g1136411367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1136511370%_)
                    (cons _%g1136411367%_ _%g1136511370%_))
                  '()
                  _%L11328%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons (cons _%L11330%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%L11330%_ '()) '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L11330%_ '())
                                                     '()))))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd1121011318%_
                                                 _%hd1120711308%_
                                                 _%hd1120411298%_
                                                 _%dispatch1120211290%_
                                                 _%hd1118911248%_
                                                 _%hd1118611238%_
                                                 _%hd1118311228%_)
                                                (_%g1117311217%_
                                                 _%g1117411221%_))))
                                        (_%g1117311217%_ _%g1117411221%_))))
                                (_%g1117311217%_ _%g1117411221%_))))
                        (_%g1117311217%_ _%g1117411221%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop1119711270%_
                                             _%target1119411264%_
                                             '()))
                                          (_%g1117311217%_ _%g1117411221%_)))))
                                (_%g1117311217%_ _%g1117411221%_))))
                        (_%g1117311217%_ _%g1117411221%_))))
                (_%g1117311217%_ _%g1117411221%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1117311217%_
                                                 _%g1117411221%_))))
                                        (_%g1117311217%_ _%g1117411221%_)))))
                            (_%g1117211373%_
                             (list _%e10980%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch10983%_
                                   _%default10984%_
                                   _%tab10989%_
                                   (vector-length _%tab10989%_))))))))
                 (_%max-char9383%_
                  (lambda (_%datums10969%_)
                    (foldl (lambda (_%lst10972%_ _%r10974%_)
                             (foldl (lambda (_%char10976%_ _%r10978%_)
                                      (max (char->integer _%char10976%_)
                                           _%r10978%_))
                                    _%r10974%_
                                    _%lst10972%_))
                           '0
                           _%datums10969%_)))
                 (_%generate-char-dispatch-table9384%_
                  (lambda (_%indexes10948%_)
                    (let* ((_%ixs10954%_
                            (map (lambda (_%x10951%_)
                                   (char->integer (car _%x10951%_)))
                                 _%indexes10948%_))
                           (_%len10957%_ (fx1+ (foldl max '0 _%ixs10954%_)))
                           (_%vec10960%_ (make-vector _%len10957%_ '#f)))
                      (for-each
                       (lambda (_%entry10965%_ _%x10967%_)
                         (vector-set!
                          _%vec10960%_
                          _%x10967%_
                          (cdr _%entry10965%_)))
                       _%indexes10948%_
                       _%ixs10954%_)
                      _%vec10960%_)))
                 (_%simple-char-range?9385%_
                  (lambda (_%tab10924%_)
                    (let ((_%end10927%_ (vector-length _%tab10924%_)))
                      (let _%lp10930%_ ((_%i10933%_ '0))
                        (let ((_%ix10936%_
                               (vector-ref _%tab10924%_ _%i10933%_)))
                          (if _%ix10936%_
                              (let _%lp210939%_ ((_%i10942%_
                                                  (fx1+ _%i10933%_)))
                                (if (fx< _%i10942%_ _%end10927%_)
                                    (let ((_%ix*10945%_
                                           (vector-ref
                                            _%tab10924%_
                                            _%i10942%_)))
                                      (if (eq? _%ix10936%_ _%ix*10945%_)
                                          (_%lp210939%_ (fx1+ _%i10942%_))
                                          '#f))
                                    '#t))
                              (_%lp10930%_ (fx1+ _%i10933%_))))))))
                 (_%char-range-start9386%_
                  (lambda (_%tab10915%_)
                    (let _%lp10918%_ ((_%i10921%_ '0))
                      (if (vector-ref _%tab10915%_ _%i10921%_)
                          _%i10921%_
                          (_%lp10918%_ (fx1+ _%i10921%_))))))
                 (_%generate-char-dispatch9387%_
                  (lambda (_%e10538%_
                           _%datums10540%_
                           _%dispatch10541%_
                           _%default10542%_)
                    (if (< (_%max-char9383%_ _%datums10540%_) '128)
                        (let* ((_%indexes10544%_
                                (_%datum-dispatch-index9379%_ _%datums10540%_))
                               (_%tab10547%_
                                (_%generate-char-dispatch-table9384%_
                                 _%indexes10544%_)))
                          (if (_%simple-char-range?9385%_ _%tab10547%_)
                              (let ((_%start10552%_
                                     (_%char-range-start9386%_ _%tab10547%_))
                                    (_%end10554%_
                                     (vector-length _%tab10547%_)))
                                (let* ((_%g1055610590%_
                                        (lambda (_%g1055710586%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g1055710586%_)))
                                       (_%g1055510707%_
                                        (lambda (_%g1055710594%_)
                                          (if (gx#stx-pair? _%g1055710594%_)
                                              (let ((_%e1056410597%_
                                                     (gx#syntax-e
                                                      _%g1055710594%_)))
                                                (let ((_%hd1056510601%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1056410597%_)))
                                                      (_%tl1056610604%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1056410597%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1056610604%_)
                                                      (let ((_%e1056710607%_
                                                             (gx#syntax-e
                                                              _%tl1056610604%_)))
                                                        (let ((_%hd1056810611%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1056710607%_)))
                      (_%tl1056910614%_
                       (let () (declare (not safe)) (##cdr _%e1056710607%_))))
                  (if (gx#stx-pair? _%tl1056910614%_)
                      (let ((_%e1057010617%_ (gx#syntax-e _%tl1056910614%_)))
                        (let ((_%hd1057110621%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1057010617%_)))
                              (_%tl1057210624%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1057010617%_))))
                          (if (gx#stx-pair? _%hd1057110621%_)
                              (let ((_%e1057310627%_
                                     (gx#syntax-e _%hd1057110621%_)))
                                (let ((_%hd1057410631%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1057310627%_)))
                                      (_%tl1057510634%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1057310627%_))))
                                  (if (gx#stx-null? _%tl1057510634%_)
                                      (if (gx#stx-pair? _%tl1057210624%_)
                                          (let ((_%e1057610637%_
                                                 (gx#syntax-e
                                                  _%tl1057210624%_)))
                                            (let ((_%hd1057710641%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1057610637%_)))
                                                  (_%tl1057810644%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1057610637%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1057810644%_)
                                                  (let ((_%e1057910647%_
                                                         (gx#syntax-e
                                                          _%tl1057810644%_)))
                                                    (let ((_%hd1058010651%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1057910647%_)))
                                                          (_%tl1058110654%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1057910647%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1058110654%_)
                                                          (let ((_%e1058210657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1058110654%_)))
                    (let ((_%hd1058310661%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1058210657%_)))
                          (_%tl1058410664%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1058210657%_))))
                      (if (gx#stx-null? _%tl1058410664%_)
                          ((lambda (_%L10667%_
                                    _%L10669%_
                                    _%L10670%_
                                    _%L10671%_
                                    _%L10672%_
                                    _%L10673%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons _%L10672%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L10670%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax '#f 'if)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'char?)
                         (cons _%L10673%_ '()))
                   (cons (cons (gx#datum->syntax '#f 'let)
                               (cons (cons (gx#datum->syntax '#f 'ix)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##char->integer)
                                                       (cons _%L10673%_ '()))
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
                                       (cons _%L10669%_ '())))
                           (cons (cons (gx#datum->syntax '#f '##fx<)
                                       (cons (gx#datum->syntax '#f 'ix)
                                             (cons _%L10667%_ '())))
                                 '())))
               (cons _%L10671%_ (cons (cons _%L10672%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (cons (cons _%L10672%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%hd1058310661%_
                           _%hd1058010651%_
                           _%hd1057710641%_
                           _%hd1057410631%_
                           _%hd1056810611%_
                           _%hd1056510601%_)
                          (_%g1055610590%_ _%g1055710594%_))))
                  (_%g1055610590%_ _%g1055710594%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1055610590%_
                                                   _%g1055710594%_))))
                                          (_%g1055610590%_ _%g1055710594%_))
                                      (_%g1055610590%_ _%g1055710594%_))))
                              (_%g1055610590%_ _%g1055710594%_))))
                      (_%g1055610590%_ _%g1055710594%_))))
              (_%g1055610590%_ _%g1055710594%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1055610590%_
                                               _%g1055710594%_)))))
                                  (_%g1055510707%_
                                   (list _%e10538%_
                                         (gx#genident 'default)
                                         _%dispatch10541%_
                                         _%default10542%_
                                         _%start10552%_
                                         _%end10554%_))))
                              (let* ((_%g1071110755%_
                                      (lambda (_%g1071210751%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g1071210751%_)))
                                     (_%g1071010911%_
                                      (lambda (_%g1071210759%_)
                                        (if (gx#stx-pair? _%g1071210759%_)
                                            (let ((_%e1072010762%_
                                                   (gx#syntax-e
                                                    _%g1071210759%_)))
                                              (let ((_%hd1072110766%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1072010762%_)))
                                                    (_%tl1072210769%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1072010762%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1072210769%_)
                                                    (let ((_%e1072310772%_
                                                           (gx#syntax-e
                                                            _%tl1072210769%_)))
                                                      (let ((_%hd1072410776%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1072310772%_)))
                    (_%tl1072510779%_
                     (let () (declare (not safe)) (##cdr _%e1072310772%_))))
                (if (gx#stx-pair? _%tl1072510779%_)
                    (let ((_%e1072610782%_ (gx#syntax-e _%tl1072510779%_)))
                      (let ((_%hd1072710786%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1072610782%_)))
                            (_%tl1072810789%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1072610782%_))))
                        (if (gx#stx-pair? _%tl1072810789%_)
                            (let ((_%e1072910792%_
                                   (gx#syntax-e _%tl1072810789%_)))
                              (let ((_%hd1073010796%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1072910792%_)))
                                    (_%tl1073110799%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1072910792%_))))
                                (if (gx#stx-pair/null? _%hd1073010796%_)
                                    (let ((_g20923_
                                           (gx#syntax-split-splice
                                            _%hd1073010796%_
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
                                        (let ((_%target1073210802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g20923_ 0)))
                                              (_%tl1073410805%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g20923_ 1))))
                                          (if (gx#stx-null? _%tl1073410805%_)
                                              (letrec ((_%loop1073510808%_
                                                        (lambda (_%hd1073310812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%dispatch1073910815%_)
                  (if (gx#stx-pair? _%hd1073310812%_)
                      (let ((_%e1073610818%_ (gx#syntax-e _%hd1073310812%_)))
                        (let ((_%lp-hd1073710822%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1073610818%_)))
                              (_%lp-tl1073810825%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1073610818%_))))
                          (_%loop1073510808%_
                           _%lp-tl1073810825%_
                           (cons _%lp-hd1073710822%_ _%dispatch1073910815%_))))
                      (let ((_%dispatch1074010828%_
                             (reverse _%dispatch1073910815%_)))
                        (if (gx#stx-pair? _%tl1073110799%_)
                            (let ((_%e1074110832%_
                                   (gx#syntax-e _%tl1073110799%_)))
                              (let ((_%hd1074210836%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1074110832%_)))
                                    (_%tl1074310839%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1074110832%_))))
                                (if (gx#stx-pair? _%tl1074310839%_)
                                    (let ((_%e1074410842%_
                                           (gx#syntax-e _%tl1074310839%_)))
                                      (let ((_%hd1074510846%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1074410842%_)))
                                            (_%tl1074610849%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1074410842%_))))
                                        (if (gx#stx-pair? _%tl1074610849%_)
                                            (let ((_%e1074710852%_
                                                   (gx#syntax-e
                                                    _%tl1074610849%_)))
                                              (let ((_%hd1074810856%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1074710852%_)))
                                                    (_%tl1074910859%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1074710852%_))))
                                                (if (gx#stx-null?
                                                     _%tl1074910859%_)
                                                    ((lambda (_%L10862%_
                                                              _%L10864%_
                                                              _%L10865%_
                                                              _%L10866%_
                                                              _%L10867%_
                                                              _%L10868%_
                                                              _%L10869%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons _%L10868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons '()
                                                         (cons _%L10865%_
                                                               '())))
                                             '()))
                                 (cons (cons _%L10867%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _%L10864%_ '()))
                                                   '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'char?)
                                                   (cons _%L10869%_ '()))
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
                                         (cons _%L10869%_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f '##fx<)
                                               (cons (gx#datum->syntax '#f 'ix)
                                                     (cons _%L10862%_ '())))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'x)
                         (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                     (cons _%L10867%_
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
                                                       (foldr (lambda (_%g1090210905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1090310908%_)
                        (cons _%g1090210905%_ _%g1090310908%_))
                      '()
                      _%L10866%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%L10868%_ '()) '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L10868%_ '())
                                                     '()))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _%L10868%_ '())
                                                         '()))))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd1074810856%_
                                                     _%hd1074510846%_
                                                     _%hd1074210836%_
                                                     _%dispatch1074010828%_
                                                     _%hd1072710786%_
                                                     _%hd1072410776%_
                                                     _%hd1072110766%_)
                                                    (_%g1071110755%_
                                                     _%g1071210759%_))))
                                            (_%g1071110755%_
                                             _%g1071210759%_))))
                                    (_%g1071110755%_ _%g1071210759%_))))
                            (_%g1071110755%_ _%g1071210759%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop1073510808%_
                                                 _%target1073210802%_
                                                 '()))
                                              (_%g1071110755%_
                                               _%g1071210759%_)))))
                                    (_%g1071110755%_ _%g1071210759%_))))
                            (_%g1071110755%_ _%g1071210759%_))))
                    (_%g1071110755%_ _%g1071210759%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1071110755%_
                                                     _%g1071210759%_))))
                                            (_%g1071110755%_
                                             _%g1071210759%_)))))
                                (_%g1071010911%_
                                 (list _%e10538%_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _%dispatch10541%_
                                       _%default10542%_
                                       _%tab10547%_
                                       (vector-length _%tab10547%_))))))
                        (_%generate-char-dispatch/hash9388%_
                         _%e10538%_
                         _%datums10540%_
                         _%dispatch10541%_
                         _%default10542%_))))
                 (_%generate-char-dispatch/hash9388%_
                  (lambda (_%e10316%_
                           _%datums10318%_
                           _%dispatch10319%_
                           _%default10320%_)
                    (let* ((_%indexes10322%_
                            (_%datum-dispatch-index9379%_ _%datums10318%_))
                           (_%tab10325%_
                            (_%generate-hash-dispatch-table9381%_
                             _%indexes10322%_
                             char->integer))
                           (_%g1033010374%_
                            (lambda (_%g1033110370%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1033110370%_)))
                           (_%g1032910534%_
                            (lambda (_%g1033110378%_)
                              (if (gx#stx-pair? _%g1033110378%_)
                                  (let ((_%e1033910381%_
                                         (gx#syntax-e _%g1033110378%_)))
                                    (let ((_%hd1034010385%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1033910381%_)))
                                          (_%tl1034110388%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1033910381%_))))
                                      (if (gx#stx-pair? _%tl1034110388%_)
                                          (let ((_%e1034210391%_
                                                 (gx#syntax-e
                                                  _%tl1034110388%_)))
                                            (let ((_%hd1034310395%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1034210391%_)))
                                                  (_%tl1034410398%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1034210391%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1034410398%_)
                                                  (let ((_%e1034510401%_
                                                         (gx#syntax-e
                                                          _%tl1034410398%_)))
                                                    (let ((_%hd1034610405%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1034510401%_)))
                                                          (_%tl1034710408%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1034510401%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1034710408%_)
                                                          (let ((_%e1034810411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1034710408%_)))
                    (let ((_%hd1034910415%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1034810411%_)))
                          (_%tl1035010418%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1034810411%_))))
                      (if (gx#stx-pair/null? _%hd1034910415%_)
                          (let ((_g20925_
                                 (gx#syntax-split-splice _%hd1034910415%_ '0)))
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
                              (let ((_%target1035110421%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g20925_ 0)))
                                    (_%tl1035310424%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g20925_ 1))))
                                (if (gx#stx-null? _%tl1035310424%_)
                                    (letrec ((_%loop1035410427%_
                                              (lambda (_%hd1035210431%_
                                                       _%dispatch1035810434%_)
                                                (if (gx#stx-pair?
                                                     _%hd1035210431%_)
                                                    (let ((_%e1035510437%_
                                                           (gx#syntax-e
                                                            _%hd1035210431%_)))
                                                      (let ((_%lp-hd1035610441%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1035510437%_)))
                    (_%lp-tl1035710444%_
                     (let () (declare (not safe)) (##cdr _%e1035510437%_))))
                (_%loop1035410427%_
                 _%lp-tl1035710444%_
                 (cons _%lp-hd1035610441%_ _%dispatch1035810434%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch1035910447%_
                                                           (reverse _%dispatch1035810434%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl1035010418%_)
                                                          (let ((_%e1036010451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1035010418%_)))
                    (let ((_%hd1036110455%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1036010451%_)))
                          (_%tl1036210458%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1036010451%_))))
                      (if (gx#stx-pair? _%tl1036210458%_)
                          (let ((_%e1036310461%_
                                 (gx#syntax-e _%tl1036210458%_)))
                            (let ((_%hd1036410465%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1036310461%_)))
                                  (_%tl1036510468%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1036310461%_))))
                              (if (gx#stx-pair? _%tl1036510468%_)
                                  (let ((_%e1036610471%_
                                         (gx#syntax-e _%tl1036510468%_)))
                                    (let ((_%hd1036710475%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1036610471%_)))
                                          (_%tl1036810478%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1036610471%_))))
                                      (if (gx#stx-null? _%tl1036810478%_)
                                          ((lambda (_%L10481%_
                                                    _%L10483%_
                                                    _%L10484%_
                                                    _%L10485%_
                                                    _%L10486%_
                                                    _%L10487%_
                                                    _%L10488%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L10487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%L10484%_ '())))
                                   '()))
                       (cons (cons _%L10486%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%L10483%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'char?)
                                         (cons _%L10488%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'h)
                         (cons (cons (gx#datum->syntax '#f '##char->integer)
                                     (cons _%L10488%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'ix)
                               (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                           (cons (gx#datum->syntax '#f 'h)
                                                 (cons _%L10481%_ '())))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'q)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##vector-ref)
                                                 (cons _%L10486%_
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
                     (cons _%L10488%_ '())))
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
                                             (foldr (lambda (_%g1052510528%_
                                                             _%g1052610531%_)
                                                      (cons _%g1052510528%_
                                                            _%g1052610531%_))
                                                    '()
                                                    _%L10485%_)))
                                 '())))
               (cons (cons _%L10487%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%L10487%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%L10487%_ '()) '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd1036710475%_
                                           _%hd1036410465%_
                                           _%hd1036110455%_
                                           _%dispatch1035910447%_
                                           _%hd1034610405%_
                                           _%hd1034310395%_
                                           _%hd1034010385%_)
                                          (_%g1033010374%_ _%g1033110378%_))))
                                  (_%g1033010374%_ _%g1033110378%_))))
                          (_%g1033010374%_ _%g1033110378%_))))
                  (_%g1033010374%_ _%g1033110378%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop1035410427%_
                                       _%target1035110421%_
                                       '()))
                                    (_%g1033010374%_ _%g1033110378%_)))))
                          (_%g1033010374%_ _%g1033110378%_))))
                  (_%g1033010374%_ _%g1033110378%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1033010374%_
                                                   _%g1033110378%_))))
                                          (_%g1033010374%_ _%g1033110378%_))))
                                  (_%g1033010374%_ _%g1033110378%_)))))
                      (_%g1032910534%_
                       (list _%e10316%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch10319%_
                             _%default10320%_
                             _%tab10325%_
                             (vector-length _%tab10325%_))))))
                 (_%min-fixnum9389%_
                  (lambda (_%datums10309%_)
                    (foldl (lambda (_%lst10312%_ _%r10314%_)
                             (foldl min _%r10314%_ _%lst10312%_))
                           ##max-fixnum
                           _%datums10309%_)))
                 (_%max-fixnum9390%_
                  (lambda (_%datums10302%_)
                    (foldl (lambda (_%lst10305%_ _%r10307%_)
                             (foldl max _%r10307%_ _%lst10305%_))
                           ##min-fixnum
                           _%datums10302%_)))
                 (_%generate-fixnum-dispatch-table9391%_
                  (lambda (_%indexes10284%_)
                    (let* ((_%ixs10287%_ (map car _%indexes10284%_))
                           (_%len10290%_ (fx1+ (foldl max '0 _%ixs10287%_)))
                           (_%vec10293%_ (make-vector _%len10290%_ '#f)))
                      (for-each
                       (lambda (_%entry10298%_ _%x10300%_)
                         (vector-set!
                          _%vec10293%_
                          _%x10300%_
                          (cdr _%entry10298%_)))
                       _%indexes10284%_
                       _%ixs10287%_)
                      _%vec10293%_)))
                 (_%generate-fixnum-dispatch9392%_
                  (lambda (_%e10018%_
                           _%datums10020%_
                           _%dispatch10021%_
                           _%default10022%_)
                    (if (and (>= (_%min-fixnum9389%_ _%datums10020%_) '0)
                             (< (_%max-fixnum9390%_ _%datums10020%_) '1024))
                        (let* ((_%indexes10024%_
                                (_%datum-dispatch-index9379%_ _%datums10020%_))
                               (_%tab10027%_
                                (_%generate-fixnum-dispatch-table9391%_
                                 _%indexes10024%_))
                               (_%dense?10030%_
                                (andmap values (vector->list _%tab10027%_)))
                               (_%g1003510079%_
                                (lambda (_%g1003610075%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1003610075%_)))
                               (_%g1003410280%_
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
                              (let ((_g20927_
                                     (gx#syntax-split-splice
                                      _%hd1005410120%_
                                      '0)))
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
                                  (let ((_%target1005610126%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g20927_ 0)))
                                        (_%tl1005810129%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g20927_ 1))))
                                    (if (gx#stx-null? _%tl1005810129%_)
                                        (letrec ((_%loop1005910132%_
                                                  (lambda (_%hd1005710136%_
                                                           _%dispatch1006310139%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1005710136%_)
                                                        (let ((_%e1006010142%_
                                                               (gx#syntax-e
                                                                _%hd1005710136%_)))
                                                          (let ((_%lp-hd1006110146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1006010142%_)))
                        (_%lp-tl1006210149%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1006010142%_))))
                    (_%loop1005910132%_
                     _%lp-tl1006210149%_
                     (cons _%lp-hd1006110146%_ _%dispatch1006310139%_))))
                (let ((_%dispatch1006410152%_
                       (reverse _%dispatch1006310139%_)))
                  (if (gx#stx-pair? _%tl1005510123%_)
                      (let ((_%e1006510156%_ (gx#syntax-e _%tl1005510123%_)))
                        (let ((_%hd1006610160%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1006510156%_)))
                              (_%tl1006710163%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1006510156%_))))
                          (if (gx#stx-pair? _%tl1006710163%_)
                              (let ((_%e1006810166%_
                                     (gx#syntax-e _%tl1006710163%_)))
                                (let ((_%hd1006910170%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1006810166%_)))
                                      (_%tl1007010173%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1006810166%_))))
                                  (if (gx#stx-pair? _%tl1007010173%_)
                                      (let ((_%e1007110176%_
                                             (gx#syntax-e _%tl1007010173%_)))
                                        (let ((_%hd1007210180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1007110176%_)))
                                              (_%tl1007310183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1007110176%_))))
                                          (if (gx#stx-null? _%tl1007310183%_)
                                              ((lambda (_%L10186%_
                                                        _%L10188%_
                                                        _%L10189%_
                                                        _%L10190%_
                                                        _%L10191%_
                                                        _%L10192%_
                                                        _%L10193%_)
                                                 (let* ((_%g1023210240%_
                                                         (lambda (_%g1023310236%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g1023310236%_)))
                                                        (_%g1023110260%_
                                                         (lambda (_%g1023310244%_)
                                                           ((lambda (_%L10247%_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'let)
                            (cons (cons (cons _%L10192%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons '()
                                                                (cons _%L10189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons _%L10191%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L10188%_ '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fixnum?)
                                                          (cons _%L10193%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons (cons (gx#datum->syntax '#f 'and)
                                    (cons (cons (gx#datum->syntax '#f '##fx>=)
                                                (cons _%L10193%_
                                                      (cons '0 '())))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx<)
                                                      (cons _%L10193%_
                                                            (cons _%L10186%_
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
                          (cons _%L10191%_ (cons _%L10193%_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%L10247%_ '())))
                                    (cons (cons _%L10192%_ '()) '()))))
                  (cons (cons _%L10192%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))
                    _%g1023310244%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g1023110260%_
                                                    (if _%dense?10030%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'x)
                            (foldr (lambda (_%g1026310266%_ _%g1026410269%_)
                                     (cons _%g1026310266%_ _%g1026410269%_))
                                   '()
                                   _%L10190%_)))
                (cons (gx#datum->syntax '#f 'if)
                      (cons (gx#datum->syntax '#f 'x)
                            (cons (cons (gx#datum->syntax '#f '~case-dispatch)
                                        (cons (gx#datum->syntax '#f 'x)
                                              (foldr (lambda (_%g1027110274%_
                                                              _%g1027210277%_)
                                                       (cons _%g1027110274%_
                                                             _%g1027210277%_))
                                                     '()
                                                     _%L10190%_)))
                                  (cons (cons _%L10192%_ '()) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1007210180%_
                                               _%hd1006910170%_
                                               _%hd1006610160%_
                                               _%dispatch1006410152%_
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
                          (_%g1003410280%_
                           (list _%e10018%_
                                 (gx#genident 'default)
                                 (gx#genident 'table)
                                 _%dispatch10021%_
                                 _%default10022%_
                                 _%tab10027%_
                                 (vector-length _%tab10027%_))))
                        (_%generate-fixnum-dispatch/hash9393%_
                         _%e10018%_
                         _%datums10020%_
                         _%dispatch10021%_
                         _%default10022%_))))
                 (_%generate-fixnum-dispatch/hash9393%_
                  (lambda (_%e9796%_
                           _%datums9798%_
                           _%dispatch9799%_
                           _%default9800%_)
                    (let* ((_%indexes9802%_
                            (_%datum-dispatch-index9379%_ _%datums9798%_))
                           (_%tab9805%_
                            (_%generate-hash-dispatch-table9381%_
                             _%indexes9802%_
                             values))
                           (_%g98109854%_
                            (lambda (_%g98119850%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g98119850%_)))
                           (_%g980910014%_
                            (lambda (_%g98119858%_)
                              (if (gx#stx-pair? _%g98119858%_)
                                  (let ((_%e98199861%_
                                         (gx#syntax-e _%g98119858%_)))
                                    (let ((_%hd98209865%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e98199861%_)))
                                          (_%tl98219868%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e98199861%_))))
                                      (if (gx#stx-pair? _%tl98219868%_)
                                          (let ((_%e98229871%_
                                                 (gx#syntax-e _%tl98219868%_)))
                                            (let ((_%hd98239875%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e98229871%_)))
                                                  (_%tl98249878%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e98229871%_))))
                                              (if (gx#stx-pair? _%tl98249878%_)
                                                  (let ((_%e98259881%_
                                                         (gx#syntax-e
                                                          _%tl98249878%_)))
                                                    (let ((_%hd98269885%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e98259881%_)))
                                                          (_%tl98279888%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e98259881%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl98279888%_)
                                                          (let ((_%e98289891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl98279888%_)))
                    (let ((_%hd98299895%_
                           (let () (declare (not safe)) (##car _%e98289891%_)))
                          (_%tl98309898%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e98289891%_))))
                      (if (gx#stx-pair/null? _%hd98299895%_)
                          (let ((_g20929_
                                 (gx#syntax-split-splice _%hd98299895%_ '0)))
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
                              (let ((_%target98319901%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g20929_ 0)))
                                    (_%tl98339904%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g20929_ 1))))
                                (if (gx#stx-null? _%tl98339904%_)
                                    (letrec ((_%loop98349907%_
                                              (lambda (_%hd98329911%_
                                                       _%dispatch98389914%_)
                                                (if (gx#stx-pair?
                                                     _%hd98329911%_)
                                                    (let ((_%e98359917%_
                                                           (gx#syntax-e
                                                            _%hd98329911%_)))
                                                      (let ((_%lp-hd98369921%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e98359917%_)))
                    (_%lp-tl98379924%_
                     (let () (declare (not safe)) (##cdr _%e98359917%_))))
                (_%loop98349907%_
                 _%lp-tl98379924%_
                 (cons _%lp-hd98369921%_ _%dispatch98389914%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch98399927%_
                                                           (reverse _%dispatch98389914%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl98309898%_)
                                                          (let ((_%e98409931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl98309898%_)))
                    (let ((_%hd98419935%_
                           (let () (declare (not safe)) (##car _%e98409931%_)))
                          (_%tl98429938%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e98409931%_))))
                      (if (gx#stx-pair? _%tl98429938%_)
                          (let ((_%e98439941%_ (gx#syntax-e _%tl98429938%_)))
                            (let ((_%hd98449945%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e98439941%_)))
                                  (_%tl98459948%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e98439941%_))))
                              (if (gx#stx-pair? _%tl98459948%_)
                                  (let ((_%e98469951%_
                                         (gx#syntax-e _%tl98459948%_)))
                                    (let ((_%hd98479955%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e98469951%_)))
                                          (_%tl98489958%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e98469951%_))))
                                      (if (gx#stx-null? _%tl98489958%_)
                                          ((lambda (_%L9961%_
                                                    _%L9963%_
                                                    _%L9964%_
                                                    _%L9965%_
                                                    _%L9966%_
                                                    _%L9967%_
                                                    _%L9968%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L9967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%L9964%_ '())))
                                   '()))
                       (cons (cons _%L9966%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%L9963%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                         (cons _%L9968%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ix)
                         (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                     (cons _%L9968%_ (cons _%L9961%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'q)
                               (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                           (cons _%L9966%_
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
                     (cons _%L9968%_ '())))
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
                                                    _%L9965%_)))
                                 '())))
               (cons (cons _%L9967%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%L9967%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%L9967%_ '()) '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd98479955%_
                                           _%hd98449945%_
                                           _%hd98419935%_
                                           _%dispatch98399927%_
                                           _%hd98269885%_
                                           _%hd98239875%_
                                           _%hd98209865%_)
                                          (_%g98109854%_ _%g98119858%_))))
                                  (_%g98109854%_ _%g98119858%_))))
                          (_%g98109854%_ _%g98119858%_))))
                  (_%g98109854%_ _%g98119858%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop98349907%_
                                       _%target98319901%_
                                       '()))
                                    (_%g98109854%_ _%g98119858%_)))))
                          (_%g98109854%_ _%g98119858%_))))
                  (_%g98109854%_ _%g98119858%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g98109854%_
                                                   _%g98119858%_))))
                                          (_%g98109854%_ _%g98119858%_))))
                                  (_%g98109854%_ _%g98119858%_)))))
                      (_%g980910014%_
                       (list _%e9796%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch9799%_
                             _%default9800%_
                             _%tab9805%_
                             (vector-length _%tab9805%_))))))
                 (_%generate-generic-dispatch9394%_
                  (lambda (_%e9532%_
                           _%datums9534%_
                           _%dispatch9535%_
                           _%default9536%_)
                    (let ((_g20931_
                           (if (_%eq-datums?9377%_ _%datums9534%_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_%hash-e9538%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g20931_ 0)))
                              (_%hashf9540%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g20931_ 1)))
                              (_%eqf9541%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g20931_ 2))))
                          (let* ((_%indexes9543%_
                                  (_%datum-dispatch-index9379%_
                                   _%datums9534%_))
                                 (_%tab9546%_
                                  (_%generate-hash-dispatch-table9381%_
                                   _%indexes9543%_
                                   _%hash-e9538%_))
                                 (_%g95519603%_
                                  (lambda (_%g95529599%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g95529599%_)))
                                 (_%g95509792%_
                                  (lambda (_%g95529607%_)
                                    (if (gx#stx-pair? _%g95529607%_)
                                        (let ((_%e95629610%_
                                               (gx#syntax-e _%g95529607%_)))
                                          (let ((_%hd95639614%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e95629610%_)))
                                                (_%tl95649617%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e95629610%_))))
                                            (if (gx#stx-pair? _%tl95649617%_)
                                                (let ((_%e95659620%_
                                                       (gx#syntax-e
                                                        _%tl95649617%_)))
                                                  (let ((_%hd95669624%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e95659620%_)))
                                                        (_%tl95679627%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e95659620%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl95679627%_)
                                                        (let ((_%e95689630%_
                                                               (gx#syntax-e
                                                                _%tl95679627%_)))
                                                          (let ((_%hd95699634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e95689630%_)))
                        (_%tl95709637%_
                         (let () (declare (not safe)) (##cdr _%e95689630%_))))
                    (if (gx#stx-pair? _%tl95709637%_)
                        (let ((_%e95719640%_ (gx#syntax-e _%tl95709637%_)))
                          (let ((_%hd95729644%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e95719640%_)))
                                (_%tl95739647%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e95719640%_))))
                            (if (gx#stx-pair/null? _%hd95729644%_)
                                (let ((_g20932_
                                       (gx#syntax-split-splice
                                        _%hd95729644%_
                                        '0)))
                                  (begin
                                    (let ((_g20933_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g20932_)
                                                 (##vector-length _g20932_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g20933_ 2)))
                                          (error "Context expects 2 values"
                                                 _g20933_)))
                                    (let ((_%target95749650%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g20932_ 0)))
                                          (_%tl95769653%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g20932_ 1))))
                                      (if (gx#stx-null? _%tl95769653%_)
                                          (letrec ((_%loop95779656%_
                                                    (lambda (_%hd95759660%_
                                                             _%dispatch95819663%_)
                                                      (if (gx#stx-pair?
                                                           _%hd95759660%_)
                                                          (let ((_%e95789666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd95759660%_)))
                    (let ((_%lp-hd95799670%_
                           (let () (declare (not safe)) (##car _%e95789666%_)))
                          (_%lp-tl95809673%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e95789666%_))))
                      (_%loop95779656%_
                       _%lp-tl95809673%_
                       (cons _%lp-hd95799670%_ _%dispatch95819663%_))))
                  (let ((_%dispatch95829676%_ (reverse _%dispatch95819663%_)))
                    (if (gx#stx-pair? _%tl95739647%_)
                        (let ((_%e95839680%_ (gx#syntax-e _%tl95739647%_)))
                          (let ((_%hd95849684%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e95839680%_)))
                                (_%tl95859687%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e95839680%_))))
                            (if (gx#stx-pair? _%tl95859687%_)
                                (let ((_%e95869690%_
                                       (gx#syntax-e _%tl95859687%_)))
                                  (let ((_%hd95879694%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e95869690%_)))
                                        (_%tl95889697%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e95869690%_))))
                                    (if (gx#stx-pair? _%tl95889697%_)
                                        (let ((_%e95899700%_
                                               (gx#syntax-e _%tl95889697%_)))
                                          (let ((_%hd95909704%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e95899700%_)))
                                                (_%tl95919707%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e95899700%_))))
                                            (if (gx#stx-pair? _%tl95919707%_)
                                                (let ((_%e95929710%_
                                                       (gx#syntax-e
                                                        _%tl95919707%_)))
                                                  (let ((_%hd95939714%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e95929710%_)))
                                                        (_%tl95949717%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e95929710%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl95949717%_)
                                                        (let ((_%e95959720%_
                                                               (gx#syntax-e
                                                                _%tl95949717%_)))
                                                          (let ((_%hd95969724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e95959720%_)))
                        (_%tl95979727%_
                         (let () (declare (not safe)) (##cdr _%e95959720%_))))
                    (if (gx#stx-null? _%tl95979727%_)
                        ((lambda (_%L9730%_
                                  _%L9732%_
                                  _%L9733%_
                                  _%L9734%_
                                  _%L9735%_
                                  _%L9736%_
                                  _%L9737%_
                                  _%L9738%_
                                  _%L9739%_)
                           (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (cons _%L9738%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L9735%_ '())))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _%L9737%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _%L9734%_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'h)
                             (cons (cons _%L9732%_ (cons _%L9739%_ '())) '()))
                       (cons (cons (gx#datum->syntax '#f 'ix)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##fxmodulo)
                                               (cons (gx#datum->syntax '#f 'h)
                                                     (cons _%L9733%_ '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'q)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##vector-ref)
                                                     (cons _%L9737%_
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
                                               (cons (cons _%L9730%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##car)
                               (cons (gx#datum->syntax '#f 'q) '()))
                         (cons _%L9739%_ '())))
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
                                                 (foldr (lambda (_%g97839786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g97849789%_)
                  (cons _%g97839786%_ _%g97849789%_))
                '()
                _%L9736%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons _%L9738%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%L9738%_ '()) '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))
                         _%hd95969724%_
                         _%hd95939714%_
                         _%hd95909704%_
                         _%hd95879694%_
                         _%hd95849684%_
                         _%dispatch95829676%_
                         _%hd95699634%_
                         _%hd95669624%_
                         _%hd95639614%_)
                        (_%g95519603%_ _%g95529607%_))))
                (_%g95519603%_ _%g95529607%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g95519603%_
                                                 _%g95529607%_))))
                                        (_%g95519603%_ _%g95529607%_))))
                                (_%g95519603%_ _%g95529607%_))))
                        (_%g95519603%_ _%g95529607%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop95779656%_
                                             _%target95749650%_
                                             '()))
                                          (_%g95519603%_ _%g95529607%_)))))
                                (_%g95519603%_ _%g95529607%_))))
                        (_%g95519603%_ _%g95529607%_))))
                (_%g95519603%_ _%g95529607%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g95519603%_
                                                 _%g95529607%_))))
                                        (_%g95519603%_ _%g95529607%_)))))
                            (_%g95509792%_
                             (list _%e9532%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch9535%_
                                   _%default9536%_
                                   _%tab9546%_
                                   (vector-length _%tab9546%_)
                                   _%hashf9540%_
                                   _%eqf9541%_)))))))))
          (let* ((_%g93969420%_
                  (lambda (_%g93979416%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g93979416%_)))
                 (_%g93959528%_
                  (lambda (_%g93979424%_)
                    (if (gx#stx-pair? _%g93979424%_)
                        (let ((_%e94009427%_ (gx#syntax-e _%g93979424%_)))
                          (let ((_%hd94019431%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e94009427%_)))
                                (_%tl94029434%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e94009427%_))))
                            (if (gx#stx-pair? _%tl94029434%_)
                                (let ((_%e94039437%_
                                       (gx#syntax-e _%tl94029434%_)))
                                  (let ((_%hd94049441%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e94039437%_)))
                                        (_%tl94059444%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e94039437%_))))
                                    (if (gx#stx-pair/null? _%tl94059444%_)
                                        (let ((_g20934_
                                               (gx#syntax-split-splice
                                                _%tl94059444%_
                                                '0)))
                                          (begin
                                            (let ((_g20935_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g20934_)
                                                         (##vector-length
                                                          _g20934_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g20935_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g20935_)))
                                            (let ((_%target94069447%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g20934_
                                                      0)))
                                                  (_%tl94089450%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g20934_
                                                      1))))
                                              (if (gx#stx-null? _%tl94089450%_)
                                                  (letrec ((_%loop94099453%_
                                                            (lambda (_%hd94079457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause94139460%_)
                      (if (gx#stx-pair? _%hd94079457%_)
                          (let ((_%e94109463%_ (gx#syntax-e _%hd94079457%_)))
                            (let ((_%lp-hd94119467%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e94109463%_)))
                                  (_%lp-tl94129470%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e94109463%_))))
                              (_%loop94099453%_
                               _%lp-tl94129470%_
                               (cons _%lp-hd94119467%_ _%clause94139460%_))))
                          (let ((_%clause94149473%_
                                 (reverse _%clause94139460%_)))
                            ((lambda (_%L9477%_ _%L9479%_)
                               (let ((_g20936_
                                      (_%parse-clauses9370%_
                                       _%L9479%_
                                       (foldr (lambda (_%g94979500%_
                                                       _%g94989503%_)
                                                (cons _%g94979500%_
                                                      _%g94989503%_))
                                              '()
                                              _%L9477%_))))
                                 (begin
                                   (let ((_g20937_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g20936_)
                                                (##vector-length _g20936_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g20937_ 3)))
                                         (error "Context expects 3 values"
                                                _g20937_)))
                                   (let ((_%datums9506%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g20936_ 0)))
                                         (_%dispatch9508%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g20936_ 1)))
                                         (_%default9509%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g20936_ 2))))
                                     (let ((_%datum-count9511%_
                                            (_%count-datums9373%_
                                             _%datums9506%_)))
                                       (if (< _%datum-count9511%_ '6)
                                           (_%generate-simple-case9378%_
                                            _%L9479%_
                                            _%datums9506%_
                                            _%dispatch9508%_
                                            _%default9509%_)
                                           (if (_%char-datums?9375%_
                                                _%datums9506%_)
                                               (_%generate-char-dispatch9387%_
                                                _%L9479%_
                                                _%datums9506%_
                                                _%dispatch9508%_
                                                _%default9509%_)
                                               (if (_%fixnum-datums?9376%_
                                                    _%datums9506%_)
                                                   (_%generate-fixnum-dispatch9392%_
                                                    _%L9479%_
                                                    _%datums9506%_
                                                    _%dispatch9508%_
                                                    _%default9509%_)
                                                   (if (< _%datum-count9511%_
                                                          '12)
                                                       (_%generate-simple-case9378%_
                                                        _%L9479%_
                                                        _%datums9506%_
                                                        _%dispatch9508%_
                                                        _%default9509%_)
                                                       (if (_%symbolic-datums?9374%_
                                                            _%datums9506%_)
                                                           (_%generate-symbolic-dispatch9382%_
                                                            _%L9479%_
                                                            _%datums9506%_
                                                            _%dispatch9508%_
                                                            _%default9509%_)
                                                           (_%generate-generic-dispatch9394%_
                                                            _%L9479%_
                                                            _%datums9506%_
                                                            _%dispatch9508%_
                                                            _%default9509%_)))))))))))
                             _%clause94149473%_
                             _%hd94049441%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop94099453%_
                                                     _%target94069447%_
                                                     '()))
                                                  (_%g93969420%_
                                                   _%g93979424%_)))))
                                        (_%g93969420%_ _%g93979424%_))))
                                (_%g93969420%_ _%g93979424%_))))
                        (_%g93969420%_ _%g93979424%_)))))
            (_%g93959528%_ _%stx9367%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-test|
      (lambda (_%stx12430%_)
        (let* ((_%g1243312451%_
                (lambda (_%g1243412447%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1243412447%_)))
               (_%g1243212523%_
                (lambda (_%g1243412455%_)
                  (if (gx#stx-pair? _%g1243412455%_)
                      (let ((_%e1243712458%_ (gx#syntax-e _%g1243412455%_)))
                        (let ((_%hd1243812462%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1243712458%_)))
                              (_%tl1243912465%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1243712458%_))))
                          (if (gx#stx-pair? _%tl1243912465%_)
                              (let ((_%e1244012468%_
                                     (gx#syntax-e _%tl1243912465%_)))
                                (let ((_%hd1244112472%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1244012468%_)))
                                      (_%tl1244212475%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1244012468%_))))
                                  (if (gx#stx-pair? _%tl1244212475%_)
                                      (let ((_%e1244312478%_
                                             (gx#syntax-e _%tl1244212475%_)))
                                        (let ((_%hd1244412482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1244312478%_)))
                                              (_%tl1244512485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1244312478%_))))
                                          (if (gx#stx-null? _%tl1244512485%_)
                                              ((lambda (_%L12488%_ _%L12490%_)
                                                 (let ((_%datum-e12506%_
                                                        (gx#stx-e _%L12490%_)))
                                                   (if (or (symbol? _%datum-e12506%_)
                                                           (keyword?
                                                            _%datum-e12506%_)
                                                           (immediate?
                                                            _%datum-e12506%_))
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%L12490%_ '()))
                           (cons _%L12488%_ '())))
               (if (number? _%datum-e12506%_)
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L12490%_ '()))
                               (cons _%L12488%_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L12490%_ '()))
                               (cons _%L12488%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1244412482%_
                                               _%hd1244112472%_)
                                              (_%g1243312451%_
                                               _%g1243412455%_))))
                                      (_%g1243312451%_ _%g1243412455%_))))
                              (_%g1243312451%_ _%g1243412455%_))))
                      (_%g1243312451%_ _%g1243412455%_)))))
          (_%g1243212523%_ _%stx12430%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch|
      (lambda (_%$stx12527%_)
        (let* ((_%g1253112555%_
                (lambda (_%g1253212551%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1253212551%_)))
               (_%g1253012640%_
                (lambda (_%g1253212559%_)
                  (if (gx#stx-pair? _%g1253212559%_)
                      (let ((_%e1253512562%_ (gx#syntax-e _%g1253212559%_)))
                        (let ((_%hd1253612566%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1253512562%_)))
                              (_%tl1253712569%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1253512562%_))))
                          (if (gx#stx-pair? _%tl1253712569%_)
                              (let ((_%e1253812572%_
                                     (gx#syntax-e _%tl1253712569%_)))
                                (let ((_%hd1253912576%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1253812572%_)))
                                      (_%tl1254012579%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1253812572%_))))
                                  (if (gx#stx-pair/null? _%tl1254012579%_)
                                      (let ((_g20938_
                                             (gx#syntax-split-splice
                                              _%tl1254012579%_
                                              '0)))
                                        (begin
                                          (let ((_g20939_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20938_)
                                                       (##vector-length
                                                        _g20938_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20939_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20939_)))
                                          (let ((_%target1254112582%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20938_ 0)))
                                                (_%tl1254312585%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20938_ 1))))
                                            (if (gx#stx-null? _%tl1254312585%_)
                                                (letrec ((_%loop1254412588%_
                                                          (lambda (_%hd1254212592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%K1254812595%_)
                    (if (gx#stx-pair? _%hd1254212592%_)
                        (let ((_%e1254512598%_ (gx#syntax-e _%hd1254212592%_)))
                          (let ((_%lp-hd1254612602%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1254512598%_)))
                                (_%lp-tl1254712605%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1254512598%_))))
                            (_%loop1254412588%_
                             _%lp-tl1254712605%_
                             (cons _%lp-hd1254612602%_ _%K1254812595%_))))
                        (let ((_%K1254912608%_ (reverse _%K1254812595%_)))
                          ((lambda (_%L12612%_ _%L12614%_)
                             (cons (gx#datum->syntax '#f '~case-dispatch*)
                                   (cons '0
                                         (cons _%L12614%_
                                               (foldr (lambda (_%g1263112634%_
                                                               _%g1263212637%_)
                                                        (cons _%g1263112634%_
                                                              _%g1263212637%_))
                                                      '()
                                                      _%L12612%_)))))
                           _%K1254912608%_
                           _%hd1253912576%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1254412588%_
                                                   _%target1254112582%_
                                                   '()))
                                                (_%g1253112555%_
                                                 _%g1253212559%_)))))
                                      (_%g1253112555%_ _%g1253212559%_))))
                              (_%g1253112555%_ _%g1253212559%_))))
                      (_%g1253112555%_ _%g1253212559%_)))))
          (_%g1253012640%_ _%$stx12527%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch*|
      (lambda (_%stx12645%_)
        (let* ((_%__stx1971819719%_ _%stx12645%_)
               (_%g1265212748%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1971819719%_))))
          (let ((_%__kont1972119722%_
                 (lambda (_%L13225%_ _%L13227%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons '#!void '()))))
                (_%__kont1972319724%_
                 (lambda (_%L13167%_ _%L13169%_ _%L13170%_) _%L13167%_))
                (_%__kont1972519726%_
                 (lambda (_%L13064%_ _%L13066%_ _%L13067%_ _%L13068%_)
                   (let* ((_%g1308913097%_
                           (lambda (_%g1309013093%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1309013093%_)))
                          (_%g1308813116%_
                           (lambda (_%g1309013101%_)
                             ((lambda (_%L13104%_)
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons _%L13067%_
                                                        (cons _%L13104%_ '())))
                                            (cons _%L13066%_
                                                  (cons _%L13064%_ '())))))
                              _%g1309013101%_))))
                     (_%g1308813116%_ (gx#stx-e _%L13068%_)))))
                (_%__kont1972719728%_
                 (lambda (_%L12914%_
                          _%L12916%_
                          _%L12917%_
                          _%L12918%_
                          _%L12919%_)
                   (let* ((_%g1294312958%_
                           (lambda (_%g1294412954%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1294412954%_)))
                          (_%g1294213003%_
                           (lambda (_%g1294412962%_)
                             (if (gx#stx-pair? _%g1294412962%_)
                                 (let ((_%e1294712965%_
                                        (gx#syntax-e _%g1294412962%_)))
                                   (let ((_%hd1294812969%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e1294712965%_)))
                                         (_%tl1294912972%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e1294712965%_))))
                                     (if (gx#stx-pair? _%tl1294912972%_)
                                         (let ((_%e1295012975%_
                                                (gx#syntax-e
                                                 _%tl1294912972%_)))
                                           (let ((_%hd1295112979%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e1295012975%_)))
                                                 (_%tl1295212982%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e1295012975%_))))
                                             (if (gx#stx-null?
                                                  _%tl1295212982%_)
                                                 ((lambda (_%L12985%_
                                                           _%L12987%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons _%L12918%_ (cons _%L12987%_ '())))
                        (cons _%L12917%_
                              (cons (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx=)
                                                      (cons _%L12918%_
                                                            (cons _%L12985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%L12916%_
                                                      (cons _%L12914%_ '()))))
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd1295112979%_
                                                  _%hd1294812969%_)
                                                 (_%g1294312958%_
                                                  _%g1294412962%_))))
                                         (_%g1294312958%_ _%g1294412962%_))))
                                 (_%g1294312958%_ _%g1294412962%_)))))
                     (_%g1294213003%_
                      (list (gx#stx-e _%L12919%_)
                            (fx1+ (gx#stx-e _%L12919%_)))))))
                (_%__kont1972919730%_
                 (lambda (_%L12815%_ _%L12817%_ _%L12818%_)
                   (cons (gx#datum->syntax '#f '~case-dispatch-bsearch)
                         (cons _%L12818%_
                               (cons _%L12817%_
                                     (foldr (lambda (_%g1283812841%_
                                                     _%g1283912844%_)
                                              (cons _%g1283812841%_
                                                    _%g1283912844%_))
                                            '()
                                            _%L12815%_)))))))
            (let ((_%__match1987519876%_
                   (lambda (_%e1272512755%_
                            _%hd1272612759%_
                            _%tl1272712762%_
                            _%e1272812765%_
                            _%hd1272912769%_
                            _%tl1273012772%_
                            _%e1273112775%_
                            _%hd1273212779%_
                            _%tl1273312782%_
                            _%__splice1973119732%_
                            _%target1273412785%_
                            _%tl1273612788%_)
                     (letrec ((_%loop1273712791%_
                               (lambda (_%hd1273512795%_ _%K1274112798%_)
                                 (if (gx#stx-pair? _%hd1273512795%_)
                                     (let ((_%e1273812801%_
                                            (gx#syntax-e _%hd1273512795%_)))
                                       (let ((_%lp-tl1274012808%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1273812801%_)))
                                             (_%lp-hd1273912805%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1273812801%_))))
                                         (_%loop1273712791%_
                                          _%lp-tl1274012808%_
                                          (cons _%lp-hd1273912805%_
                                                _%K1274112798%_))))
                                     (let ((_%K1274212811%_
                                            (reverse _%K1274112798%_)))
                                       (_%__kont1972919730%_
                                        _%K1274212811%_
                                        _%hd1273212779%_
                                        _%hd1272912769%_))))))
                       (_%loop1273712791%_ _%target1273412785%_ '())))))
              (if (gx#stx-pair? _%__stx1971819719%_)
                  (let ((_%e1265613195%_ (gx#syntax-e _%__stx1971819719%_)))
                    (let ((_%tl1265813202%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1265613195%_)))
                          (_%hd1265713199%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1265613195%_))))
                      (if (gx#stx-pair? _%tl1265813202%_)
                          (let ((_%e1265913205%_
                                 (gx#syntax-e _%tl1265813202%_)))
                            (let ((_%tl1266113212%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1265913205%_)))
                                  (_%hd1266013209%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1265913205%_))))
                              (if (gx#stx-pair? _%tl1266113212%_)
                                  (let ((_%e1266213215%_
                                         (gx#syntax-e _%tl1266113212%_)))
                                    (let ((_%tl1266413222%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1266213215%_)))
                                          (_%hd1266313219%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1266213215%_))))
                                      (if (gx#stx-null? _%tl1266413222%_)
                                          (_%__kont1972119722%_
                                           _%hd1266313219%_
                                           _%hd1266013209%_)
                                          (if (gx#stx-pair? _%tl1266413222%_)
                                              (let ((_%e1267713157%_
                                                     (gx#syntax-e
                                                      _%tl1266413222%_)))
                                                (let ((_%tl1267913164%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1267713157%_)))
                                                      (_%hd1267813161%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1267713157%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1267913164%_)
                                                      (_%__kont1972319724%_
                                                       _%hd1267813161%_
                                                       _%hd1266313219%_
                                                       _%hd1266013209%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1267913164%_)
                                                          (let ((_%e1269613054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1267913164%_)))
                    (let ((_%tl1269813061%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1269613054%_)))
                          (_%hd1269713058%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1269613054%_))))
                      (if (gx#stx-null? _%tl1269813061%_)
                          (_%__kont1972519726%_
                           _%hd1269713058%_
                           _%hd1267813161%_
                           _%hd1266313219%_
                           _%hd1266013209%_)
                          (if (gx#stx-pair? _%tl1269813061%_)
                              (let ((_%e1271912904%_
                                     (gx#syntax-e _%tl1269813061%_)))
                                (let ((_%tl1272112911%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1271912904%_)))
                                      (_%hd1272012908%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1271912904%_))))
                                  (if (gx#stx-null? _%tl1272112911%_)
                                      (_%__kont1972719728%_
                                       _%hd1272012908%_
                                       _%hd1269713058%_
                                       _%hd1267813161%_
                                       _%hd1266313219%_
                                       _%hd1266013209%_)
                                      (if (gx#stx-pair/null? _%tl1266413222%_)
                                          (let ((_%__splice1973119732%_
                                                 (gx#syntax-split-splice
                                                  _%tl1266413222%_
                                                  '0)))
                                            (let ((_%tl1273612788%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1973119732%_
                                                      '1)))
                                                  (_%target1273412785%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1973119732%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1273612788%_)
                                                  (_%__match1987519876%_
                                                   _%e1265613195%_
                                                   _%hd1265713199%_
                                                   _%tl1265813202%_
                                                   _%e1265913205%_
                                                   _%hd1266013209%_
                                                   _%tl1266113212%_
                                                   _%e1266213215%_
                                                   _%hd1266313219%_
                                                   _%tl1266413222%_
                                                   _%__splice1973119732%_
                                                   _%target1273412785%_
                                                   _%tl1273612788%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1265212748%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1265212748%_))))))
                              (if (gx#stx-pair/null? _%tl1266413222%_)
                                  (let ((_%__splice1973119732%_
                                         (gx#syntax-split-splice
                                          _%tl1266413222%_
                                          '0)))
                                    (let ((_%tl1273612788%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1973119732%_
                                              '1)))
                                          (_%target1273412785%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1973119732%_
                                              '0))))
                                      (if (gx#stx-null? _%tl1273612788%_)
                                          (_%__match1987519876%_
                                           _%e1265613195%_
                                           _%hd1265713199%_
                                           _%tl1265813202%_
                                           _%e1265913205%_
                                           _%hd1266013209%_
                                           _%tl1266113212%_
                                           _%e1266213215%_
                                           _%hd1266313219%_
                                           _%tl1266413222%_
                                           _%__splice1973119732%_
                                           _%target1273412785%_
                                           _%tl1273612788%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g1265212748%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1265212748%_)))))))
                  (if (gx#stx-pair/null? _%tl1266413222%_)
                      (let ((_%__splice1973119732%_
                             (gx#syntax-split-splice _%tl1266413222%_ '0)))
                        (let ((_%tl1273612788%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1973119732%_ '1)))
                              (_%target1273412785%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1973119732%_ '0))))
                          (if (gx#stx-null? _%tl1273612788%_)
                              (_%__match1987519876%_
                               _%e1265613195%_
                               _%hd1265713199%_
                               _%tl1265813202%_
                               _%e1265913205%_
                               _%hd1266013209%_
                               _%tl1266113212%_
                               _%e1266213215%_
                               _%hd1266313219%_
                               _%tl1266413222%_
                               _%__splice1973119732%_
                               _%target1273412785%_
                               _%tl1273612788%_)
                              (let ()
                                (declare (not safe))
                                (_%g1265212748%_)))))
                      (let () (declare (not safe)) (_%g1265212748%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl1266413222%_)
                                                  (let ((_%__splice1973119732%_
                                                         (gx#syntax-split-splice
                                                          _%tl1266413222%_
                                                          '0)))
                                                    (let ((_%tl1273612788%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1973119732%_
                                                              '1)))
                                                          (_%target1273412785%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1973119732%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl1273612788%_)
                                                          (_%__match1987519876%_
                                                           _%e1265613195%_
                                                           _%hd1265713199%_
                                                           _%tl1265813202%_
                                                           _%e1265913205%_
                                                           _%hd1266013209%_
                                                           _%tl1266113212%_
                                                           _%e1266213215%_
                                                           _%hd1266313219%_
                                                           _%tl1266413222%_
                                                           _%__splice1973119732%_
                                                           _%target1273412785%_
                                                           _%tl1273612788%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g1265212748%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1265212748%_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1265212748%_)))))
                          (let () (declare (not safe)) (_%g1265212748%_)))))
                  (let () (declare (not safe)) (_%g1265212748%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch-bsearch|
      (lambda (_%stx13247%_)
        (letrec ((_%split13250%_
                  (lambda (_%lst13611%_ _%mid13613%_)
                    (let _%lp13615%_ ((_%i13618%_ '0)
                                      (_%rest13620%_ _%lst13611%_)
                                      (_%left13621%_ '()))
                      (if (fx< _%i13618%_ _%mid13613%_)
                          (_%lp13615%_
                           (fx1+ _%i13618%_)
                           (cdr _%rest13620%_)
                           (cons (car _%rest13620%_) _%left13621%_))
                          (values (reverse _%left13621%_) _%rest13620%_))))))
          (let* ((_%g1325313281%_
                  (lambda (_%g1325413277%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1325413277%_)))
                 (_%g1325213607%_
                  (lambda (_%g1325413285%_)
                    (if (gx#stx-pair? _%g1325413285%_)
                        (let ((_%e1325813288%_ (gx#syntax-e _%g1325413285%_)))
                          (let ((_%hd1325913292%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1325813288%_)))
                                (_%tl1326013295%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1325813288%_))))
                            (if (gx#stx-pair? _%tl1326013295%_)
                                (let ((_%e1326113298%_
                                       (gx#syntax-e _%tl1326013295%_)))
                                  (let ((_%hd1326213302%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1326113298%_)))
                                        (_%tl1326313305%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1326113298%_))))
                                    (if (gx#stx-pair? _%tl1326313305%_)
                                        (let ((_%e1326413308%_
                                               (gx#syntax-e _%tl1326313305%_)))
                                          (let ((_%hd1326513312%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1326413308%_)))
                                                (_%tl1326613315%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1326413308%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl1326613315%_)
                                                (let ((_g20940_
                                                       (gx#syntax-split-splice
                                                        _%tl1326613315%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20941_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20940_)
                         (##vector-length _g20940_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20941_ 2)))
                  (error "Context expects 2 values" _g20941_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target1326713318%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20940_
                                                              0)))
                                                          (_%tl1326913321%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20940_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl1326913321%_)
                                                          (letrec ((_%loop1327013324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd1326813328%_ _%K1327413331%_)
                              (if (gx#stx-pair? _%hd1326813328%_)
                                  (let ((_%e1327113334%_
                                         (gx#syntax-e _%hd1326813328%_)))
                                    (let ((_%lp-hd1327213338%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1327113334%_)))
                                          (_%lp-tl1327313341%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1327113334%_))))
                                      (_%loop1327013324%_
                                       _%lp-tl1327313341%_
                                       (cons _%lp-hd1327213338%_
                                             _%K1327413331%_))))
                                  (let ((_%K1327513344%_
                                         (reverse _%K1327413331%_)))
                                    ((lambda (_%L13348%_ _%L13350%_ _%L13351%_)
                                       (let* ((_%len13381%_
                                               (length (foldr (lambda (_%g1337213375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1337313378%_)
                        (cons _%g1337213375%_ _%g1337313378%_))
                      '()
                      _%L13348%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%mid13384%_
                                               (quotient _%len13381%_ '2))
                                              (_g20942_
                                               (_%split13250%_
                                                (foldr (lambda (_%g1338613389%_
                                                                _%g1338713392%_)
                                                         (cons _%g1338613389%_
                                                               _%g1338713392%_))
                                                       '()
                                                       _%L13348%_)
                                                _%mid13384%_)))
                                         (begin
                                           (let ((_g20943_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g20942_)
                                                        (##vector-length
                                                         _g20942_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g20943_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g20943_)))
                                           (let ((_%left13395%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g20942_ 0)))
                                                 (_%right13397%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g20942_
                                                     1))))
                                             (let* ((_%g1340113442%_
                                                     (lambda (_%g1340213438%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g1340213438%_)))
                                                    (_%g1340013603%_
                                                     (lambda (_%g1340213446%_)
                                                       (if (gx#stx-pair?
                                                            _%g1340213446%_)
                                                           (let ((_%e1340713449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g1340213446%_)))
                     (let ((_%hd1340813453%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1340713449%_)))
                           (_%tl1340913456%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1340713449%_))))
                       (if (gx#stx-pair? _%tl1340913456%_)
                           (let ((_%e1341013459%_
                                  (gx#syntax-e _%tl1340913456%_)))
                             (let ((_%hd1341113463%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1341013459%_)))
                                   (_%tl1341213466%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1341013459%_))))
                               (if (gx#stx-pair/null? _%hd1341113463%_)
                                   (let ((_g20944_
                                          (gx#syntax-split-splice
                                           _%hd1341113463%_
                                           '0)))
                                     (begin
                                       (let ((_g20945_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20944_)
                                                    (##vector-length _g20944_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20945_ 2)))
                                             (error "Context expects 2 values"
                                                    _g20945_)))
                                       (let ((_%target1341313469%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20944_ 0)))
                                             (_%tl1341513472%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20944_ 1))))
                                         (if (gx#stx-null? _%tl1341513472%_)
                                             (letrec ((_%loop1341613475%_
                                                       (lambda (_%hd1341413479%_
                                                                _%K-left1342013482%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1341413479%_)
                                                             (let ((_%e1341713485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1341413479%_)))
                       (let ((_%lp-hd1341813489%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1341713485%_)))
                             (_%lp-tl1341913492%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1341713485%_))))
                         (_%loop1341613475%_
                          _%lp-tl1341913492%_
                          (cons _%lp-hd1341813489%_ _%K-left1342013482%_))))
                     (let ((_%K-left1342113495%_
                            (reverse _%K-left1342013482%_)))
                       (if (gx#stx-pair? _%tl1341213466%_)
                           (let ((_%e1342213499%_
                                  (gx#syntax-e _%tl1341213466%_)))
                             (let ((_%hd1342313503%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1342213499%_)))
                                   (_%tl1342413506%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1342213499%_))))
                               (if (gx#stx-pair/null? _%hd1342313503%_)
                                   (let ((_g20946_
                                          (gx#syntax-split-splice
                                           _%hd1342313503%_
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
                                       (let ((_%target1342513509%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20946_ 0)))
                                             (_%tl1342713512%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20946_ 1))))
                                         (if (gx#stx-null? _%tl1342713512%_)
                                             (letrec ((_%loop1342813515%_
                                                       (lambda (_%hd1342613519%_
                                                                _%K-right1343213522%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1342613519%_)
                                                             (let ((_%e1342913525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1342613519%_)))
                       (let ((_%lp-hd1343013529%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1342913525%_)))
                             (_%lp-tl1343113532%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1342913525%_))))
                         (_%loop1342813515%_
                          _%lp-tl1343113532%_
                          (cons _%lp-hd1343013529%_ _%K-right1343213522%_))))
                     (let ((_%K-right1343313535%_
                            (reverse _%K-right1343213522%_)))
                       (if (gx#stx-pair? _%tl1342413506%_)
                           (let ((_%e1343413539%_
                                  (gx#syntax-e _%tl1342413506%_)))
                             (let ((_%hd1343513543%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1343413539%_)))
                                   (_%tl1343613546%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1343413539%_))))
                               (if (gx#stx-null? _%tl1343613546%_)
                                   ((lambda (_%L13549%_
                                             _%L13551%_
                                             _%L13552%_
                                             _%L13553%_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '##fx<)
                                                        (cons _%L13350%_
                                                              (cons _%L13549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch*)
                                                              (cons _%L13351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L13350%_
                                  (foldr (lambda (_%g1358813591%_
                                                  _%g1358913594%_)
                                           (cons _%g1358813591%_
                                                 _%g1358913594%_))
                                         '()
                                         _%L13552%_))))
                (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                            (cons _%L13549%_
                                  (cons _%L13350%_
                                        (foldr (lambda (_%g1358613597%_
                                                        _%g1358713600%_)
                                                 (cons _%g1358613597%_
                                                       _%g1358713600%_))
                                               '()
                                               _%L13551%_))))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%hd1343513543%_
                                    _%K-right1343313535%_
                                    _%K-left1342113495%_
                                    _%hd1340813453%_)
                                   (_%g1340113442%_ _%g1340213446%_))))
                           (_%g1340113442%_ _%g1340213446%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1342813515%_
                                                _%target1342513509%_
                                                '()))
                                             (_%g1340113442%_
                                              _%g1340213446%_)))))
                                   (_%g1340113442%_ _%g1340213446%_))))
                           (_%g1340113442%_ _%g1340213446%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1341613475%_
                                                _%target1341313469%_
                                                '()))
                                             (_%g1340113442%_
                                              _%g1340213446%_)))))
                                   (_%g1340113442%_ _%g1340213446%_))))
                           (_%g1340113442%_ _%g1340213446%_))))
                   (_%g1340113442%_ _%g1340213446%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g1340013603%_
                                                (list _%mid13384%_
                                                      _%left13395%_
                                                      _%right13397%_
                                                      (fx+ _%mid13384%_
                                                           (gx#stx-e
                                                            _%L13351%_)))))))))
                                     _%K1327513344%_
                                     _%hd1326513312%_
                                     _%hd1326213302%_))))))
                    (_%loop1327013324%_ _%target1326713318%_ '()))
                  (_%g1325313281%_ _%g1325413285%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1325313281%_
                                                 _%g1325413285%_))))
                                        (_%g1325313281%_ _%g1325413285%_))))
                                (_%g1325313281%_ _%g1325413285%_))))
                        (_%g1325313281%_ _%g1325413285%_)))))
            (_%g1325213607%_ _%stx13247%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#do|
      (lambda (_%$stx13627%_)
        (let* ((_%g1363113702%_
                (lambda (_%g1363213698%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1363213698%_)))
               (_%g1363013991%_
                (lambda (_%g1363213706%_)
                  (if (gx#stx-pair? _%g1363213706%_)
                      (let ((_%e1363913709%_ (gx#syntax-e _%g1363213706%_)))
                        (let ((_%hd1364013713%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1363913709%_)))
                              (_%tl1364113716%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1363913709%_))))
                          (if (gx#stx-pair? _%tl1364113716%_)
                              (let ((_%e1364213719%_
                                     (gx#syntax-e _%tl1364113716%_)))
                                (let ((_%hd1364313723%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1364213719%_)))
                                      (_%tl1364413726%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1364213719%_))))
                                  (if (gx#stx-pair/null? _%hd1364313723%_)
                                      (let ((_g20948_
                                             (gx#syntax-split-splice
                                              _%hd1364313723%_
                                              '0)))
                                        (begin
                                          (let ((_g20949_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20948_)
                                                       (##vector-length
                                                        _g20948_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20949_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20949_)))
                                          (let ((_%target1364513729%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20948_ 0)))
                                                (_%tl1364713732%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20948_ 1))))
                                            (if (gx#stx-null? _%tl1364713732%_)
                                                (letrec ((_%loop1364813735%_
                                                          (lambda (_%hd1364613739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step1365213742%_
                           _%init1365313744%_
                           _%var1365413746%_)
                    (if (gx#stx-pair? _%hd1364613739%_)
                        (let ((_%e1364913749%_ (gx#syntax-e _%hd1364613739%_)))
                          (let ((_%lp-hd1365013753%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1364913749%_)))
                                (_%lp-tl1365113756%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1364913749%_))))
                            (if (gx#stx-pair? _%lp-hd1365013753%_)
                                (let ((_%e1368213759%_
                                       (gx#syntax-e _%lp-hd1365013753%_)))
                                  (let ((_%hd1368313763%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1368213759%_)))
                                        (_%tl1368413766%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1368213759%_))))
                                    (if (gx#stx-pair? _%tl1368413766%_)
                                        (let ((_%e1368513769%_
                                               (gx#syntax-e _%tl1368413766%_)))
                                          (let ((_%hd1368613773%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1368513769%_)))
                                                (_%tl1368713776%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1368513769%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl1368713776%_)
                                                (let ((_g20950_
                                                       (gx#syntax-split-splice
                                                        _%tl1368713776%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20951_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20950_)
                         (##vector-length _g20950_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20951_ 2)))
                  (error "Context expects 2 values" _g20951_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target1368813779%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20950_
                                                              0)))
                                                          (_%tl1369013782%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20950_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl1369013782%_)
                                                          (letrec ((_%loop1369113785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd1368913789%_ _%step1369513792%_)
                              (if (gx#stx-pair? _%hd1368913789%_)
                                  (let ((_%e1369213795%_
                                         (gx#syntax-e _%hd1368913789%_)))
                                    (let ((_%lp-hd1369313799%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1369213795%_)))
                                          (_%lp-tl1369413802%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1369213795%_))))
                                      (_%loop1369113785%_
                                       _%lp-tl1369413802%_
                                       (cons _%lp-hd1369313799%_
                                             _%step1369513792%_))))
                                  (let ((_%step1369613805%_
                                         (reverse _%step1369513792%_)))
                                    (_%loop1364813735%_
                                     _%lp-tl1365113756%_
                                     (cons _%step1369613805%_
                                           _%step1365213742%_)
                                     (cons _%hd1368613773%_ _%init1365313744%_)
                                     (cons _%hd1368313763%_
                                           _%var1365413746%_)))))))
                    (_%loop1369113785%_ _%target1368813779%_ '()))
                  (_%g1363113702%_ _%g1363213706%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1363113702%_
                                                 _%g1363213706%_))))
                                        (_%g1363113702%_ _%g1363213706%_))))
                                (_%g1363113702%_ _%g1363213706%_))))
                        (let ((_%step1365513809%_ (reverse _%step1365213742%_))
                              (_%init1365613812%_ (reverse _%init1365313744%_))
                              (_%var1365713814%_ (reverse _%var1365413746%_)))
                          (if (gx#stx-pair? _%tl1364413726%_)
                              (let ((_%e1365813817%_
                                     (gx#syntax-e _%tl1364413726%_)))
                                (let ((_%hd1365913821%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1365813817%_)))
                                      (_%tl1366013824%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1365813817%_))))
                                  (if (gx#stx-pair? _%hd1365913821%_)
                                      (let ((_%e1366113827%_
                                             (gx#syntax-e _%hd1365913821%_)))
                                        (let ((_%hd1366213831%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1366113827%_)))
                                              (_%tl1366313834%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1366113827%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1366313834%_)
                                              (let ((_g20952_
                                                     (gx#syntax-split-splice
                                                      _%tl1366313834%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20953_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20952_)
                                                               (##vector-length
                                                                _g20952_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20953_ 2)))
                (error "Context expects 2 values" _g20953_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1366413837%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g20952_
                                                            0)))
                                                        (_%tl1366613840%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g20952_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1366613840%_)
                                                        (letrec ((_%loop1366713843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1366513847%_ _%fini1367113850%_)
                            (if (gx#stx-pair? _%hd1366513847%_)
                                (let ((_%e1366813853%_
                                       (gx#syntax-e _%hd1366513847%_)))
                                  (let ((_%lp-hd1366913857%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1366813853%_)))
                                        (_%lp-tl1367013860%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1366813853%_))))
                                    (_%loop1366713843%_
                                     _%lp-tl1367013860%_
                                     (cons _%lp-hd1366913857%_
                                           _%fini1367113850%_))))
                                (let ((_%fini1367213863%_
                                       (reverse _%fini1367113850%_)))
                                  (if (gx#stx-pair/null? _%tl1366013824%_)
                                      (let ((_g20954_
                                             (gx#syntax-split-splice
                                              _%tl1366013824%_
                                              '0)))
                                        (begin
                                          (let ((_g20955_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20954_)
                                                       (##vector-length
                                                        _g20954_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20955_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20955_)))
                                          (let ((_%target1367313867%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20954_ 0)))
                                                (_%tl1367513870%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20954_ 1))))
                                            (if (gx#stx-null? _%tl1367513870%_)
                                                (letrec ((_%loop1367613873%_
                                                          (lambda (_%hd1367413877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body1368013880%_)
                    (if (gx#stx-pair? _%hd1367413877%_)
                        (let ((_%e1367713883%_ (gx#syntax-e _%hd1367413877%_)))
                          (let ((_%lp-hd1367813887%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1367713883%_)))
                                (_%lp-tl1367913890%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1367713883%_))))
                            (_%loop1367613873%_
                             _%lp-tl1367913890%_
                             (cons _%lp-hd1367813887%_ _%body1368013880%_))))
                        (let ((_%body1368113893%_
                               (reverse _%body1368013880%_)))
                          ((lambda (_%L13897%_
                                    _%L13899%_
                                    _%L13900%_
                                    _%L13901%_
                                    _%L13902%_
                                    _%L13903%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g1393613939%_
                                                  _%g1393713942%_)
                                           (cons _%g1393613939%_
                                                 _%g1393713942%_))
                                         '()
                                         _%L13903%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%L13902%_
                                                      _%L13903%_)
                                                     (foldr (lambda (_%g1395313957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g1395413960%_
                             _%g1395513962%_)
                      (cons (cons _%g1395413960%_ (cons _%g1395313957%_ '()))
                            _%g1395513962%_))
                    '()
                    _%L13902%_
                    _%L13903%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _%L13900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_%g1395113965%_
                                                               _%g1395213968%_)
                                                        (cons _%g1395113965%_
                                                              _%g1395213968%_))
                                                      '()
                                                      _%L13899%_)))
                                   (cons (cons (gx#datum->syntax '#f 'begin)
                                               (foldr (lambda (_%g1394413971%_
                                                               _%g1394513974%_)
                                                        (cons _%g1394413971%_
                                                              _%g1394513974%_))
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$loop)
                          (begin
                            (gx#syntax-check-splice-targets
                             _%L13901%_
                             _%L13903%_)
                            (foldr (lambda (_%g1394613977%_
                                            _%g1394713980%_
                                            _%g1394813982%_)
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons _%g1394713980%_
                                                       (foldr (lambda (_%g1394913985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1395013988%_)
                        (cons _%g1394913985%_ _%g1395013988%_))
                      '()
                      _%g1394613977%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g1394813982%_))
                                   '()
                                   _%L13901%_
                                   _%L13903%_)))
                    '())
              _%L13897%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g1363113702%_ _%g1363213706%_)))
                           _%body1368113893%_
                           _%fini1367213863%_
                           _%hd1366213831%_
                           _%step1365513809%_
                           _%init1365613812%_
                           _%var1365713814%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1367613873%_
                                                   _%target1367313867%_
                                                   '()))
                                                (_%g1363113702%_
                                                 _%g1363213706%_)))))
                                      (_%g1363113702%_ _%g1363213706%_)))))))
                  (_%loop1366713843%_ _%target1366413837%_ '()))
                (_%g1363113702%_ _%g1363213706%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1363113702%_
                                               _%g1363213706%_))))
                                      (_%g1363113702%_ _%g1363213706%_))))
                              (_%g1363113702%_ _%g1363213706%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1364813735%_
                                                   _%target1364513729%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g1363113702%_
                                                 _%g1363213706%_)))))
                                      (_%g1363113702%_ _%g1363213706%_))))
                              (_%g1363113702%_ _%g1363213706%_))))
                      (_%g1363113702%_ _%g1363213706%_)))))
          (_%g1363013991%_ _%$stx13627%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#do-while|
      (lambda (_%$stx13999%_)
        (let* ((_%g1400314026%_
                (lambda (_%g1400414022%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1400414022%_)))
               (_%g1400214097%_
                (lambda (_%g1400414030%_)
                  (if (gx#stx-pair? _%g1400414030%_)
                      (let ((_%e1400914033%_ (gx#syntax-e _%g1400414030%_)))
                        (let ((_%hd1401014037%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1400914033%_)))
                              (_%tl1401114040%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1400914033%_))))
                          (if (gx#stx-pair? _%tl1401114040%_)
                              (let ((_%e1401214043%_
                                     (gx#syntax-e _%tl1401114040%_)))
                                (let ((_%hd1401314047%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1401214043%_)))
                                      (_%tl1401414050%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1401214043%_))))
                                  (if (gx#stx-pair? _%tl1401414050%_)
                                      (let ((_%e1401514053%_
                                             (gx#syntax-e _%tl1401414050%_)))
                                        (let ((_%hd1401614057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1401514053%_)))
                                              (_%tl1401714060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1401514053%_))))
                                          (if (gx#stx-pair? _%hd1401614057%_)
                                              (let ((_%e1401814063%_
                                                     (gx#syntax-e
                                                      _%hd1401614057%_)))
                                                (let ((_%hd1401914067%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1401814063%_)))
                                                      (_%tl1402014070%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1401814063%_))))
                                                  ((lambda (_%L14073%_
                                                            _%L14075%_
                                                            _%L14076%_
                                                            _%L14077%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'do)
                                                           (cons _%L14077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (gx#datum->syntax '#f 'not)
                                           (cons _%L14076%_ '()))
                                     _%L14075%_)
                               _%L14073%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%tl1401714060%_
                                                   _%tl1402014070%_
                                                   _%hd1401914067%_
                                                   _%hd1401314047%_)))
                                              (_%g1400314026%_
                                               _%g1400414030%_))))
                                      (_%g1400314026%_ _%g1400414030%_))))
                              (_%g1400314026%_ _%g1400414030%_))))
                      (_%g1400314026%_ _%g1400414030%_)))))
          (_%g1400214097%_ _%$stx13999%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#begin0|
      (lambda (_%$stx14101%_)
        (let* ((_%__stx1987819879%_ _%$stx14101%_)
               (_%g1410614137%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1987819879%_))))
          (let ((_%__kont1988119882%_ (lambda (_%L14249%_) _%L14249%_))
                (_%__kont1988319884%_
                 (lambda (_%L14194%_ _%L14196%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$r)
                                     (cons _%L14196%_ '()))
                               (cons (cons (gx#datum->syntax '#f '%#expression)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1421314216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1421414219%_)
                        (cons _%g1421314216%_ _%g1421414219%_))
                      '()
                      _%L14194%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (gx#datum->syntax '#f '$r)
                                           '())))))))
            (let ((_%__match1992119922%_
                   (lambda (_%e1411714144%_
                            _%hd1411814148%_
                            _%tl1411914151%_
                            _%e1412014154%_
                            _%hd1412114158%_
                            _%tl1412214161%_
                            _%__splice1988519886%_
                            _%target1412314164%_
                            _%tl1412514167%_)
                     (letrec ((_%loop1412614170%_
                               (lambda (_%hd1412414174%_ _%rest1413014177%_)
                                 (if (gx#stx-pair? _%hd1412414174%_)
                                     (let ((_%e1412714180%_
                                            (gx#syntax-e _%hd1412414174%_)))
                                       (let ((_%lp-tl1412914187%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1412714180%_)))
                                             (_%lp-hd1412814184%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1412714180%_))))
                                         (_%loop1412614170%_
                                          _%lp-tl1412914187%_
                                          (cons _%lp-hd1412814184%_
                                                _%rest1413014177%_))))
                                     (let ((_%rest1413114190%_
                                            (reverse _%rest1413014177%_)))
                                       (_%__kont1988319884%_
                                        _%rest1413114190%_
                                        _%hd1412114158%_))))))
                       (_%loop1412614170%_ _%target1412314164%_ '())))))
              (if (gx#stx-pair? _%__stx1987819879%_)
                  (let ((_%e1410914229%_ (gx#syntax-e _%__stx1987819879%_)))
                    (let ((_%tl1411114236%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1410914229%_)))
                          (_%hd1411014233%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1410914229%_))))
                      (if (gx#stx-pair? _%tl1411114236%_)
                          (let ((_%e1411214239%_
                                 (gx#syntax-e _%tl1411114236%_)))
                            (let ((_%tl1411414246%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1411214239%_)))
                                  (_%hd1411314243%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1411214239%_))))
                              (if (gx#stx-null? _%tl1411414246%_)
                                  (_%__kont1988119882%_ _%hd1411314243%_)
                                  (if (gx#stx-pair/null? _%tl1411414246%_)
                                      (let ((_%__splice1988519886%_
                                             (gx#syntax-split-splice
                                              _%tl1411414246%_
                                              '0)))
                                        (let ((_%tl1412514167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1988519886%_
                                                  '1)))
                                              (_%target1412314164%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1988519886%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1412514167%_)
                                              (_%__match1992119922%_
                                               _%e1410914229%_
                                               _%hd1411014233%_
                                               _%tl1411114236%_
                                               _%e1411214239%_
                                               _%hd1411314243%_
                                               _%tl1411414246%_
                                               _%__splice1988519886%_
                                               _%target1412314164%_
                                               _%tl1412514167%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1410614137%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1410614137%_))))))
                          (let () (declare (not safe)) (_%g1410614137%_)))))
                  (let () (declare (not safe)) (_%g1410614137%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#rec|
      (lambda (_%$stx14267%_)
        (let* ((_%__stx1992419925%_ _%$stx14267%_)
               (_%g1427314326%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1992419925%_))))
          (let ((_%__kont1992719928%_
                 (lambda (_%L14528%_ _%L14530%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%L14530%_ (cons _%L14528%_ '()))
                                     '())
                               (cons _%L14530%_ '())))))
                (_%__kont1992919930%_
                 (lambda (_%L14472%_ _%L14474%_)
                   (cons (gx#datum->syntax '#f 'letrec-values)
                         (cons (cons (cons _%L14474%_ (cons _%L14472%_ '()))
                                     '())
                               (cons (cons (gx#datum->syntax '#f 'values)
                                           _%L14474%_)
                                     '())))))
                (_%__kont1993119932%_
                 (lambda (_%L14393%_ _%L14395%_ _%L14396%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%L14396%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons _%L14395%_
                                                             (foldr (lambda (_%g1441614419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1441714422%_)
                              (cons _%g1441614419%_ _%g1441714422%_))
                            '()
                            _%L14393%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons _%L14396%_ '()))))))
            (let* ((_%__match2001120012%_
                    (lambda (_%e1430314333%_
                             _%hd1430414337%_
                             _%tl1430514340%_
                             _%e1430614343%_
                             _%hd1430714347%_
                             _%tl1430814350%_
                             _%e1430914353%_
                             _%hd1431014357%_
                             _%tl1431114360%_
                             _%__splice1993319934%_
                             _%target1431214363%_
                             _%tl1431414366%_)
                      (letrec ((_%loop1431514369%_
                                (lambda (_%hd1431314373%_ _%body1431914376%_)
                                  (if (gx#stx-pair? _%hd1431314373%_)
                                      (let ((_%e1431614379%_
                                             (gx#syntax-e _%hd1431314373%_)))
                                        (let ((_%lp-tl1431814386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1431614379%_)))
                                              (_%lp-hd1431714383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1431614379%_))))
                                          (_%loop1431514369%_
                                           _%lp-tl1431814386%_
                                           (cons _%lp-hd1431714383%_
                                                 _%body1431914376%_))))
                                      (let ((_%body1432014389%_
                                             (reverse _%body1431914376%_)))
                                        (let ((_%L14393%_ _%body1432014389%_)
                                              (_%L14395%_ _%tl1431114360%_)
                                              (_%L14396%_ _%hd1431014357%_))
                                          (if (gx#identifier? _%L14396%_)
                                              (_%__kont1993119932%_
                                               _%L14393%_
                                               _%L14395%_
                                               _%L14396%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1427314326%_)))))))))
                        (_%loop1431514369%_ _%target1431214363%_ '()))))
                   (_%__match1998519986%_
                    (lambda (_%e1428814432%_
                             _%hd1428914436%_
                             _%tl1429014439%_
                             _%e1429114442%_
                             _%hd1429214446%_
                             _%tl1429314449%_
                             _%e1429414452%_
                             _%hd1429514456%_
                             _%tl1429614459%_
                             _%e1429714462%_
                             _%hd1429814466%_
                             _%tl1429914469%_)
                      (let ((_%L14472%_ _%hd1429814466%_)
                            (_%L14474%_ _%tl1429614459%_))
                        (if (gx#identifier-list? _%L14474%_)
                            (_%__kont1992919930%_ _%L14472%_ _%L14474%_)
                            (if (gx#stx-pair/null? _%tl1429314449%_)
                                (let ((_%__splice1993319934%_
                                       (gx#syntax-split-splice
                                        _%tl1429314449%_
                                        '0)))
                                  (let ((_%tl1431414366%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1993319934%_
                                            '1)))
                                        (_%target1431214363%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1993319934%_
                                            '0))))
                                    (if (gx#stx-null? _%tl1431414366%_)
                                        (_%__match2001120012%_
                                         _%e1428814432%_
                                         _%hd1428914436%_
                                         _%tl1429014439%_
                                         _%e1429114442%_
                                         _%hd1429214446%_
                                         _%tl1429314449%_
                                         _%e1429414452%_
                                         _%hd1429514456%_
                                         _%tl1429614459%_
                                         _%__splice1993319934%_
                                         _%target1431214363%_
                                         _%tl1431414366%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1427314326%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1427314326%_)))))))
                   (_%__match1995519956%_
                    (lambda (_%e1427714498%_
                             _%hd1427814502%_
                             _%tl1427914505%_
                             _%e1428014508%_
                             _%hd1428114512%_
                             _%tl1428214515%_
                             _%e1428314518%_
                             _%hd1428414522%_
                             _%tl1428514525%_)
                      (let ((_%L14528%_ _%hd1428414522%_)
                            (_%L14530%_ _%hd1428114512%_))
                        (if (gx#identifier? _%L14530%_)
                            (_%__kont1992719928%_ _%L14528%_ _%L14530%_)
                            (if (gx#stx-pair? _%hd1428114512%_)
                                (let ((_%e1429414452%_
                                       (gx#syntax-e _%hd1428114512%_)))
                                  (let ((_%tl1429614459%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1429414452%_)))
                                        (_%hd1429514456%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1429414452%_))))
                                    (if (gx#identifier? _%hd1429514456%_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core/sugar~Sugar-2[1]#_g20956_|
                                             _%hd1429514456%_)
                                            (_%__match1998519986%_
                                             _%e1427714498%_
                                             _%hd1427814502%_
                                             _%tl1427914505%_
                                             _%e1428014508%_
                                             _%hd1428114512%_
                                             _%tl1428214515%_
                                             _%e1429414452%_
                                             _%hd1429514456%_
                                             _%tl1429614459%_
                                             _%e1428314518%_
                                             _%hd1428414522%_
                                             _%tl1428514525%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl1428214515%_)
                                                (let ((_%__splice1993319934%_
                                                       (gx#syntax-split-splice
                                                        _%tl1428214515%_
                                                        '0)))
                                                  (let ((_%tl1431414366%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1993319934%_
                                                            '1)))
                                                        (_%target1431214363%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1993319934%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl1431414366%_)
                                                        (_%__match2001120012%_
                                                         _%e1427714498%_
                                                         _%hd1427814502%_
                                                         _%tl1427914505%_
                                                         _%e1428014508%_
                                                         _%hd1428114512%_
                                                         _%tl1428214515%_
                                                         _%e1429414452%_
                                                         _%hd1429514456%_
                                                         _%tl1429614459%_
                                                         _%__splice1993319934%_
                                                         _%target1431214363%_
                                                         _%tl1431414366%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g1427314326%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1427314326%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl1428214515%_)
                                            (let ((_%__splice1993319934%_
                                                   (gx#syntax-split-splice
                                                    _%tl1428214515%_
                                                    '0)))
                                              (let ((_%tl1431414366%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1993319934%_
                                                        '1)))
                                                    (_%target1431214363%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1993319934%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1431414366%_)
                                                    (_%__match2001120012%_
                                                     _%e1427714498%_
                                                     _%hd1427814502%_
                                                     _%tl1427914505%_
                                                     _%e1428014508%_
                                                     _%hd1428114512%_
                                                     _%tl1428214515%_
                                                     _%e1429414452%_
                                                     _%hd1429514456%_
                                                     _%tl1429614459%_
                                                     _%__splice1993319934%_
                                                     _%target1431214363%_
                                                     _%tl1431414366%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1427314326%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g1427314326%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1427314326%_))))))))
              (if (gx#stx-pair? _%__stx1992419925%_)
                  (let ((_%e1427714498%_ (gx#syntax-e _%__stx1992419925%_)))
                    (let ((_%tl1427914505%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1427714498%_)))
                          (_%hd1427814502%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1427714498%_))))
                      (if (gx#stx-pair? _%tl1427914505%_)
                          (let ((_%e1428014508%_
                                 (gx#syntax-e _%tl1427914505%_)))
                            (let ((_%tl1428214515%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1428014508%_)))
                                  (_%hd1428114512%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1428014508%_))))
                              (if (gx#stx-pair? _%tl1428214515%_)
                                  (let ((_%e1428314518%_
                                         (gx#syntax-e _%tl1428214515%_)))
                                    (let ((_%tl1428514525%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1428314518%_)))
                                          (_%hd1428414522%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1428314518%_))))
                                      (if (gx#stx-null? _%tl1428514525%_)
                                          (_%__match1995519956%_
                                           _%e1427714498%_
                                           _%hd1427814502%_
                                           _%tl1427914505%_
                                           _%e1428014508%_
                                           _%hd1428114512%_
                                           _%tl1428214515%_
                                           _%e1428314518%_
                                           _%hd1428414522%_
                                           _%tl1428514525%_)
                                          (if (gx#stx-pair? _%hd1428114512%_)
                                              (let ((_%e1429414452%_
                                                     (gx#syntax-e
                                                      _%hd1428114512%_)))
                                                (let ((_%tl1429614459%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1429414452%_)))
                                                      (_%hd1429514456%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1429414452%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl1428214515%_)
                                                      (let ((_%__splice1993319934%_
                                                             (gx#syntax-split-splice
                                                              _%tl1428214515%_
                                                              '0)))
                                                        (let ((_%tl1431414366%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice1993319934%_ '1)))
                      (_%target1431214363%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice1993319934%_ '0))))
                  (if (gx#stx-null? _%tl1431414366%_)
                      (_%__match2001120012%_
                       _%e1427714498%_
                       _%hd1427814502%_
                       _%tl1427914505%_
                       _%e1428014508%_
                       _%hd1428114512%_
                       _%tl1428214515%_
                       _%e1429414452%_
                       _%hd1429514456%_
                       _%tl1429614459%_
                       _%__splice1993319934%_
                       _%target1431214363%_
                       _%tl1431414366%_)
                      (let () (declare (not safe)) (_%g1427314326%_)))))
              (let () (declare (not safe)) (_%g1427314326%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1427314326%_))))))
                                  (if (gx#stx-pair? _%hd1428114512%_)
                                      (let ((_%e1429414452%_
                                             (gx#syntax-e _%hd1428114512%_)))
                                        (let ((_%tl1429614459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1429414452%_)))
                                              (_%hd1429514456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1429414452%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1428214515%_)
                                              (let ((_%__splice1993319934%_
                                                     (gx#syntax-split-splice
                                                      _%tl1428214515%_
                                                      '0)))
                                                (let ((_%tl1431414366%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1993319934%_
                                                          '1)))
                                                      (_%target1431214363%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1993319934%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1431414366%_)
                                                      (_%__match2001120012%_
                                                       _%e1427714498%_
                                                       _%hd1427814502%_
                                                       _%tl1427914505%_
                                                       _%e1428014508%_
                                                       _%hd1428114512%_
                                                       _%tl1428214515%_
                                                       _%e1429414452%_
                                                       _%hd1429514456%_
                                                       _%tl1429614459%_
                                                       _%__splice1993319934%_
                                                       _%target1431214363%_
                                                       _%tl1431414366%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1427314326%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1427314326%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1427314326%_))))))
                          (let () (declare (not safe)) (_%g1427314326%_)))))
                  (let () (declare (not safe)) (_%g1427314326%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet|
      (lambda (_%stx14550%_)
        (letrec ((_%let-bind?14553%_
                  (lambda (_%x15476%_)
                    (let* ((_%__stx2001420015%_ _%x15476%_)
                           (_%g1548115500%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2001420015%_))))
                      (let ((_%__kont2001720018%_
                             (lambda (_%L15568%_ _%L15570%_)
                               (_%let-head?14556%_ _%L15570%_)))
                            (_%__kont2001920020%_ (lambda (_%L15528%_) '#t))
                            (_%__kont2002120022%_ (lambda () '#f)))
                        (if (gx#stx-pair? _%__stx2001420015%_)
                            (let ((_%e1548515548%_
                                   (gx#syntax-e _%__stx2001420015%_)))
                              (let ((_%tl1548715555%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1548515548%_)))
                                    (_%hd1548615552%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1548515548%_))))
                                (if (gx#stx-pair? _%tl1548715555%_)
                                    (let ((_%e1548815558%_
                                           (gx#syntax-e _%tl1548715555%_)))
                                      (let ((_%tl1549015565%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1548815558%_)))
                                            (_%hd1548915562%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1548815558%_))))
                                        (if (gx#stx-null? _%tl1549015565%_)
                                            (_%__kont2001720018%_
                                             _%hd1548915562%_
                                             _%hd1548615552%_)
                                            (_%__kont2002120022%_))))
                                    (if (gx#stx-null? _%tl1548715555%_)
                                        (_%__kont2001920020%_ _%hd1548615552%_)
                                        (_%__kont2002120022%_)))))
                            (_%__kont2002120022%_))))))
                 (_%let-bind14555%_
                  (lambda (_%x15378%_)
                    (let* ((_%__stx2004820049%_ _%x15378%_)
                           (_%g1538215401%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2004820049%_))))
                      (let ((_%__kont2005120052%_
                             (lambda (_%L15457%_ _%L15459%_) _%x15378%_))
                            (_%__kont2005320054%_
                             (lambda (_%L15418%_)
                               (cons (gx#datum->syntax '#f '_)
                                     (cons _%L15418%_ '())))))
                        (if (gx#stx-pair? _%__stx2004820049%_)
                            (let ((_%e1538615437%_
                                   (gx#syntax-e _%__stx2004820049%_)))
                              (let ((_%tl1538815444%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1538615437%_)))
                                    (_%hd1538715441%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1538615437%_))))
                                (if (gx#stx-pair? _%tl1538815444%_)
                                    (let ((_%e1538915447%_
                                           (gx#syntax-e _%tl1538815444%_)))
                                      (let ((_%tl1539115454%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1538915447%_)))
                                            (_%hd1539015451%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1538915447%_))))
                                        (if (gx#stx-null? _%tl1539115454%_)
                                            (_%__kont2005120052%_
                                             _%hd1539015451%_
                                             _%hd1538715441%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1538215401%_)))))
                                    (if (gx#stx-null? _%tl1538815444%_)
                                        (_%__kont2005320054%_ _%hd1538715441%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1538215401%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g1538215401%_)))))))
                 (_%let-head?14556%_
                  (lambda (_%x15318%_)
                    (let* ((_%__stx2008020081%_ _%x15318%_)
                           (_%g1532215333%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2008020081%_))))
                      (let ((_%__kont2008320084%_
                             (lambda (_%L15361%_)
                               (gx#stx-andmap gx#identifier? _%L15361%_)))
                            (_%__kont2008520086%_
                             (lambda () (gx#identifier? _%x15318%_))))
                        (if (gx#stx-pair? _%__stx2008020081%_)
                            (let ((_%e1532515351%_
                                   (gx#syntax-e _%__stx2008020081%_)))
                              (let ((_%tl1532715358%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1532515351%_)))
                                    (_%hd1532615355%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1532515351%_))))
                                (if (gx#identifier? _%hd1532615355%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g20957_|
                                         _%hd1532615355%_)
                                        (_%__kont2008320084%_ _%tl1532715358%_)
                                        (_%__kont2008520086%_))
                                    (_%__kont2008520086%_))))
                            (_%__kont2008520086%_))))))
                 (_%let-head14557%_
                  (lambda (_%x15258%_)
                    (let* ((_%__stx2010020101%_ _%x15258%_)
                           (_%g1526215273%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2010020101%_))))
                      (let ((_%__kont2010320104%_
                             (lambda (_%L15301%_) _%L15301%_))
                            (_%__kont2010520106%_
                             (lambda () (list _%x15258%_))))
                        (if (gx#stx-pair? _%__stx2010020101%_)
                            (let ((_%e1526515291%_
                                   (gx#syntax-e _%__stx2010020101%_)))
                              (let ((_%tl1526715298%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1526515291%_)))
                                    (_%hd1526615295%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1526515291%_))))
                                (if (gx#identifier? _%hd1526615295%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g20958_|
                                         _%hd1526615295%_)
                                        (_%__kont2010320104%_ _%tl1526715298%_)
                                        (_%__kont2010520106%_))
                                    (_%__kont2010520106%_))))
                            (_%__kont2010520106%_)))))))
          (let* ((_%__stx2012020121%_ _%stx14550%_)
                 (_%g1456114633%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2012020121%_))))
            (let ((_%__kont2012320124%_
                   (lambda (_%L15231%_ _%L15233%_ _%L15234%_ _%L15235%_)
                     (cons _%L15235%_
                           (cons (cons (cons _%L15234%_ (cons _%L15233%_ '()))
                                       '())
                                 _%L15231%_))))
                  (_%__kont2012520126%_
                   (lambda (_%L15153%_ _%L15155%_)
                     (cons (gx#datum->syntax '#f 'and)
                           (cons _%L15155%_
                                 (cons (cons (gx#datum->syntax '#f 'let)
                                             (cons '()
                                                   (foldr (lambda (_%g1517515178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1517615181%_)
                    (cons _%g1517515178%_ _%g1517615181%_))
                  '()
                  _%L15153%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                  (_%__kont2012920130%_
                   (lambda (_%L14720%_ _%L14722%_)
                     (let* ((_%g1475314779%_
                             (lambda (_%g1475414775%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g1475414775%_)))
                            (_%g1475215064%_
                             (lambda (_%g1475414783%_)
                               (if (gx#stx-pair/null? _%g1475414783%_)
                                   (let ((_g20959_
                                          (gx#syntax-split-splice
                                           _%g1475414783%_
                                           '0)))
                                     (begin
                                       (let ((_g20960_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20959_)
                                                    (##vector-length _g20959_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20960_ 2)))
                                             (error "Context expects 2 values"
                                                    _g20960_)))
                                       (let ((_%target1475714786%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20959_ 0)))
                                             (_%tl1475914789%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20959_ 1))))
                                         (if (gx#stx-null? _%tl1475914789%_)
                                             (letrec ((_%loop1476014792%_
                                                       (lambda (_%hd1475814796%_
                                                                _%e1476414799%_
                                                                _%hd1476514801%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1475814796%_)
                                                             (let ((_%e1476114804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1475814796%_)))
                       (let ((_%lp-hd1476214808%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1476114804%_)))
                             (_%lp-tl1476314811%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1476114804%_))))
                         (if (gx#stx-pair? _%lp-hd1476214808%_)
                             (let ((_%e1476814814%_
                                    (gx#syntax-e _%lp-hd1476214808%_)))
                               (let ((_%hd1476914818%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1476814814%_)))
                                     (_%tl1477014821%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1476814814%_))))
                                 (if (gx#stx-pair? _%tl1477014821%_)
                                     (let ((_%e1477114824%_
                                            (gx#syntax-e _%tl1477014821%_)))
                                       (let ((_%hd1477214828%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1477114824%_)))
                                             (_%tl1477314831%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1477114824%_))))
                                         (if (gx#stx-null? _%tl1477314831%_)
                                             (_%loop1476014792%_
                                              _%lp-tl1476314811%_
                                              (cons _%hd1477214828%_
                                                    _%e1476414799%_)
                                              (cons _%hd1476914818%_
                                                    _%hd1476514801%_))
                                             (_%g1475314779%_
                                              _%g1475414783%_))))
                                     (_%g1475314779%_ _%g1475414783%_))))
                             (_%g1475314779%_ _%g1475414783%_))))
                     (let ((_%e1476614834%_ (reverse _%e1476414799%_))
                           (_%hd1476714837%_ (reverse _%hd1476514801%_)))
                       ((lambda (_%L14840%_ _%L14842%_)
                          (let* ((_%g1485814875%_
                                  (lambda (_%g1485914871%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1485914871%_)))
                                 (_%g1485715052%_
                                  (lambda (_%g1485914879%_)
                                    (if (gx#stx-pair/null? _%g1485914879%_)
                                        (let ((_g20961_
                                               (gx#syntax-split-splice
                                                _%g1485914879%_
                                                '0)))
                                          (begin
                                            (let ((_g20962_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g20961_)
                                                         (##vector-length
                                                          _g20961_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g20962_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g20962_)))
                                            (let ((_%target1486114882%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g20961_
                                                      0)))
                                                  (_%tl1486314885%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g20961_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl1486314885%_)
                                                  (letrec ((_%loop1486414888%_
                                                            (lambda (_%hd1486214892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$e1486814895%_)
                      (if (gx#stx-pair? _%hd1486214892%_)
                          (let ((_%e1486514898%_
                                 (gx#syntax-e _%hd1486214892%_)))
                            (let ((_%lp-hd1486614902%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1486514898%_)))
                                  (_%lp-tl1486714905%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1486514898%_))))
                              (_%loop1486414888%_
                               _%lp-tl1486714905%_
                               (cons _%lp-hd1486614902%_ _%$e1486814895%_))))
                          (let ((_%$e1486914908%_ (reverse _%$e1486814895%_)))
                            ((lambda (_%L14912%_)
                               (let* ((_%g1492914946%_
                                       (lambda (_%g1493014942%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1493014942%_)))
                                      (_%g1492815040%_
                                       (lambda (_%g1493014950%_)
                                         (if (gx#stx-pair/null?
                                              _%g1493014950%_)
                                             (let ((_g20963_
                                                    (gx#syntax-split-splice
                                                     _%g1493014950%_
                                                     '0)))
                                               (begin
                                                 (let ((_g20964_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g20963_)
                                                              (##vector-length
                                                               _g20963_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g20964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g20964_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target1493214953%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g20963_
                                                           0)))
                                                       (_%tl1493414956%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g20963_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl1493414956%_)
                                                       (letrec ((_%loop1493514959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd1493314963%_ _%hd-bind1493914966%_)
                           (if (gx#stx-pair? _%hd1493314963%_)
                               (let ((_%e1493614969%_
                                      (gx#syntax-e _%hd1493314963%_)))
                                 (let ((_%lp-hd1493714973%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1493614969%_)))
                                       (_%lp-tl1493814976%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1493614969%_))))
                                   (_%loop1493514959%_
                                    _%lp-tl1493814976%_
                                    (cons _%lp-hd1493714973%_
                                          _%hd-bind1493914966%_))))
                               (let ((_%hd-bind1494014979%_
                                      (reverse _%hd-bind1493914966%_)))
                                 ((lambda (_%L14983%_)
                                    (cons (gx#datum->syntax '#f 'let-values)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%L14840%_
                                                   _%L14912%_)
                                                  (foldr (lambda (_%g1500815012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1500915015%_
                          _%g1501015017%_)
                   (cons (cons (cons _%g1500915015%_ '())
                               (cons _%g1500815012%_ '()))
                         _%g1501015017%_))
                 '()
                 _%L14840%_
                 _%L14912%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'and)
                                                            (foldr (lambda (_%g1500115020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1500215023%_)
                             (cons _%g1500115020%_ _%g1500215023%_))
                           (cons (cons (gx#datum->syntax '#f 'let-values)
                                       (cons (begin
                                               (gx#syntax-check-splice-targets
                                                _%L14912%_
                                                _%L14983%_)
                                               (foldr (lambda (_%g1500515026%_
                                                               _%g1500615029%_
                                                               _%g1500715031%_)
                                                        (cons (cons _%g1500615029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g1500515026%_ '()))
                      _%g1500715031%_))
              '()
              _%L14912%_
              _%L14983%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (foldr (lambda (_%g1500315034%_
                                                             _%g1500415037%_)
                                                      (cons _%g1500315034%_
                                                            _%g1500415037%_))
                                                    '()
                                                    _%L14720%_)))
                                 '())
                           _%L14912%_))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%hd-bind1494014979%_))))))
                 (_%loop1493514959%_ _%target1493214953%_ '()))
               (_%g1492914946%_ _%g1493014950%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g1492914946%_
                                              _%g1493014950%_)))))
                                 (_%g1492815040%_
                                  (gx#stx-map
                                   _%let-head14557%_
                                   (foldr (lambda (_%g1504315046%_
                                                   _%g1504415049%_)
                                            (cons _%g1504315046%_
                                                  _%g1504415049%_))
                                          '()
                                          _%L14842%_)))))
                             _%$e1486914908%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop1486414888%_
                                                     _%target1486114882%_
                                                     '()))
                                                  (_%g1485814875%_
                                                   _%g1485914879%_)))))
                                        (_%g1485814875%_ _%g1485914879%_)))))
                            (_%g1485715052%_
                             (gx#gentemps
                              (foldr (lambda (_%g1505515058%_ _%g1505615061%_)
                                       (cons _%g1505515058%_ _%g1505615061%_))
                                     '()
                                     _%L14842%_)))))
                        _%e1476614834%_
                        _%hd1476714837%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1476014792%_
                                                _%target1475714786%_
                                                '()
                                                '()))
                                             (_%g1475314779%_
                                              _%g1475414783%_)))))
                                   (_%g1475314779%_ _%g1475414783%_)))))
                       (_%g1475215064%_
                        (gx#stx-map
                         _%let-bind14555%_
                         (foldr (lambda (_%g1506715070%_ _%g1506815073%_)
                                  (cons _%g1506715070%_ _%g1506815073%_))
                                '()
                                _%L14722%_)))))))
              (let* ((_%__match2021720218%_
                      (lambda (_%e1460414640%_
                               _%hd1460514644%_
                               _%tl1460614647%_
                               _%e1460714650%_
                               _%hd1460814654%_
                               _%tl1460914657%_
                               _%__splice2013120132%_
                               _%target1461014660%_
                               _%tl1461214663%_)
                        (letrec ((_%loop1461314666%_
                                  (lambda (_%hd1461114670%_ _%bind1461714673%_)
                                    (if (gx#stx-pair? _%hd1461114670%_)
                                        (let ((_%e1461414676%_
                                               (gx#syntax-e _%hd1461114670%_)))
                                          (let ((_%lp-tl1461614683%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1461414676%_)))
                                                (_%lp-hd1461514680%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1461414676%_))))
                                            (_%loop1461314666%_
                                             _%lp-tl1461614683%_
                                             (cons _%lp-hd1461514680%_
                                                   _%bind1461714673%_))))
                                        (let ((_%bind1461814686%_
                                               (reverse _%bind1461714673%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl1460914657%_)
                                              (let ((_%__splice2013320134%_
                                                     (gx#syntax-split-splice
                                                      _%tl1460914657%_
                                                      '0)))
                                                (let ((_%tl1462114693%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2013320134%_
                                                          '1)))
                                                      (_%target1461914690%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2013320134%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1462114693%_)
                                                      (letrec ((_%loop1462214696%_
                                                                (lambda (_%hd1462014700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body1462614703%_)
                          (if (gx#stx-pair? _%hd1462014700%_)
                              (let ((_%e1462314706%_
                                     (gx#syntax-e _%hd1462014700%_)))
                                (let ((_%lp-tl1462514713%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1462314706%_)))
                                      (_%lp-hd1462414710%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1462314706%_))))
                                  (_%loop1462214696%_
                                   _%lp-tl1462514713%_
                                   (cons _%lp-hd1462414710%_
                                         _%body1462614703%_))))
                              (let ((_%body1462714716%_
                                     (reverse _%body1462614703%_)))
                                (let ((_%L14720%_ _%body1462714716%_)
                                      (_%L14722%_ _%bind1461814686%_))
                                  (if (gx#stx-andmap
                                       _%let-bind?14553%_
                                       (foldr (lambda (_%g1474414747%_
                                                       _%g1474514750%_)
                                                (cons _%g1474414747%_
                                                      _%g1474514750%_))
                                              '()
                                              _%L14722%_))
                                      (_%__kont2012920130%_
                                       _%L14720%_
                                       _%L14722%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g1456114633%_)))))))))
                (_%loop1462214696%_ _%target1461914690%_ '()))
              (let () (declare (not safe)) (_%g1456114633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1456114633%_))))))))
                          (_%loop1461314666%_ _%target1461014660%_ '()))))
                     (_%__match2019720198%_
                      (lambda (_%e1458115083%_
                               _%hd1458215087%_
                               _%tl1458315090%_
                               _%e1458415093%_
                               _%hd1458515097%_
                               _%tl1458615100%_
                               _%e1458715103%_
                               _%hd1458815107%_
                               _%tl1458915110%_
                               _%e1459015113%_
                               _%hd1459115117%_
                               _%tl1459215120%_
                               _%__splice2012720128%_
                               _%target1459315123%_
                               _%tl1459515126%_)
                        (letrec ((_%loop1459615129%_
                                  (lambda (_%hd1459415133%_ _%body1460015136%_)
                                    (if (gx#stx-pair? _%hd1459415133%_)
                                        (let ((_%e1459715139%_
                                               (gx#syntax-e _%hd1459415133%_)))
                                          (let ((_%lp-tl1459915146%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1459715139%_)))
                                                (_%lp-hd1459815143%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1459715139%_))))
                                            (_%loop1459615129%_
                                             _%lp-tl1459915146%_
                                             (cons _%lp-hd1459815143%_
                                                   _%body1460015136%_))))
                                        (let ((_%body1460115149%_
                                               (reverse _%body1460015136%_)))
                                          (_%__kont2012520126%_
                                           _%body1460115149%_
                                           _%hd1459115117%_))))))
                          (_%loop1459615129%_ _%target1459315123%_ '()))))
                     (_%__match2016120162%_
                      (lambda (_%e1456715191%_
                               _%hd1456815195%_
                               _%tl1456915198%_
                               _%e1457015201%_
                               _%hd1457115205%_
                               _%tl1457215208%_
                               _%e1457315211%_
                               _%hd1457415215%_
                               _%tl1457515218%_
                               _%e1457615221%_
                               _%hd1457715225%_
                               _%tl1457815228%_)
                        (let ((_%L15231%_ _%tl1457215208%_)
                              (_%L15233%_ _%hd1457715225%_)
                              (_%L15234%_ _%hd1457415215%_)
                              (_%L15235%_ _%hd1456815195%_))
                          (if (_%let-head?14556%_ _%L15234%_)
                              (_%__kont2012320124%_
                               _%L15231%_
                               _%L15233%_
                               _%L15234%_
                               _%L15235%_)
                              (if (gx#stx-pair? _%hd1457415215%_)
                                  (let ((_%e1459015113%_
                                         (gx#syntax-e _%hd1457415215%_)))
                                    (let ((_%tl1459215120%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1459015113%_)))
                                          (_%hd1459115117%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1459015113%_))))
                                      (if (gx#stx-pair/null? _%hd1457115205%_)
                                          (let ((_%__splice2013120132%_
                                                 (gx#syntax-split-splice
                                                  _%hd1457115205%_
                                                  '0)))
                                            (let ((_%tl1461214663%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2013120132%_
                                                      '1)))
                                                  (_%target1461014660%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2013120132%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1461214663%_)
                                                  (_%__match2021720218%_
                                                   _%e1456715191%_
                                                   _%hd1456815195%_
                                                   _%tl1456915198%_
                                                   _%e1457015201%_
                                                   _%hd1457115205%_
                                                   _%tl1457215208%_
                                                   _%__splice2013120132%_
                                                   _%target1461014660%_
                                                   _%tl1461214663%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1456114633%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1456114633%_)))))
                                  (if (gx#stx-pair/null? _%hd1457115205%_)
                                      (let ((_%__splice2013120132%_
                                             (gx#syntax-split-splice
                                              _%hd1457115205%_
                                              '0)))
                                        (let ((_%tl1461214663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2013120132%_
                                                  '1)))
                                              (_%target1461014660%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2013120132%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1461214663%_)
                                              (_%__match2021720218%_
                                               _%e1456715191%_
                                               _%hd1456815195%_
                                               _%tl1456915198%_
                                               _%e1457015201%_
                                               _%hd1457115205%_
                                               _%tl1457215208%_
                                               _%__splice2013120132%_
                                               _%target1461014660%_
                                               _%tl1461214663%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1456114633%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1456114633%_)))))))))
                (if (gx#stx-pair? _%__stx2012020121%_)
                    (let ((_%e1456715191%_ (gx#syntax-e _%__stx2012020121%_)))
                      (let ((_%tl1456915198%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1456715191%_)))
                            (_%hd1456815195%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1456715191%_))))
                        (if (gx#stx-pair? _%tl1456915198%_)
                            (let ((_%e1457015201%_
                                   (gx#syntax-e _%tl1456915198%_)))
                              (let ((_%tl1457215208%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1457015201%_)))
                                    (_%hd1457115205%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1457015201%_))))
                                (if (gx#stx-pair? _%hd1457115205%_)
                                    (let ((_%e1457315211%_
                                           (gx#syntax-e _%hd1457115205%_)))
                                      (let ((_%tl1457515218%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1457315211%_)))
                                            (_%hd1457415215%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1457315211%_))))
                                        (if (gx#stx-pair? _%tl1457515218%_)
                                            (let ((_%e1457615221%_
                                                   (gx#syntax-e
                                                    _%tl1457515218%_)))
                                              (let ((_%tl1457815228%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1457615221%_)))
                                                    (_%hd1457715225%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1457615221%_))))
                                                (if (gx#stx-null?
                                                     _%tl1457815228%_)
                                                    (_%__match2016120162%_
                                                     _%e1456715191%_
                                                     _%hd1456815195%_
                                                     _%tl1456915198%_
                                                     _%e1457015201%_
                                                     _%hd1457115205%_
                                                     _%tl1457215208%_
                                                     _%e1457315211%_
                                                     _%hd1457415215%_
                                                     _%tl1457515218%_
                                                     _%e1457615221%_
                                                     _%hd1457715225%_
                                                     _%tl1457815228%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1457415215%_)
                                                        (let ((_%e1459015113%_
                                                               (gx#syntax-e
                                                                _%hd1457415215%_)))
                                                          (let ((_%tl1459215120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e1459015113%_)))
                        (_%hd1459115117%_
                         (let ()
                           (declare (not safe))
                           (##car _%e1459015113%_))))
                    (if (gx#stx-pair/null? _%hd1457115205%_)
                        (let ((_%__splice2013120132%_
                               (gx#syntax-split-splice _%hd1457115205%_ '0)))
                          (let ((_%tl1461214663%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2013120132%_ '1)))
                                (_%target1461014660%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2013120132%_ '0))))
                            (if (gx#stx-null? _%tl1461214663%_)
                                (_%__match2021720218%_
                                 _%e1456715191%_
                                 _%hd1456815195%_
                                 _%tl1456915198%_
                                 _%e1457015201%_
                                 _%hd1457115205%_
                                 _%tl1457215208%_
                                 _%__splice2013120132%_
                                 _%target1461014660%_
                                 _%tl1461214663%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1456114633%_)))))
                        (let () (declare (not safe)) (_%g1456114633%_)))))
                (if (gx#stx-pair/null? _%hd1457115205%_)
                    (let ((_%__splice2013120132%_
                           (gx#syntax-split-splice _%hd1457115205%_ '0)))
                      (let ((_%tl1461214663%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2013120132%_ '1)))
                            (_%target1461014660%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2013120132%_ '0))))
                        (if (gx#stx-null? _%tl1461214663%_)
                            (_%__match2021720218%_
                             _%e1456715191%_
                             _%hd1456815195%_
                             _%tl1456915198%_
                             _%e1457015201%_
                             _%hd1457115205%_
                             _%tl1457215208%_
                             _%__splice2013120132%_
                             _%target1461014660%_
                             _%tl1461214663%_)
                            (let () (declare (not safe)) (_%g1456114633%_)))))
                    (let () (declare (not safe)) (_%g1456114633%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%hd1457415215%_)
                                                (let ((_%e1459015113%_
                                                       (gx#syntax-e
                                                        _%hd1457415215%_)))
                                                  (let ((_%tl1459215120%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1459015113%_)))
                                                        (_%hd1459115117%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1459015113%_))))
                                                    (if (gx#stx-null?
                                                         _%tl1459215120%_)
                                                        (if (gx#stx-null?
                                                             _%tl1457515218%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl1457215208%_)
                        (let ((_%__splice2012720128%_
                               (gx#syntax-split-splice _%tl1457215208%_ '0)))
                          (let ((_%tl1459515126%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2012720128%_ '1)))
                                (_%target1459315123%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2012720128%_ '0))))
                            (if (gx#stx-null? _%tl1459515126%_)
                                (_%__match2019720198%_
                                 _%e1456715191%_
                                 _%hd1456815195%_
                                 _%tl1456915198%_
                                 _%e1457015201%_
                                 _%hd1457115205%_
                                 _%tl1457215208%_
                                 _%e1457315211%_
                                 _%hd1457415215%_
                                 _%tl1457515218%_
                                 _%e1459015113%_
                                 _%hd1459115117%_
                                 _%tl1459215120%_
                                 _%__splice2012720128%_
                                 _%target1459315123%_
                                 _%tl1459515126%_)
                                (if (gx#stx-pair/null? _%hd1457115205%_)
                                    (let ((_%__splice2013120132%_
                                           (gx#syntax-split-splice
                                            _%hd1457115205%_
                                            '0)))
                                      (let ((_%tl1461214663%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2013120132%_
                                                '1)))
                                            (_%target1461014660%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2013120132%_
                                                '0))))
                                        (if (gx#stx-null? _%tl1461214663%_)
                                            (_%__match2021720218%_
                                             _%e1456715191%_
                                             _%hd1456815195%_
                                             _%tl1456915198%_
                                             _%e1457015201%_
                                             _%hd1457115205%_
                                             _%tl1457215208%_
                                             _%__splice2013120132%_
                                             _%target1461014660%_
                                             _%tl1461214663%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1456114633%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g1456114633%_))))))
                        (if (gx#stx-pair/null? _%hd1457115205%_)
                            (let ((_%__splice2013120132%_
                                   (gx#syntax-split-splice
                                    _%hd1457115205%_
                                    '0)))
                              (let ((_%tl1461214663%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2013120132%_
                                        '1)))
                                    (_%target1461014660%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2013120132%_
                                        '0))))
                                (if (gx#stx-null? _%tl1461214663%_)
                                    (_%__match2021720218%_
                                     _%e1456715191%_
                                     _%hd1456815195%_
                                     _%tl1456915198%_
                                     _%e1457015201%_
                                     _%hd1457115205%_
                                     _%tl1457215208%_
                                     _%__splice2013120132%_
                                     _%target1461014660%_
                                     _%tl1461214663%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g1456114633%_)))))
                            (let () (declare (not safe)) (_%g1456114633%_))))
                    (if (gx#stx-pair/null? _%hd1457115205%_)
                        (let ((_%__splice2013120132%_
                               (gx#syntax-split-splice _%hd1457115205%_ '0)))
                          (let ((_%tl1461214663%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2013120132%_ '1)))
                                (_%target1461014660%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2013120132%_ '0))))
                            (if (gx#stx-null? _%tl1461214663%_)
                                (_%__match2021720218%_
                                 _%e1456715191%_
                                 _%hd1456815195%_
                                 _%tl1456915198%_
                                 _%e1457015201%_
                                 _%hd1457115205%_
                                 _%tl1457215208%_
                                 _%__splice2013120132%_
                                 _%target1461014660%_
                                 _%tl1461214663%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1456114633%_)))))
                        (let () (declare (not safe)) (_%g1456114633%_))))
                (if (gx#stx-pair/null? _%hd1457115205%_)
                    (let ((_%__splice2013120132%_
                           (gx#syntax-split-splice _%hd1457115205%_ '0)))
                      (let ((_%tl1461214663%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2013120132%_ '1)))
                            (_%target1461014660%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2013120132%_ '0))))
                        (if (gx#stx-null? _%tl1461214663%_)
                            (_%__match2021720218%_
                             _%e1456715191%_
                             _%hd1456815195%_
                             _%tl1456915198%_
                             _%e1457015201%_
                             _%hd1457115205%_
                             _%tl1457215208%_
                             _%__splice2013120132%_
                             _%target1461014660%_
                             _%tl1461214663%_)
                            (let () (declare (not safe)) (_%g1456114633%_)))))
                    (let () (declare (not safe)) (_%g1456114633%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%hd1457115205%_)
                                                    (let ((_%__splice2013120132%_
                                                           (gx#syntax-split-splice
                                                            _%hd1457115205%_
                                                            '0)))
                                                      (let ((_%tl1461214663%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice2013120132%_ '1)))
                    (_%target1461014660%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice2013120132%_ '0))))
                (if (gx#stx-null? _%tl1461214663%_)
                    (_%__match2021720218%_
                     _%e1456715191%_
                     _%hd1456815195%_
                     _%tl1456915198%_
                     _%e1457015201%_
                     _%hd1457115205%_
                     _%tl1457215208%_
                     _%__splice2013120132%_
                     _%target1461014660%_
                     _%tl1461214663%_)
                    (let () (declare (not safe)) (_%g1456114633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1456114633%_)))))))
                                    (if (gx#stx-pair/null? _%hd1457115205%_)
                                        (let ((_%__splice2013120132%_
                                               (gx#syntax-split-splice
                                                _%hd1457115205%_
                                                '0)))
                                          (let ((_%tl1461214663%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2013120132%_
                                                    '1)))
                                                (_%target1461014660%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2013120132%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1461214663%_)
                                                (_%__match2021720218%_
                                                 _%e1456715191%_
                                                 _%hd1456815195%_
                                                 _%tl1456915198%_
                                                 _%e1457015201%_
                                                 _%hd1457115205%_
                                                 _%tl1457215208%_
                                                 _%__splice2013120132%_
                                                 _%target1461014660%_
                                                 _%tl1461214663%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1456114633%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g1456114633%_))))))
                            (let () (declare (not safe)) (_%g1456114633%_)))))
                    (let () (declare (not safe)) (_%g1456114633%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet*|
      (lambda (_%$stx15593%_)
        (let* ((_%__stx2022020221%_ _%$stx15593%_)
               (_%g1559915650%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2022020221%_))))
          (let ((_%__kont2022320224%_ (lambda () '#t))
                (_%__kont2022520226%_
                 (lambda (_%L15808%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g1582415827%_ _%g1582515830%_)
                                        (cons _%g1582415827%_ _%g1582515830%_))
                                      '()
                                      _%L15808%_)))))
                (_%__kont2022920230%_
                 (lambda (_%L15717%_ _%L15719%_ _%L15720%_ _%L15721%_)
                   (cons (gx#datum->syntax '#f 'alet)
                         (cons (cons _%L15720%_ '())
                               (cons (cons _%L15721%_
                                           (cons _%L15719%_
                                                 (foldr (lambda (_%g1574215745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1574315748%_)
                  (cons _%g1574215745%_ _%g1574315748%_))
                '()
                _%L15717%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match2029720298%_
                    (lambda (_%e1562715657%_
                             _%hd1562815661%_
                             _%tl1562915664%_
                             _%e1563015667%_
                             _%hd1563115671%_
                             _%tl1563215674%_
                             _%e1563315677%_
                             _%hd1563415681%_
                             _%tl1563515684%_
                             _%__splice2023120232%_
                             _%target1563615687%_
                             _%tl1563815690%_)
                      (letrec ((_%loop1563915693%_
                                (lambda (_%hd1563715697%_ _%body1564315700%_)
                                  (if (gx#stx-pair? _%hd1563715697%_)
                                      (let ((_%e1564015703%_
                                             (gx#syntax-e _%hd1563715697%_)))
                                        (let ((_%lp-tl1564215710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1564015703%_)))
                                              (_%lp-hd1564115707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1564015703%_))))
                                          (_%loop1563915693%_
                                           _%lp-tl1564215710%_
                                           (cons _%lp-hd1564115707%_
                                                 _%body1564315700%_))))
                                      (let ((_%body1564415713%_
                                             (reverse _%body1564315700%_)))
                                        (_%__kont2022920230%_
                                         _%body1564415713%_
                                         _%tl1563515684%_
                                         _%hd1563415681%_
                                         _%hd1562815661%_))))))
                        (_%loop1563915693%_ _%target1563615687%_ '()))))
                   (_%__match2027120272%_
                    (lambda (_%e1560815758%_
                             _%hd1560915762%_
                             _%tl1561015765%_
                             _%e1561115768%_
                             _%hd1561215772%_
                             _%tl1561315775%_
                             _%__splice2022720228%_
                             _%target1561415778%_
                             _%tl1561615781%_)
                      (letrec ((_%loop1561715784%_
                                (lambda (_%hd1561515788%_ _%body1562115791%_)
                                  (if (gx#stx-pair? _%hd1561515788%_)
                                      (let ((_%e1561815794%_
                                             (gx#syntax-e _%hd1561515788%_)))
                                        (let ((_%lp-tl1562015801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1561815794%_)))
                                              (_%lp-hd1561915798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1561815794%_))))
                                          (_%loop1561715784%_
                                           _%lp-tl1562015801%_
                                           (cons _%lp-hd1561915798%_
                                                 _%body1562115791%_))))
                                      (let ((_%body1562215804%_
                                             (reverse _%body1562115791%_)))
                                        (_%__kont2022520226%_
                                         _%body1562215804%_))))))
                        (_%loop1561715784%_ _%target1561415778%_ '())))))
              (if (gx#stx-pair? _%__stx2022020221%_)
                  (let ((_%e1560115840%_ (gx#syntax-e _%__stx2022020221%_)))
                    (let ((_%tl1560315847%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1560115840%_)))
                          (_%hd1560215844%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1560115840%_))))
                      (if (gx#stx-pair? _%tl1560315847%_)
                          (let ((_%e1560415850%_
                                 (gx#syntax-e _%tl1560315847%_)))
                            (let ((_%tl1560615857%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1560415850%_)))
                                  (_%hd1560515854%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1560415850%_))))
                              (if (gx#stx-null? _%hd1560515854%_)
                                  (if (gx#stx-null? _%tl1560615857%_)
                                      (_%__kont2022320224%_)
                                      (if (gx#stx-pair/null? _%tl1560615857%_)
                                          (let ((_%__splice2022720228%_
                                                 (gx#syntax-split-splice
                                                  _%tl1560615857%_
                                                  '0)))
                                            (let ((_%tl1561615781%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2022720228%_
                                                      '1)))
                                                  (_%target1561415778%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2022720228%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1561615781%_)
                                                  (_%__match2027120272%_
                                                   _%e1560115840%_
                                                   _%hd1560215844%_
                                                   _%tl1560315847%_
                                                   _%e1560415850%_
                                                   _%hd1560515854%_
                                                   _%tl1560615857%_
                                                   _%__splice2022720228%_
                                                   _%target1561415778%_
                                                   _%tl1561615781%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1559915650%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1559915650%_))))
                                  (if (gx#stx-pair? _%hd1560515854%_)
                                      (let ((_%e1563315677%_
                                             (gx#syntax-e _%hd1560515854%_)))
                                        (let ((_%tl1563515684%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1563315677%_)))
                                              (_%hd1563415681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1563315677%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1560615857%_)
                                              (let ((_%__splice2023120232%_
                                                     (gx#syntax-split-splice
                                                      _%tl1560615857%_
                                                      '0)))
                                                (let ((_%tl1563815690%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2023120232%_
                                                          '1)))
                                                      (_%target1563615687%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2023120232%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1563815690%_)
                                                      (_%__match2029720298%_
                                                       _%e1560115840%_
                                                       _%hd1560215844%_
                                                       _%tl1560315847%_
                                                       _%e1560415850%_
                                                       _%hd1560515854%_
                                                       _%tl1560615857%_
                                                       _%e1563315677%_
                                                       _%hd1563415681%_
                                                       _%tl1563515684%_
                                                       _%__splice2023120232%_
                                                       _%target1563615687%_
                                                       _%tl1563815690%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1559915650%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1559915650%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1559915650%_))))))
                          (let () (declare (not safe)) (_%g1559915650%_)))))
                  (let () (declare (not safe)) (_%g1559915650%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#@list|
      (lambda (_%$stx15870%_)
        (let* ((_%__stx2030020301%_ _%$stx15870%_)
               (_%g1588115959%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2030020301%_))))
          (let ((_%__kont2030320304%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'quote) (cons '() '()))))
                (_%__kont2030520306%_
                 (lambda (_%L16290%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _%L16290%_ '()))))
                (_%__kont2030720308%_
                 (lambda (_%L16238%_)
                   (cons (gx#datum->syntax '#f 'quasiquote)
                         (cons _%L16238%_ '()))))
                (_%__kont2030920310%_ (lambda (_%L16185%_) _%L16185%_))
                (_%__kont2031120312%_
                 (lambda (_%L16127%_ _%L16129%_) _%L16129%_))
                (_%__kont2031320314%_
                 (lambda (_%L16069%_ _%L16071%_ _%L16072%_ _%L16073%_)
                   (cons (gx#datum->syntax '#f 'foldr)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (cons _%L16073%_ _%L16069%_)
                                     (cons _%L16072%_ '()))))))
                (_%__kont2031520316%_
                 (lambda (_%L16015%_ _%L16017%_ _%L16018%_)
                   (cons (gx#datum->syntax '#f 'cons)
                         (cons _%L16017%_
                               (cons (cons _%L16018%_ _%L16015%_) '())))))
                (_%__kont2031720318%_ (lambda (_%L15976%_) _%L15976%_)))
            (let* ((_%__match2043920440%_
                    (lambda (_%e1593216039%_
                             _%hd1593316043%_
                             _%tl1593416046%_
                             _%e1593516049%_
                             _%hd1593616053%_
                             _%tl1593716056%_
                             _%e1593816059%_
                             _%hd1593916063%_
                             _%tl1594016066%_)
                      (let ((_%L16069%_ _%tl1594016066%_)
                            (_%L16071%_ _%hd1593916063%_)
                            (_%L16072%_ _%hd1593616053%_)
                            (_%L16073%_ _%hd1593316043%_))
                        (if (gx#ellipsis? _%L16071%_)
                            (_%__kont2031320314%_
                             _%L16069%_
                             _%L16071%_
                             _%L16072%_
                             _%L16073%_)
                            (_%__kont2031520316%_
                             _%tl1593716056%_
                             _%hd1593616053%_
                             _%hd1593316043%_)))))
                   (_%__match2042120422%_
                    (lambda (_%e1591916097%_
                             _%hd1592016101%_
                             _%tl1592116104%_
                             _%e1592216107%_
                             _%hd1592316111%_
                             _%tl1592416114%_
                             _%e1592516117%_
                             _%hd1592616121%_
                             _%tl1592716124%_)
                      (let ((_%L16127%_ _%hd1592616121%_)
                            (_%L16129%_ _%hd1592316111%_))
                        (if (gx#ellipsis? _%L16127%_)
                            (_%__kont2031120312%_ _%L16127%_ _%L16129%_)
                            (_%__match2043920440%_
                             _%e1591916097%_
                             _%hd1592016101%_
                             _%tl1592116104%_
                             _%e1592216107%_
                             _%hd1592316111%_
                             _%tl1592416114%_
                             _%e1592516117%_
                             _%hd1592616121%_
                             _%tl1592716124%_))))))
              (if (gx#stx-pair? _%__stx2030020301%_)
                  (let ((_%e1588316312%_ (gx#syntax-e _%__stx2030020301%_)))
                    (let ((_%tl1588516319%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1588316312%_)))
                          (_%hd1588416316%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1588316312%_))))
                      (if (gx#stx-null? _%tl1588516319%_)
                          (_%__kont2030320304%_)
                          (if (gx#stx-pair? _%tl1588516319%_)
                              (let ((_%e1589016270%_
                                     (gx#syntax-e _%tl1588516319%_)))
                                (let ((_%tl1589216277%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1589016270%_)))
                                      (_%hd1589116274%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1589016270%_))))
                                  (if (gx#identifier? _%hd1589116274%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g20965_|
                                           _%hd1589116274%_)
                                          (if (gx#stx-pair? _%tl1589216277%_)
                                              (let ((_%e1589316280%_
                                                     (gx#syntax-e
                                                      _%tl1589216277%_)))
                                                (let ((_%tl1589516287%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1589316280%_)))
                                                      (_%hd1589416284%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1589316280%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1589516287%_)
                                                      (_%__kont2030520306%_
                                                       _%hd1589416284%_)
                                                      (_%__match2043920440%_
                                                       _%e1588316312%_
                                                       _%hd1588416316%_
                                                       _%tl1588516319%_
                                                       _%e1589016270%_
                                                       _%hd1589116274%_
                                                       _%tl1589216277%_
                                                       _%e1589316280%_
                                                       _%hd1589416284%_
                                                       _%tl1589516287%_))))
                                              (_%__kont2031520316%_
                                               _%tl1589216277%_
                                               _%hd1589116274%_
                                               _%hd1588416316%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g20966_|
                                               _%hd1589116274%_)
                                              (if (gx#stx-pair?
                                                   _%tl1589216277%_)
                                                  (let ((_%e1590316228%_
                                                         (gx#syntax-e
                                                          _%tl1589216277%_)))
                                                    (let ((_%tl1590516235%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1590316228%_)))
                                                          (_%hd1590416232%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1590316228%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1590516235%_)
                                                          (_%__kont2030720308%_
                                                           _%hd1590416232%_)
                                                          (_%__match2043920440%_
                                                           _%e1588316312%_
                                                           _%hd1588416316%_
                                                           _%tl1588516319%_
                                                           _%e1589016270%_
                                                           _%hd1589116274%_
                                                           _%tl1589216277%_
                                                           _%e1590316228%_
                                                           _%hd1590416232%_
                                                           _%tl1590516235%_))))
                                                  (_%__kont2031520316%_
                                                   _%tl1589216277%_
                                                   _%hd1589116274%_
                                                   _%hd1588416316%_))
                                              (if (gx#stx-pair?
                                                   _%tl1589216277%_)
                                                  (let ((_%e1592516117%_
                                                         (gx#syntax-e
                                                          _%tl1589216277%_)))
                                                    (let ((_%tl1592716124%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1592516117%_)))
                                                          (_%hd1592616121%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1592516117%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1592716124%_)
                                                          (_%__match2042120422%_
                                                           _%e1588316312%_
                                                           _%hd1588416316%_
                                                           _%tl1588516319%_
                                                           _%e1589016270%_
                                                           _%hd1589116274%_
                                                           _%tl1589216277%_
                                                           _%e1592516117%_
                                                           _%hd1592616121%_
                                                           _%tl1592716124%_)
                                                          (_%__match2043920440%_
                                                           _%e1588316312%_
                                                           _%hd1588416316%_
                                                           _%tl1588516319%_
                                                           _%e1589016270%_
                                                           _%hd1589116274%_
                                                           _%tl1589216277%_
                                                           _%e1592516117%_
                                                           _%hd1592616121%_
                                                           _%tl1592716124%_))))
                                                  (_%__kont2031520316%_
                                                   _%tl1589216277%_
                                                   _%hd1589116274%_
                                                   _%hd1588416316%_))))
                                      (if (gx#stx-datum? _%hd1589116274%_)
                                          (let ((_%e1591316171%_
                                                 (gx#stx-e _%hd1589116274%_)))
                                            (if (equal? _%e1591316171%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl1589216277%_)
                                                    (let ((_%e1591416175%_
                                                           (gx#syntax-e
                                                            _%tl1589216277%_)))
                                                      (let ((_%tl1591616182%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1591416175%_)))
                    (_%hd1591516179%_
                     (let () (declare (not safe)) (##car _%e1591416175%_))))
                (if (gx#stx-null? _%tl1591616182%_)
                    (_%__kont2030920310%_ _%hd1591516179%_)
                    (_%__match2043920440%_
                     _%e1588316312%_
                     _%hd1588416316%_
                     _%tl1588516319%_
                     _%e1589016270%_
                     _%hd1589116274%_
                     _%tl1589216277%_
                     _%e1591416175%_
                     _%hd1591516179%_
                     _%tl1591616182%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2031520316%_
                                                     _%tl1589216277%_
                                                     _%hd1589116274%_
                                                     _%hd1588416316%_))
                                                (if (gx#stx-pair?
                                                     _%tl1589216277%_)
                                                    (let ((_%e1592516117%_
                                                           (gx#syntax-e
                                                            _%tl1589216277%_)))
                                                      (let ((_%tl1592716124%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1592516117%_)))
                    (_%hd1592616121%_
                     (let () (declare (not safe)) (##car _%e1592516117%_))))
                (if (gx#stx-null? _%tl1592716124%_)
                    (_%__match2042120422%_
                     _%e1588316312%_
                     _%hd1588416316%_
                     _%tl1588516319%_
                     _%e1589016270%_
                     _%hd1589116274%_
                     _%tl1589216277%_
                     _%e1592516117%_
                     _%hd1592616121%_
                     _%tl1592716124%_)
                    (_%__match2043920440%_
                     _%e1588316312%_
                     _%hd1588416316%_
                     _%tl1588516319%_
                     _%e1589016270%_
                     _%hd1589116274%_
                     _%tl1589216277%_
                     _%e1592516117%_
                     _%hd1592616121%_
                     _%tl1592716124%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2031520316%_
                                                     _%tl1589216277%_
                                                     _%hd1589116274%_
                                                     _%hd1588416316%_))))
                                          (if (gx#stx-pair? _%tl1589216277%_)
                                              (let ((_%e1592516117%_
                                                     (gx#syntax-e
                                                      _%tl1589216277%_)))
                                                (let ((_%tl1592716124%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1592516117%_)))
                                                      (_%hd1592616121%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1592516117%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1592716124%_)
                                                      (_%__match2042120422%_
                                                       _%e1588316312%_
                                                       _%hd1588416316%_
                                                       _%tl1588516319%_
                                                       _%e1589016270%_
                                                       _%hd1589116274%_
                                                       _%tl1589216277%_
                                                       _%e1592516117%_
                                                       _%hd1592616121%_
                                                       _%tl1592716124%_)
                                                      (_%__match2043920440%_
                                                       _%e1588316312%_
                                                       _%hd1588416316%_
                                                       _%tl1588516319%_
                                                       _%e1589016270%_
                                                       _%hd1589116274%_
                                                       _%tl1589216277%_
                                                       _%e1592516117%_
                                                       _%hd1592616121%_
                                                       _%tl1592716124%_))))
                                              (_%__kont2031520316%_
                                               _%tl1589216277%_
                                               _%hd1589116274%_
                                               _%hd1588416316%_))))))
                              (_%__kont2031720318%_ _%tl1588516319%_)))))
                  (let () (declare (not safe)) (_%g1588115959%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#quasiquote|
      (lambda (_%stx16330%_)
        (letrec ((_%simple-quote?16333%_
                  (lambda (_%e17025%_)
                    (let* ((_%__stx2046020461%_ _%e17025%_)
                           (_%g1703317070%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2046020461%_))))
                      (let ((_%__kont2046320464%_ (lambda () '#f))
                            (_%__kont2046520466%_ (lambda () '#f))
                            (_%__kont2046720468%_
                             (lambda (_%L17184%_ _%L17186%_)
                               (if (_%simple-quote?16333%_ _%L17186%_)
                                   (_%simple-quote?16333%_ _%L17184%_)
                                   '#f)))
                            (_%__kont2046920470%_
                             (lambda (_%L17145%_)
                               (_%simple-quote?16333%_
                                (foldr (lambda (_%g1715817161%_
                                                _%g1715917164%_)
                                         (cons _%g1715817161%_
                                               _%g1715917164%_))
                                       '()
                                       _%L17145%_))))
                            (_%__kont2047320474%_
                             (lambda (_%L17092%_)
                               (_%simple-quote?16333%_ _%L17092%_)))
                            (_%__kont2047520476%_ (lambda () '#t)))
                        (let* ((_%g1703117104%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2046020461%_)
                                      (let ((_%e1706417088%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2046020461%_))))
                                        (_%__kont2047320474%_ _%e1706417088%_))
                                      (_%__kont2047520476%_))))
                               (_%__match2053120532%_
                                (lambda (_%e1705317111%_
                                         _%__splice2047120472%_
                                         _%target1705417115%_
                                         _%tl1705617118%_)
                                  (letrec ((_%loop1705717121%_
                                            (lambda (_%hd1705517125%_
                                                     _%e1706117128%_)
                                              (if (gx#stx-pair?
                                                   _%hd1705517125%_)
                                                  (let ((_%e1705817131%_
                                                         (gx#syntax-e
                                                          _%hd1705517125%_)))
                                                    (let ((_%lp-tl1706017138%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1705817131%_)))
                                                          (_%lp-hd1705917135%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1705817131%_))))
                                                      (_%loop1705717121%_
                                                       _%lp-tl1706017138%_
                                                       (cons _%lp-hd1705917135%_
                                                             _%e1706117128%_))))
                                                  (let ((_%e1706217141%_
                                                         (reverse _%e1706117128%_)))
                                                    (_%__kont2046920470%_
                                                     _%e1706217141%_))))))
                                    (_%loop1705717121%_
                                     _%target1705417115%_
                                     '()))))
                               (_%g1703017167%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2046020461%_)
                                      (let ((_%e1705317111%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2046020461%_))))
                                        (if (gx#stx-pair/null? _%e1705317111%_)
                                            (let ((_%__splice2047120472%_
                                                   (gx#syntax-split-splice
                                                    _%e1705317111%_
                                                    '0)))
                                              (let ((_%tl1705617118%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2047120472%_
                                                        '1)))
                                                    (_%target1705417115%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2047120472%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1705617118%_)
                                                    (_%__match2053120532%_
                                                     _%e1705317111%_
                                                     _%__splice2047120472%_
                                                     _%target1705417115%_
                                                     _%tl1705617118%_)
                                                    (_%__kont2047520476%_))))
                                            (_%__kont2047520476%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1703117104%_))))))
                          (if (gx#stx-pair? _%__stx2046020461%_)
                              (let ((_%e1703517235%_
                                     (gx#syntax-e _%__stx2046020461%_)))
                                (let ((_%tl1703717242%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1703517235%_)))
                                      (_%hd1703617239%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1703517235%_))))
                                  (if (gx#identifier? _%hd1703617239%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g20967_|
                                           _%hd1703617239%_)
                                          (if (gx#stx-pair? _%tl1703717242%_)
                                              (let ((_%e1703817245%_
                                                     (gx#syntax-e
                                                      _%tl1703717242%_)))
                                                (let ((_%tl1704017252%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1703817245%_)))
                                                      (_%hd1703917249%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1703817245%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1704017252%_)
                                                      (_%__kont2046320464%_)
                                                      (_%__kont2046720468%_
                                                       _%tl1703717242%_
                                                       _%hd1703617239%_))))
                                              (_%__kont2046720468%_
                                               _%tl1703717242%_
                                               _%hd1703617239%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g20968_|
                                               _%hd1703617239%_)
                                              (if (gx#stx-pair?
                                                   _%tl1703717242%_)
                                                  (let ((_%e1704417214%_
                                                         (gx#syntax-e
                                                          _%tl1703717242%_)))
                                                    (let ((_%tl1704617221%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1704417214%_)))
                                                          (_%hd1704517218%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1704417214%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1704617221%_)
                                                          (_%__kont2046520466%_)
                                                          (_%__kont2046720468%_
                                                           _%tl1703717242%_
                                                           _%hd1703617239%_))))
                                                  (_%__kont2046720468%_
                                                   _%tl1703717242%_
                                                   _%hd1703617239%_))
                                              (_%__kont2046720468%_
                                               _%tl1703717242%_
                                               _%hd1703617239%_)))
                                      (_%__kont2046720468%_
                                       _%tl1703717242%_
                                       _%hd1703617239%_))))
                              (let ()
                                (declare (not safe))
                                (_%g1703017167%_))))))))
                 (_%generate16335%_
                  (lambda (_%e16397%_ _%d16399%_)
                    (let* ((_%__stx2053820539%_ _%e16397%_)
                           (_%g1640816466%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2053820539%_))))
                      (let ((_%__kont2054120542%_
                             (lambda (_%L16977%_)
                               (let* ((_%g1699016998%_
                                       (lambda (_%g1699116994%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1699116994%_)))
                                      (_%g1698917017%_
                                       (lambda (_%g1699117002%_)
                                         ((lambda (_%L17005%_)
                                            (cons (gx#datum->syntax '#f 'list)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quasiquote)
                            '()))
                (cons _%L17005%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1699117002%_))))
                                 (_%g1698917017%_
                                  (_%generate16335%_
                                   _%L16977%_
                                   (fx1+ _%d16399%_))))))
                            (_%__kont2054320544%_
                             (lambda (_%L16906%_)
                               (if (fxzero? _%d16399%_)
                                   _%L16906%_
                                   (let* ((_%g1691916927%_
                                           (lambda (_%g1692016923%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1692016923%_)))
                                          (_%g1691816946%_
                                           (lambda (_%g1692016931%_)
                                             ((lambda (_%L16934%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote) '()))
                    (cons _%L16934%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1692016931%_))))
                                     (_%g1691816946%_
                                      (_%generate16335%_
                                       _%L16906%_
                                       (fx1- _%d16399%_)))))))
                            (_%__kont2054520546%_
                             (lambda (_%L16835%_)
                               (if (fxzero? _%d16399%_)
                                   (cons (gx#datum->syntax '#f 'foldr)
                                         (cons (gx#datum->syntax '#f 'cons)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons '() '()))
                                                     (cons _%L16835%_ '()))))
                                   (let* ((_%g1684816856%_
                                           (lambda (_%g1684916852%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1684916852%_)))
                                          (_%g1684716875%_
                                           (lambda (_%g1684916860%_)
                                             ((lambda (_%L16863%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote-splicing) '()))
                    (cons _%L16863%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1684916860%_))))
                                     (_%g1684716875%_
                                      (_%generate16335%_
                                       _%L16835%_
                                       (fx1- _%d16399%_)))))))
                            (_%__kont2054720548%_
                             (lambda (_%L16760%_ _%L16762%_)
                               (let* ((_%g1677716785%_
                                       (lambda (_%g1677816781%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1677816781%_)))
                                      (_%g1677616804%_
                                       (lambda (_%g1677816789%_)
                                         ((lambda (_%L16792%_)
                                            (cons (gx#datum->syntax '#f 'foldr)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'cons)
                                                        (cons _%L16792%_
                                                              (cons _%L16762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1677816789%_))))
                                 (_%g1677616804%_
                                  (_%generate16335%_ _%L16760%_ _%d16399%_)))))
                            (_%__kont2054920550%_
                             (lambda (_%L16646%_ _%L16648%_)
                               (let* ((_%g1665916674%_
                                       (lambda (_%g1666016670%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1666016670%_)))
                                      (_%g1665816719%_
                                       (lambda (_%g1666016678%_)
                                         (if (gx#stx-pair? _%g1666016678%_)
                                             (let ((_%e1666316681%_
                                                    (gx#syntax-e
                                                     _%g1666016678%_)))
                                               (let ((_%hd1666416685%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1666316681%_)))
                                                     (_%tl1666516688%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1666316681%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl1666516688%_)
                                                     (let ((_%e1666616691%_
                                                            (gx#syntax-e
                                                             _%tl1666516688%_)))
                                                       (let ((_%hd1666716695%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e1666616691%_)))
                     (_%tl1666816698%_
                      (let () (declare (not safe)) (##cdr _%e1666616691%_))))
                 (if (gx#stx-null? _%tl1666816698%_)
                     ((lambda (_%L16701%_ _%L16703%_)
                        (cons (gx#datum->syntax '#f 'cons)
                              (cons _%L16703%_ (cons _%L16701%_ '()))))
                      _%hd1666716695%_
                      _%hd1666416685%_)
                     (_%g1665916674%_ _%g1666016678%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1665916674%_
                                                      _%g1666016678%_))))
                                             (_%g1665916674%_
                                              _%g1666016678%_)))))
                                 (_%g1665816719%_
                                  (list (_%generate16335%_
                                         _%L16648%_
                                         _%d16399%_)
                                        (_%generate16335%_
                                         _%L16646%_
                                         _%d16399%_))))))
                            (_%__kont2055120552%_
                             (lambda (_%L16576%_)
                               (let* ((_%g1659016598%_
                                       (lambda (_%g1659116594%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1659116594%_)))
                                      (_%g1658916617%_
                                       (lambda (_%g1659116602%_)
                                         ((lambda (_%L16605%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'list->vector)
                                                  (cons _%L16605%_ '())))
                                          _%g1659116602%_))))
                                 (_%g1658916617%_
                                  (_%generate16335%_
                                   (foldr (lambda (_%g1662016623%_
                                                   _%g1662116626%_)
                                            (cons _%g1662016623%_
                                                  _%g1662116626%_))
                                          '()
                                          _%L16576%_)
                                   _%d16399%_)))))
                            (_%__kont2055520556%_
                             (lambda (_%L16494%_)
                               (let* ((_%g1650416512%_
                                       (lambda (_%g1650516508%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1650516508%_)))
                                      (_%g1650316531%_
                                       (lambda (_%g1650516516%_)
                                         ((lambda (_%L16519%_)
                                            (cons (gx#datum->syntax '#f 'box)
                                                  (cons _%L16519%_ '())))
                                          _%g1650516516%_))))
                                 (_%g1650316531%_
                                  (_%generate16335%_ _%L16494%_ _%d16399%_)))))
                            (_%__kont2055720558%_
                             (lambda (_%L16473%_)
                               (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L16473%_ '())))))
                        (let* ((_%g1640616535%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2053820539%_)
                                      (let ((_%e1645916490%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2053820539%_))))
                                        (_%__kont2055520556%_ _%e1645916490%_))
                                      (_%__kont2055720558%_
                                       _%__stx2053820539%_))))
                               (_%__match2065720658%_
                                (lambda (_%e1644816542%_
                                         _%__splice2055320554%_
                                         _%target1644916546%_
                                         _%tl1645116549%_)
                                  (letrec ((_%loop1645216552%_
                                            (lambda (_%hd1645016556%_
                                                     _%e1645616559%_)
                                              (if (gx#stx-pair?
                                                   _%hd1645016556%_)
                                                  (let ((_%e1645316562%_
                                                         (gx#syntax-e
                                                          _%hd1645016556%_)))
                                                    (let ((_%lp-tl1645516569%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1645316562%_)))
                                                          (_%lp-hd1645416566%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1645316562%_))))
                                                      (_%loop1645216552%_
                                                       _%lp-tl1645516569%_
                                                       (cons _%lp-hd1645416566%_
                                                             _%e1645616559%_))))
                                                  (let ((_%e1645716572%_
                                                         (reverse _%e1645616559%_)))
                                                    (_%__kont2055120552%_
                                                     _%e1645716572%_))))))
                                    (_%loop1645216552%_
                                     _%target1644916546%_
                                     '()))))
                               (_%g1640516629%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2053820539%_)
                                      (let ((_%e1644816542%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2053820539%_))))
                                        (if (gx#stx-pair/null? _%e1644816542%_)
                                            (let ((_%__splice2055320554%_
                                                   (gx#syntax-split-splice
                                                    _%e1644816542%_
                                                    '0)))
                                              (let ((_%tl1645116549%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2055320554%_
                                                        '1)))
                                                    (_%target1644916546%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2055320554%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1645116549%_)
                                                    (_%__match2065720658%_
                                                     _%e1644816542%_
                                                     _%__splice2055320554%_
                                                     _%target1644916546%_
                                                     _%tl1645116549%_)
                                                    (_%__kont2055720558%_
                                                     _%__stx2053820539%_))))
                                            (_%__kont2055720558%_
                                             _%__stx2053820539%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1640616535%_))))))
                          (if (gx#stx-pair? _%__stx2053820539%_)
                              (let ((_%e1641116957%_
                                     (gx#syntax-e _%__stx2053820539%_)))
                                (let ((_%tl1641316964%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1641116957%_)))
                                      (_%hd1641216961%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1641116957%_))))
                                  (if (gx#identifier? _%hd1641216961%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g20969_|
                                           _%hd1641216961%_)
                                          (if (gx#stx-pair? _%tl1641316964%_)
                                              (let ((_%e1641416967%_
                                                     (gx#syntax-e
                                                      _%tl1641316964%_)))
                                                (let ((_%tl1641616974%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1641416967%_)))
                                                      (_%hd1641516971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1641416967%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1641616974%_)
                                                      (_%__kont2054120542%_
                                                       _%hd1641516971%_)
                                                      (_%__kont2054920550%_
                                                       _%tl1641316964%_
                                                       _%hd1641216961%_))))
                                              (_%__kont2054920550%_
                                               _%tl1641316964%_
                                               _%hd1641216961%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g20970_|
                                               _%hd1641216961%_)
                                              (if (gx#stx-pair?
                                                   _%tl1641316964%_)
                                                  (let ((_%e1642116896%_
                                                         (gx#syntax-e
                                                          _%tl1641316964%_)))
                                                    (let ((_%tl1642316903%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1642116896%_)))
                                                          (_%hd1642216900%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1642116896%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1642316903%_)
                                                          (_%__kont2054320544%_
                                                           _%hd1642216900%_)
                                                          (_%__kont2054920550%_
                                                           _%tl1641316964%_
                                                           _%hd1641216961%_))))
                                                  (_%__kont2054920550%_
                                                   _%tl1641316964%_
                                                   _%hd1641216961%_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g20971_|
                                                   _%hd1641216961%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1641316964%_)
                                                      (let ((_%e1642816825%_
                                                             (gx#syntax-e
                                                              _%tl1641316964%_)))
                                                        (let ((_%tl1643016832%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1642816825%_)))
                      (_%hd1642916829%_
                       (let () (declare (not safe)) (##car _%e1642816825%_))))
                  (if (gx#stx-null? _%tl1643016832%_)
                      (_%__kont2054520546%_ _%hd1642916829%_)
                      (_%__kont2054920550%_
                       _%tl1641316964%_
                       _%hd1641216961%_))))
              (_%__kont2054920550%_ _%tl1641316964%_ _%hd1641216961%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2054920550%_
                                                   _%tl1641316964%_
                                                   _%hd1641216961%_))))
                                      (if (gx#stx-pair? _%hd1641216961%_)
                                          (let ((_%e1643616740%_
                                                 (gx#syntax-e
                                                  _%hd1641216961%_)))
                                            (let ((_%tl1643816747%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1643616740%_)))
                                                  (_%hd1643716744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1643616740%_))))
                                              (if (gx#identifier?
                                                   _%hd1643716744%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-2[1]#_g20972_|
                                                       _%hd1643716744%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1643816747%_)
                                                          (let ((_%e1643916750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1643816747%_)))
                    (let ((_%tl1644116757%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1643916750%_)))
                          (_%hd1644016754%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1643916750%_))))
                      (if (gx#stx-null? _%tl1644116757%_)
                          (if (fxzero? _%d16399%_)
                              (let ((_%L16760%_ _%tl1641316964%_)
                                    (_%L16762%_ _%hd1644016754%_))
                                (_%__kont2054720548%_ _%L16760%_ _%L16762%_))
                              (_%__kont2054920550%_
                               _%tl1641316964%_
                               _%hd1641216961%_))
                          (_%__kont2054920550%_
                           _%tl1641316964%_
                           _%hd1641216961%_))))
                  (_%__kont2054920550%_ _%tl1641316964%_ _%hd1641216961%_))
              (_%__kont2054920550%_ _%tl1641316964%_ _%hd1641216961%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2054920550%_
                                                   _%tl1641316964%_
                                                   _%hd1641216961%_))))
                                          (_%__kont2054920550%_
                                           _%tl1641316964%_
                                           _%hd1641216961%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g1640516629%_)))))))))
          (let* ((_%g1633716351%_
                  (lambda (_%g1633816347%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1633816347%_)))
                 (_%g1633616393%_
                  (lambda (_%g1633816355%_)
                    (if (gx#stx-pair? _%g1633816355%_)
                        (let ((_%e1634016358%_ (gx#syntax-e _%g1633816355%_)))
                          (let ((_%hd1634116362%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1634016358%_)))
                                (_%tl1634216365%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1634016358%_))))
                            (if (gx#stx-pair? _%tl1634216365%_)
                                (let ((_%e1634316368%_
                                       (gx#syntax-e _%tl1634216365%_)))
                                  (let ((_%hd1634416372%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1634316368%_)))
                                        (_%tl1634516375%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1634316368%_))))
                                    (if (gx#stx-null? _%tl1634516375%_)
                                        ((lambda (_%L16378%_)
                                           (if (_%simple-quote?16333%_
                                                _%L16378%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L16378%_ '()))
                                               (_%generate16335%_
                                                _%L16378%_
                                                '0)))
                                         _%hd1634416372%_)
                                        (_%g1633716351%_ _%g1633816355%_))))
                                (_%g1633716351%_ _%g1633816355%_))))
                        (_%g1633716351%_ _%g1633816355%_)))))
            (_%g1633616393%_ _%stx16330%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay|
      (lambda (_%$stx17265%_)
        (let* ((_%__stx2066420665%_ _%$stx17265%_)
               (_%g1727017291%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2066420665%_))))
          (let ((_%__kont2066720668%_
                 (lambda (_%L17359%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _%L17359%_ '()))))
                (_%__kont2066920670%_
                 (lambda (_%L17318%_)
                   (cons (gx#datum->syntax '#f 'make-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%L17318%_ '())))
                               '())))))
            (let ((_%__match2068520686%_
                   (lambda (_%e1727317339%_
                            _%hd1727417343%_
                            _%tl1727517346%_
                            _%e1727617349%_
                            _%hd1727717353%_
                            _%tl1727817356%_)
                     (let ((_%L17359%_ _%hd1727717353%_))
                       (if (gx#stx-datum? _%L17359%_)
                           (_%__kont2066720668%_ _%L17359%_)
                           (_%__kont2066920670%_ _%hd1727717353%_))))))
              (if (gx#stx-pair? _%__stx2066420665%_)
                  (let ((_%e1727317339%_ (gx#syntax-e _%__stx2066420665%_)))
                    (let ((_%tl1727517346%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1727317339%_)))
                          (_%hd1727417343%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1727317339%_))))
                      (if (gx#stx-pair? _%tl1727517346%_)
                          (let ((_%e1727617349%_
                                 (gx#syntax-e _%tl1727517346%_)))
                            (let ((_%tl1727817356%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1727617349%_)))
                                  (_%hd1727717353%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1727617349%_))))
                              (if (gx#stx-null? _%tl1727817356%_)
                                  (_%__match2068520686%_
                                   _%e1727317339%_
                                   _%hd1727417343%_
                                   _%tl1727517346%_
                                   _%e1727617349%_
                                   _%hd1727717353%_
                                   _%tl1727817356%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g1727017291%_)))))
                          (let () (declare (not safe)) (_%g1727017291%_)))))
                  (let () (declare (not safe)) (_%g1727017291%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#cut|
      (lambda (_%stx17376%_)
        (letrec ((_%generate17379%_
                  (lambda (_%rest17498%_)
                    (let _%lp17501%_ ((_%rest17504%_ _%rest17498%_)
                                      (_%hd17506%_ '())
                                      (_%body17507%_ '()))
                      (let* ((_%__stx2072220723%_ _%rest17504%_)
                             (_%g1751017522%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx2072220723%_))))
                        (let ((_%__kont2072520726%_
                               (lambda (_%L17550%_ _%L17552%_)
                                 (let* ((_%__stx2070220703%_ _%L17552%_)
                                        (_%g1756917576%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx2070220703%_))))
                                   (let ((_%__kont2070520706%_
                                          (lambda ()
                                            (let ((_%arg17612%_ (gx#genident)))
                                              (_%lp17501%_
                                               _%L17550%_
                                               (cons _%arg17612%_ _%hd17506%_)
                                               (cons _%arg17612%_
                                                     _%body17507%_)))))
                                         (_%__kont2070720708%_
                                          (lambda ()
                                            (if (gx#stx-null? _%L17550%_)
                                                (let ((_%tail17598%_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail17598%_
                         _%hd17506%_)
                  (foldl cons (list _%tail17598%_) _%body17507%_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; cut ellipsis <...> not in tail position"
                                                 _%stx17376%_
                                                 _%L17552%_))))
                                         (_%__kont2070920710%_
                                          (lambda ()
                                            (_%lp17501%_
                                             _%L17550%_
                                             _%hd17506%_
                                             (cons _%L17552%_
                                                   _%body17507%_)))))
                                     (if (gx#identifier? _%__stx2070220703%_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core/sugar~Sugar-2[1]#_g20973_|
                                              _%__stx2070220703%_)
                                             (_%__kont2070520706%_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core/sugar~Sugar-2[1]#_g20974_|
                                                  _%__stx2070220703%_)
                                                 (_%__kont2070720708%_)
                                                 (_%__kont2070920710%_)))
                                         (_%__kont2070920710%_))))))
                              (_%__kont2072720728%_
                               (lambda ()
                                 (values (reverse _%hd17506%_)
                                         (reverse _%body17507%_)
                                         '#f))))
                          (if (gx#stx-pair? _%__stx2072220723%_)
                              (let ((_%e1751417540%_
                                     (gx#syntax-e _%__stx2072220723%_)))
                                (let ((_%tl1751617547%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1751417540%_)))
                                      (_%hd1751517544%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1751417540%_))))
                                  (_%__kont2072520726%_
                                   _%tl1751617547%_
                                   _%hd1751517544%_)))
                              (_%__kont2072720728%_))))))))
          (let* ((_%g1738217393%_
                  (lambda (_%g1738317389%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1738317389%_)))
                 (_%g1738117494%_
                  (lambda (_%g1738317397%_)
                    (if (gx#stx-pair? _%g1738317397%_)
                        (let ((_%e1738517400%_ (gx#syntax-e _%g1738317397%_)))
                          (let ((_%hd1738617404%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1738517400%_)))
                                (_%tl1738717407%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1738517400%_))))
                            ((lambda (_%L17410%_)
                               (if (and (gx#stx-list? _%L17410%_)
                                        (not (gx#stx-null? _%L17410%_)))
                                   (let ((_g20975_
                                          (_%generate17379%_ _%L17410%_)))
                                     (begin
                                       (let ((_g20976_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20975_)
                                                    (##vector-length _g20975_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20976_ 3)))
                                             (error "Context expects 3 values"
                                                    _g20976_)))
                                       (let ((_%hd17423%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20975_ 0)))
                                             (_%body17425%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20975_ 1)))
                                             (_%tail?17426%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20975_ 2))))
                                         (let* ((_%g1742817436%_
                                                 (lambda (_%g1742917432%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g1742917432%_)))
                                                (_%g1742717490%_
                                                 (lambda (_%g1742917440%_)
                                                   ((lambda (_%L17443%_)
                                                      (let* ((_%g1745617464%_
                                                              (lambda (_%g1745717460%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g1745717460%_)))
                     (_%g1745517486%_
                      (lambda (_%g1745717468%_)
                        ((lambda (_%L17471%_)
                           (if _%tail?17426%_
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%L17443%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'apply)
                                                       _%L17471%_)
                                                 '())))
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%L17443%_ (cons _%L17471%_ '())))))
                         _%g1745717468%_))))
                (_%g1745517486%_ _%body17425%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g1742917440%_))))
                                           (_%g1742717490%_ _%hd17423%_)))))
                                   (_%g1738217393%_ _%g1738317397%_)))
                             _%tl1738717407%_)))
                        (_%g1738217393%_ _%g1738317397%_)))))
            (_%g1738117494%_ _%stx17376%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<>|
      (lambda (_%$stx17624%_)
        (let ((_%g1762717634%_
               (lambda (_%g1762817630%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1762817630%_))))
          (_%g1762717634%_ _%$stx17624%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<...>|
      (lambda (_%$stx17638%_)
        (let ((_%g1764117648%_
               (lambda (_%g1764217644%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1764217644%_))))
          (_%g1764117648%_ _%$stx17638%_))))))

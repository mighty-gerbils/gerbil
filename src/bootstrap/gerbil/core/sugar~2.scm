(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-2[1]#_g20954_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20955_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20956_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20992_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20993_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20994_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21001_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21002_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21003_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21004_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21005_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21006_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21007_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21008_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21009_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21010_|
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
                  (lambda (_%hd8729%_)
                    (gx#stx-andmap gx#identifier? _%hd8729%_)))
                 (_%opt-lambda?5325%_
                  (lambda (_%hd8581%_)
                    (let _%lp8584%_ ((_%rest8587%_ _%hd8581%_)
                                     (_%opt?8589%_ '#f))
                      (let* ((_%__stx1917819179%_ _%rest8587%_)
                             (_%g85928604%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1917819179%_))))
                        (let ((_%__kont1918119182%_
                               (lambda (_%L8636%_ _%L8638%_)
                                 (let* ((_%__stx1915419155%_ _%L8638%_)
                                        (_%g86548668%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1915419155%_))))
                                   (let ((_%__kont1915719158%_
                                          (lambda (_%L8706%_)
                                            (_%lp8584%_ _%L8636%_ '#t)))
                                         (_%__kont1915919160%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8638%_)
                                                (if (not _%opt?8589%_)
                                                    (_%lp8584%_ _%L8636%_ '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((_%__match1917519176%_
                                            (lambda (_%e86578686%_
                                                     _%hd86588690%_
                                                     _%tl86598693%_
                                                     _%e86608696%_
                                                     _%hd86618700%_
                                                     _%tl86628703%_)
                                              (let ((_%L8706%_ _%hd86588690%_))
                                                (if (gx#identifier? _%L8706%_)
                                                    (_%__kont1915719158%_
                                                     _%L8706%_)
                                                    (_%__kont1915919160%_))))))
                                       (if (gx#stx-pair? _%__stx1915419155%_)
                                           (let ((_%e86578686%_
                                                  (gx#syntax-e
                                                   _%__stx1915419155%_)))
                                             (let ((_%tl86598693%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e86578686%_)))
                                                   (_%hd86588690%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e86578686%_))))
                                               (if (gx#stx-pair?
                                                    _%tl86598693%_)
                                                   (let ((_%e86608696%_
                                                          (gx#syntax-e
                                                           _%tl86598693%_)))
                                                     (let ((_%tl86628703%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e86608696%_)))
                                                           (_%hd86618700%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e86608696%_))))
                                                       (if (gx#stx-null?
                                                            _%tl86628703%_)
                                                           (_%__match1917519176%_
                                                            _%e86578686%_
                                                            _%hd86588690%_
                                                            _%tl86598693%_
                                                            _%e86608696%_
                                                            _%hd86618700%_
                                                            _%tl86628703%_)
                                                           (_%__kont1915919160%_))))
                                                   (_%__kont1915919160%_))))
                                           (_%__kont1915919160%_)))))))
                              (_%__kont1918319184%_
                               (lambda ()
                                 (if _%opt?8589%_
                                     (let ((_%$e8615%_
                                            (gx#stx-null? _%rest8587%_)))
                                       (if _%$e8615%_
                                           _%$e8615%_
                                           (gx#identifier? _%rest8587%_)))
                                     '#f))))
                          (if (gx#stx-pair? _%__stx1917819179%_)
                              (let ((_%e85968626%_
                                     (gx#syntax-e _%__stx1917819179%_)))
                                (let ((_%tl85988633%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e85968626%_)))
                                      (_%hd85978630%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e85968626%_))))
                                  (_%__kont1918119182%_
                                   _%tl85988633%_
                                   _%hd85978630%_)))
                              (_%__kont1918319184%_)))))))
                 (_%opt-lambda-split5326%_
                  (lambda (_%hd8433%_)
                    (let _%lp8436%_ ((_%rest8439%_ _%hd8433%_)
                                     (_%pre8441%_ '())
                                     (_%opt8442%_ '()))
                      (let* ((_%__stx1921819219%_ _%rest8439%_)
                             (_%g84458457%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1921819219%_))))
                        (let ((_%__kont1922119222%_
                               (lambda (_%L8485%_ _%L8487%_)
                                 (let* ((_%__stx1919419195%_ _%L8487%_)
                                        (_%g85038518%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1919419195%_))))
                                   (let ((_%__kont1919719198%_
                                          (lambda (_%L8556%_ _%L8558%_)
                                            (_%lp8436%_
                                             _%L8485%_
                                             _%pre8441%_
                                             (cons (cons _%L8558%_ _%L8556%_)
                                                   _%opt8442%_))))
                                         (_%__kont1919919200%_
                                          (lambda ()
                                            (_%lp8436%_
                                             _%L8485%_
                                             (cons _%L8487%_ _%pre8441%_)
                                             _%opt8442%_))))
                                     (if (gx#stx-pair? _%__stx1919419195%_)
                                         (let ((_%e85078536%_
                                                (gx#syntax-e
                                                 _%__stx1919419195%_)))
                                           (let ((_%tl85098543%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e85078536%_)))
                                                 (_%hd85088540%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e85078536%_))))
                                             (if (gx#stx-pair? _%tl85098543%_)
                                                 (let ((_%e85108546%_
                                                        (gx#syntax-e
                                                         _%tl85098543%_)))
                                                   (let ((_%tl85128553%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e85108546%_)))
                                                         (_%hd85118550%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e85108546%_))))
                                                     (if (gx#stx-null?
                                                          _%tl85128553%_)
                                                         (_%__kont1919719198%_
                                                          _%hd85118550%_
                                                          _%hd85088540%_)
                                                         (_%__kont1919919200%_))))
                                                 (_%__kont1919919200%_))))
                                         (_%__kont1919919200%_))))))
                              (_%__kont1922319224%_
                               (lambda ()
                                 (values (reverse _%pre8441%_)
                                         (reverse _%opt8442%_)
                                         _%rest8439%_))))
                          (if (gx#stx-pair? _%__stx1921819219%_)
                              (let ((_%e84498475%_
                                     (gx#syntax-e _%__stx1921819219%_)))
                                (let ((_%tl84518482%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e84498475%_)))
                                      (_%hd84508479%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e84498475%_))))
                                  (_%__kont1922119222%_
                                   _%tl84518482%_
                                   _%hd84508479%_)))
                              (_%__kont1922319224%_)))))))
                 (_%kw-lambda?5327%_
                  (lambda (_%hd8101%_)
                    (let _%lp8104%_ ((_%rest8107%_ _%hd8101%_)
                                     (_%opt?8109%_ '#f)
                                     (_%key?8110%_ '#f))
                      (let* ((_%__stx1928219283%_ _%rest8107%_)
                             (_%g81158145%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1928219283%_))))
                        (let ((_%__kont1928519286%_
                               (lambda (_%L8340%_ _%L8342%_ _%L8343%_)
                                 (let* ((_%__stx1925819259%_ _%L8342%_)
                                        (_%g83588372%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1925819259%_))))
                                   (let ((_%__kont1926119262%_
                                          (lambda (_%L8410%_)
                                            (if (gx#identifier? _%L8410%_)
                                                (_%lp8104%_
                                                 _%L8340%_
                                                 _%opt?8109%_
                                                 '#t)
                                                '#f)))
                                         (_%__kont1926319264%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8342%_)
                                                (_%lp8104%_
                                                 _%L8340%_
                                                 _%opt?8109%_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1925819259%_)
                                         (let ((_%e83618390%_
                                                (gx#syntax-e
                                                 _%__stx1925819259%_)))
                                           (let ((_%tl83638397%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e83618390%_)))
                                                 (_%hd83628394%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e83618390%_))))
                                             (if (gx#stx-pair? _%tl83638397%_)
                                                 (let ((_%e83648400%_
                                                        (gx#syntax-e
                                                         _%tl83638397%_)))
                                                   (let ((_%tl83668407%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e83648400%_)))
                                                         (_%hd83658404%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e83648400%_))))
                                                     (if (gx#stx-null?
                                                          _%tl83668407%_)
                                                         (_%__kont1926119262%_
                                                          _%hd83628394%_)
                                                         (_%__kont1926319264%_))))
                                                 (_%__kont1926319264%_))))
                                         (_%__kont1926319264%_))))))
                              (_%__kont1928719288%_
                               (lambda (_%L8297%_ _%L8299%_)
                                 (if (gx#identifier? _%L8299%_)
                                     (_%lp8104%_ _%L8297%_ _%opt?8109%_ '#t)
                                     '#f)))
                              (_%__kont1928919290%_
                               (lambda (_%L8177%_ _%L8179%_)
                                 (let* ((_%__stx1923419235%_ _%L8179%_)
                                        (_%g81958209%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1923419235%_))))
                                   (let ((_%__kont1923719238%_
                                          (lambda (_%L8247%_)
                                            (if (gx#identifier? _%L8247%_)
                                                (_%lp8104%_
                                                 _%L8177%_
                                                 '#t
                                                 _%key?8110%_)
                                                '#f)))
                                         (_%__kont1923919240%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8179%_)
                                                (if (not _%opt?8109%_)
                                                    (_%lp8104%_
                                                     _%L8177%_
                                                     '#f
                                                     _%key?8110%_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1923419235%_)
                                         (let ((_%e81988227%_
                                                (gx#syntax-e
                                                 _%__stx1923419235%_)))
                                           (let ((_%tl82008234%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e81988227%_)))
                                                 (_%hd81998231%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e81988227%_))))
                                             (if (gx#stx-pair? _%tl82008234%_)
                                                 (let ((_%e82018237%_
                                                        (gx#syntax-e
                                                         _%tl82008234%_)))
                                                   (let ((_%tl82038244%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e82018237%_)))
                                                         (_%hd82028241%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e82018237%_))))
                                                     (if (gx#stx-null?
                                                          _%tl82038244%_)
                                                         (_%__kont1923719238%_
                                                          _%hd81998231%_)
                                                         (_%__kont1923919240%_))))
                                                 (_%__kont1923919240%_))))
                                         (_%__kont1923919240%_))))))
                              (_%__kont1929119292%_
                               (lambda ()
                                 (if _%key?8110%_
                                     (let ((_%$e8156%_
                                            (gx#stx-null? _%rest8107%_)))
                                       (if _%$e8156%_
                                           _%$e8156%_
                                           (gx#identifier? _%rest8107%_)))
                                     '#f))))
                          (let ((_%__match1930519306%_
                                 (lambda (_%e81208320%_
                                          _%hd81218324%_
                                          _%tl81228327%_
                                          _%e81238330%_
                                          _%hd81248334%_
                                          _%tl81258337%_)
                                   (let ((_%L8340%_ _%tl81258337%_)
                                         (_%L8342%_ _%hd81248334%_)
                                         (_%L8343%_ _%hd81218324%_))
                                     (if (gx#stx-keyword? _%L8343%_)
                                         (_%__kont1928519286%_
                                          _%L8340%_
                                          _%L8342%_
                                          _%L8343%_)
                                         (if (gx#stx-datum? _%hd81218324%_)
                                             (let ((_%e81318283%_
                                                    (gx#stx-e _%hd81218324%_)))
                                               (if (equal? _%e81318283%_
                                                           '#!key)
                                                   (_%__kont1928719288%_
                                                    _%tl81258337%_
                                                    _%hd81248334%_)
                                                   (_%__kont1928919290%_
                                                    _%tl81228327%_
                                                    _%hd81218324%_)))
                                             (_%__kont1928919290%_
                                              _%tl81228327%_
                                              _%hd81218324%_)))))))
                            (if (gx#stx-pair? _%__stx1928219283%_)
                                (let ((_%e81208320%_
                                       (gx#syntax-e _%__stx1928219283%_)))
                                  (let ((_%tl81228327%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e81208320%_)))
                                        (_%hd81218324%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e81208320%_))))
                                    (if (gx#stx-pair? _%tl81228327%_)
                                        (let ((_%e81238330%_
                                               (gx#syntax-e _%tl81228327%_)))
                                          (let ((_%tl81258337%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e81238330%_)))
                                                (_%hd81248334%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e81238330%_))))
                                            (_%__match1930519306%_
                                             _%e81208320%_
                                             _%hd81218324%_
                                             _%tl81228327%_
                                             _%e81238330%_
                                             _%hd81248334%_
                                             _%tl81258337%_)))
                                        (if (gx#stx-datum? _%hd81218324%_)
                                            (let ((_%e81318283%_
                                                   (gx#stx-e _%hd81218324%_)))
                                              (_%__kont1928919290%_
                                               _%tl81228327%_
                                               _%hd81218324%_))
                                            (_%__kont1928919290%_
                                             _%tl81228327%_
                                             _%hd81218324%_)))))
                                (_%__kont1929119292%_))))))))
                 (_%kw-lambda-split5328%_
                  (lambda (_%hd7834%_)
                    (let _%lp7837%_ ((_%rest7840%_ _%hd7834%_)
                                     (_%kwvar7842%_ '#f)
                                     (_%kwargs7843%_ '())
                                     (_%args7844%_ '()))
                      (let* ((_%__stx1935619357%_ _%rest7840%_)
                             (_%g78497879%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1935619357%_))))
                        (let ((_%__kont1935919360%_
                               (lambda (_%L7998%_ _%L8000%_ _%L8001%_)
                                 (let ((_%key8015%_ (gx#stx-e _%L8001%_)))
                                   (if (find (lambda (_%kwarg8018%_)
                                               (eq? _%key8015%_
                                                    (car _%kwarg8018%_)))
                                             _%kwargs7843%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad syntax; duplicate keyword argument"
                                        _%stx5320%_
                                        _%hd7834%_
                                        _%key8015%_)
                                       (let* ((_%__stx1933219333%_ _%L8000%_)
                                              (_%g80228037%_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx1933219333%_))))
                                         (let ((_%__kont1933519336%_
                                                (lambda (_%L8075%_ _%L8077%_)
                                                  (_%lp7837%_
                                                   _%L7998%_
                                                   _%kwvar7842%_
                                                   (cons (list _%key8015%_
                                                               _%L8077%_
                                                               _%L8075%_)
                                                         _%kwargs7843%_)
                                                   _%args7844%_)))
                                               (_%__kont1933719338%_
                                                (lambda ()
                                                  (_%lp7837%_
                                                   _%L7998%_
                                                   _%kwvar7842%_
                                                   (cons (list _%key8015%_
                                                               _%L8000%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'error)
                             (cons '"Missing required keyword argument"
                                   (cons _%L8001%_ '()))))
                 _%kwargs7843%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%args7844%_))))
                                           (if (gx#stx-pair?
                                                _%__stx1933219333%_)
                                               (let ((_%e80268055%_
                                                      (gx#syntax-e
                                                       _%__stx1933219333%_)))
                                                 (let ((_%tl80288062%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e80268055%_)))
                                                       (_%hd80278059%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e80268055%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl80288062%_)
                                                       (let ((_%e80298065%_
                                                              (gx#syntax-e
                                                               _%tl80288062%_)))
                                                         (let ((_%tl80318072%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e80298065%_)))
                       (_%hd80308069%_
                        (let () (declare (not safe)) (##car _%e80298065%_))))
                   (if (gx#stx-null? _%tl80318072%_)
                       (_%__kont1933519336%_ _%hd80308069%_ _%hd80278059%_)
                       (_%__kont1933719338%_))))
               (_%__kont1933719338%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont1933719338%_))))))))
                              (_%__kont1936119362%_
                               (lambda (_%L7955%_ _%L7957%_)
                                 (if _%kwvar7842%_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"bad syntax; duplicate #!key argument"
                                      _%stx5320%_
                                      _%hd7834%_
                                      _%L7957%_)
                                     (_%lp7837%_
                                      _%L7955%_
                                      _%L7957%_
                                      _%kwargs7843%_
                                      _%args7844%_))))
                              (_%__kont1936319364%_
                               (lambda (_%L7907%_ _%L7909%_)
                                 (_%lp7837%_
                                  _%L7907%_
                                  _%kwvar7842%_
                                  _%kwargs7843%_
                                  (cons _%L7909%_ _%args7844%_))))
                              (_%__kont1936519366%_
                               (lambda ()
                                 (values _%kwvar7842%_
                                         (reverse _%kwargs7843%_)
                                         (foldl cons
                                                _%rest7840%_
                                                _%args7844%_)))))
                          (let ((_%__match1937919380%_
                                 (lambda (_%e78547978%_
                                          _%hd78557982%_
                                          _%tl78567985%_
                                          _%e78577988%_
                                          _%hd78587992%_
                                          _%tl78597995%_)
                                   (let ((_%L7998%_ _%tl78597995%_)
                                         (_%L8000%_ _%hd78587992%_)
                                         (_%L8001%_ _%hd78557982%_))
                                     (if (gx#stx-keyword? _%L8001%_)
                                         (_%__kont1935919360%_
                                          _%L7998%_
                                          _%L8000%_
                                          _%L8001%_)
                                         (if (gx#stx-datum? _%hd78557982%_)
                                             (let ((_%e78657941%_
                                                    (gx#stx-e _%hd78557982%_)))
                                               (if (equal? _%e78657941%_
                                                           '#!key)
                                                   (_%__kont1936119362%_
                                                    _%tl78597995%_
                                                    _%hd78587992%_)
                                                   (_%__kont1936319364%_
                                                    _%tl78567985%_
                                                    _%hd78557982%_)))
                                             (_%__kont1936319364%_
                                              _%tl78567985%_
                                              _%hd78557982%_)))))))
                            (if (gx#stx-pair? _%__stx1935619357%_)
                                (let ((_%e78547978%_
                                       (gx#syntax-e _%__stx1935619357%_)))
                                  (let ((_%tl78567985%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e78547978%_)))
                                        (_%hd78557982%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e78547978%_))))
                                    (if (gx#stx-pair? _%tl78567985%_)
                                        (let ((_%e78577988%_
                                               (gx#syntax-e _%tl78567985%_)))
                                          (let ((_%tl78597995%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e78577988%_)))
                                                (_%hd78587992%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e78577988%_))))
                                            (_%__match1937919380%_
                                             _%e78547978%_
                                             _%hd78557982%_
                                             _%tl78567985%_
                                             _%e78577988%_
                                             _%hd78587992%_
                                             _%tl78597995%_)))
                                        (if (gx#stx-datum? _%hd78557982%_)
                                            (let ((_%e78657941%_
                                                   (gx#stx-e _%hd78557982%_)))
                                              (_%__kont1936319364%_
                                               _%tl78567985%_
                                               _%hd78557982%_))
                                            (_%__kont1936319364%_
                                             _%tl78567985%_
                                             _%hd78557982%_)))))
                                (_%__kont1936519366%_))))))))
                 (_%check-duplicate-bindings5329%_
                  (lambda (_%hd7526%_)
                    (let _%lp7529%_ ((_%rest7532%_ _%hd7526%_)
                                     (_%ids7534%_ '()))
                      (let* ((_%__stx1943019431%_ _%rest7532%_)
                             (_%g75377549%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1943019431%_))))
                        (let ((_%__kont1943319434%_
                               (lambda (_%L7577%_ _%L7579%_)
                                 (if (gx#identifier? _%L7579%_)
                                     (_%lp7529%_
                                      _%L7577%_
                                      (cons _%L7579%_ _%ids7534%_))
                                     (if (gx#stx-pair? _%L7579%_)
                                         (let* ((_%g75987612%_
                                                 (lambda (_%g75997608%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g75997608%_)))
                                                (_%g75977654%_
                                                 (lambda (_%g75997616%_)
                                                   (if (gx#stx-pair?
                                                        _%g75997616%_)
                                                       (let ((_%e76017619%_
                                                              (gx#syntax-e
                                                               _%g75997616%_)))
                                                         (let ((_%hd76027623%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e76017619%_)))
                       (_%tl76037626%_
                        (let () (declare (not safe)) (##cdr _%e76017619%_))))
                   (if (gx#stx-pair? _%tl76037626%_)
                       (let ((_%e76047629%_ (gx#syntax-e _%tl76037626%_)))
                         (let ((_%hd76057633%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e76047629%_)))
                               (_%tl76067636%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e76047629%_))))
                           (if (gx#stx-null? _%tl76067636%_)
                               ((lambda (_%L7639%_)
                                  (_%lp7529%_
                                   _%L7577%_
                                   (cons _%L7639%_ _%ids7534%_)))
                                _%hd76027623%_)
                               (_%g75987612%_ _%g75997616%_))))
                       (_%g75987612%_ _%g75997616%_))))
               (_%g75987612%_ _%g75997616%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g75977654%_ _%L7579%_))
                                         (if (gx#stx-keyword? _%L7579%_)
                                             (let* ((_%g76607672%_
                                                     (lambda (_%g76617668%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g76617668%_)))
                                                    (_%g76597775%_
                                                     (lambda (_%g76617676%_)
                                                       (if (gx#stx-pair?
                                                            _%g76617676%_)
                                                           (let ((_%e76647679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g76617676%_)))
                     (let ((_%hd76657683%_
                            (let ()
                              (declare (not safe))
                              (##car _%e76647679%_)))
                           (_%tl76667686%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e76647679%_))))
                       ((lambda (_%L7689%_ _%L7691%_)
                          (let* ((_%__stx1940619407%_ _%L7691%_)
                                 (_%g77047718%_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx1940619407%_))))
                            (let ((_%__kont1940919410%_
                                   (lambda (_%L7756%_)
                                     (_%lp7529%_
                                      _%L7689%_
                                      (cons _%L7756%_ _%ids7534%_))))
                                  (_%__kont1941119412%_
                                   (lambda ()
                                     (_%lp7529%_
                                      _%L7689%_
                                      (cons _%L7691%_ _%ids7534%_)))))
                              (if (gx#stx-pair? _%__stx1940619407%_)
                                  (let ((_%e77077736%_
                                         (gx#syntax-e _%__stx1940619407%_)))
                                    (let ((_%tl77097743%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e77077736%_)))
                                          (_%hd77087740%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e77077736%_))))
                                      (if (gx#stx-pair? _%tl77097743%_)
                                          (let ((_%e77107746%_
                                                 (gx#syntax-e _%tl77097743%_)))
                                            (let ((_%tl77127753%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e77107746%_)))
                                                  (_%hd77117750%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e77107746%_))))
                                              (if (gx#stx-null? _%tl77127753%_)
                                                  (_%__kont1940919410%_
                                                   _%hd77087740%_)
                                                  (_%__kont1941119412%_))))
                                          (_%__kont1941119412%_))))
                                  (_%__kont1941119412%_)))))
                        _%tl76667686%_
                        _%hd76657683%_)))
                   (_%g76607672%_ _%g76617676%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g76597775%_ _%L7577%_))
                                             (if (eq? (gx#stx-e _%L7579%_)
                                                      '#!key)
                                                 (let* ((_%g77817793%_
                                                         (lambda (_%g77827789%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g77827789%_)))
                                                        (_%g77807824%_
                                                         (lambda (_%g77827797%_)
                                                           (if (gx#stx-pair?
                                                                _%g77827797%_)
                                                               (let ((_%e77857800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%g77827797%_)))
                         (let ((_%hd77867804%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e77857800%_)))
                               (_%tl77877807%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e77857800%_))))
                           ((lambda (_%L7810%_ _%L7812%_)
                              (_%lp7529%_
                               _%L7810%_
                               (cons _%L7812%_ _%ids7534%_)))
                            _%tl77877807%_
                            _%hd77867804%_)))
                       (_%g77817793%_ _%g77827797%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g77807824%_ _%L7577%_))
                                                 (error '"BUG: check-duplicate-bindings"
                                                        _%stx5320%_
                                                        _%rest7532%_)))))))
                              (_%__kont1943519436%_
                               (lambda ()
                                 (gx#check-duplicate-identifiers
                                  (if (gx#stx-null? _%rest7532%_)
                                      _%ids7534%_
                                      (cons _%rest7532%_ _%ids7534%_))
                                  _%stx5320%_))))
                          (if (gx#stx-pair? _%__stx1943019431%_)
                              (let ((_%e75417567%_
                                     (gx#syntax-e _%__stx1943019431%_)))
                                (let ((_%tl75437574%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e75417567%_)))
                                      (_%hd75427571%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e75417567%_))))
                                  (_%__kont1943319434%_
                                   _%tl75437574%_
                                   _%hd75427571%_)))
                              (_%__kont1943519436%_)))))))
                 (_%generate-opt-primary5330%_
                  (lambda (_%pre7318%_ _%opt7320%_ _%tail7321%_ _%body7322%_)
                    (let* ((_%g73247365%_
                            (lambda (_%g73257361%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g73257361%_)))
                           (_%g73237522%_
                            (lambda (_%g73257369%_)
                              (if (gx#stx-pair? _%g73257369%_)
                                  (let ((_%e73307372%_
                                         (gx#syntax-e _%g73257369%_)))
                                    (let ((_%hd73317376%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e73307372%_)))
                                          (_%tl73327379%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e73307372%_))))
                                      (if (gx#stx-pair/null? _%hd73317376%_)
                                          (let ((_g20919_
                                                 (gx#syntax-split-splice
                                                  _%hd73317376%_
                                                  '0)))
                                            (begin
                                              (let ((_g20920_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20919_)
                                                           (##vector-length
                                                            _g20919_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20920_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20920_)))
                                              (let ((_%target73337382%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20919_
                                                        0)))
                                                    (_%tl73357385%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20919_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl73357385%_)
                                                    (letrec ((_%loop73367388%_
                                                              (lambda (_%hd73347392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%pre73407395%_)
                        (if (gx#stx-pair? _%hd73347392%_)
                            (let ((_%e73377398%_ (gx#syntax-e _%hd73347392%_)))
                              (let ((_%lp-hd73387402%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e73377398%_)))
                                    (_%lp-tl73397405%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e73377398%_))))
                                (_%loop73367388%_
                                 _%lp-tl73397405%_
                                 (cons _%lp-hd73387402%_ _%pre73407395%_))))
                            (let ((_%pre73417408%_ (reverse _%pre73407395%_)))
                              (if (gx#stx-pair? _%tl73327379%_)
                                  (let ((_%e73427412%_
                                         (gx#syntax-e _%tl73327379%_)))
                                    (let ((_%hd73437416%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e73427412%_)))
                                          (_%tl73447419%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e73427412%_))))
                                      (if (gx#stx-pair/null? _%hd73437416%_)
                                          (let ((_g20921_
                                                 (gx#syntax-split-splice
                                                  _%hd73437416%_
                                                  '0)))
                                            (begin
                                              (let ((_g20922_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20921_)
                                                           (##vector-length
                                                            _g20921_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20922_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20922_)))
                                              (let ((_%target73457422%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20921_
                                                        0)))
                                                    (_%tl73477425%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20921_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl73477425%_)
                                                    (letrec ((_%loop73487428%_
                                                              (lambda (_%hd73467432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%opt73527435%_)
                        (if (gx#stx-pair? _%hd73467432%_)
                            (let ((_%e73497438%_ (gx#syntax-e _%hd73467432%_)))
                              (let ((_%lp-hd73507442%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e73497438%_)))
                                    (_%lp-tl73517445%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e73497438%_))))
                                (_%loop73487428%_
                                 _%lp-tl73517445%_
                                 (cons _%lp-hd73507442%_ _%opt73527435%_))))
                            (let ((_%opt73537448%_ (reverse _%opt73527435%_)))
                              (if (gx#stx-pair? _%tl73447419%_)
                                  (let ((_%e73547452%_
                                         (gx#syntax-e _%tl73447419%_)))
                                    (let ((_%hd73557456%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e73547452%_)))
                                          (_%tl73567459%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e73547452%_))))
                                      (if (gx#stx-pair? _%tl73567459%_)
                                          (let ((_%e73577462%_
                                                 (gx#syntax-e _%tl73567459%_)))
                                            (let ((_%hd73587466%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e73577462%_)))
                                                  (_%tl73597469%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e73577462%_))))
                                              (if (gx#stx-null? _%tl73597469%_)
                                                  ((lambda (_%L7472%_
                                                            _%L7474%_
                                                            _%L7475%_
                                                            _%L7476%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda%)
                                                           (cons (foldr (lambda (_%g75057510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _%g75067513%_)
                                  (cons _%g75057510%_ _%g75067513%_))
                                (foldr (lambda (_%g75077516%_ _%g75087519%_)
                                         (cons _%g75077516%_ _%g75087519%_))
                                       _%L7474%_
                                       _%L7475%_)
                                _%L7476%_)
                         _%L7472%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%hd73587466%_
                                                   _%hd73557456%_
                                                   _%opt73537448%_
                                                   _%pre73417408%_)
                                                  (_%g73247365%_
                                                   _%g73257369%_))))
                                          (_%g73247365%_ _%g73257369%_))))
                                  (_%g73247365%_ _%g73257369%_)))))))
              (_%loop73487428%_ _%target73457422%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g73247365%_
                                                     _%g73257369%_)))))
                                          (_%g73247365%_ _%g73257369%_))))
                                  (_%g73247365%_ _%g73257369%_)))))))
              (_%loop73367388%_ _%target73337382%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g73247365%_
                                                     _%g73257369%_)))))
                                          (_%g73247365%_ _%g73257369%_))))
                                  (_%g73247365%_ _%g73257369%_)))))
                      (_%g73237522%_
                       (list _%pre7318%_
                             (map car _%opt7320%_)
                             _%tail7321%_
                             _%body7322%_)))))
                 (_%generate-opt-dispatch5331%_
                  (lambda (_%primary7312%_
                           _%pre7314%_
                           _%opt7315%_
                           _%tail7316%_)
                    (cons (list _%pre7314%_
                                (_%generate-opt-clause5333%_
                                 _%primary7312%_
                                 _%pre7314%_
                                 _%opt7315%_))
                          (_%generate-opt-dispatch*5332%_
                           _%primary7312%_
                           _%pre7314%_
                           _%opt7315%_
                           _%tail7316%_))))
                 (_%generate-opt-dispatch*5332%_
                  (lambda (_%primary6861%_
                           _%pre6863%_
                           _%opt6864%_
                           _%tail6865%_)
                    (let _%recur6867%_ ((_%opt-rest6870%_ _%opt6864%_)
                                        (_%right6872%_ '()))
                      (if (pair? _%opt-rest6870%_)
                          (let* ((_%hd6876%_ (caar _%opt-rest6870%_))
                                 (_%rest6879%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%opt-rest6870%_)))
                                 (_%right*6882%_
                                  (cons _%hd6876%_ _%right6872%_))
                                 (_%g68856902%_
                                  (lambda (_%g68866898%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g68866898%_)))
                                 (_%g68847086%_
                                  (lambda (_%g68866906%_)
                                    (if (gx#stx-pair/null? _%g68866906%_)
                                        (let ((_g20923_
                                               (gx#syntax-split-splice
                                                _%g68866906%_
                                                '0)))
                                          (begin
                                            (let ((_g20924_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g20923_)
                                                         (##vector-length
                                                          _g20923_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g20924_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g20924_)))
                                            (let ((_%target68886909%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g20923_
                                                      0)))
                                                  (_%tl68906912%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g20923_
                                                      1))))
                                              (if (gx#stx-null? _%tl68906912%_)
                                                  (letrec ((_%loop68916915%_
                                                            (lambda (_%hd68896919%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%pre-bind68956922%_)
                      (if (gx#stx-pair? _%hd68896919%_)
                          (let ((_%e68926925%_ (gx#syntax-e _%hd68896919%_)))
                            (let ((_%lp-hd68936929%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e68926925%_)))
                                  (_%lp-tl68946932%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e68926925%_))))
                              (_%loop68916915%_
                               _%lp-tl68946932%_
                               (cons _%lp-hd68936929%_ _%pre-bind68956922%_))))
                          (let ((_%pre-bind68966935%_
                                 (reverse _%pre-bind68956922%_)))
                            ((lambda (_%L6939%_)
                               (let* ((_%g69616978%_
                                       (lambda (_%g69626974%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g69626974%_)))
                                      (_%g69607082%_
                                       (lambda (_%g69626982%_)
                                         (if (gx#stx-pair/null? _%g69626982%_)
                                             (let ((_g20925_
                                                    (gx#syntax-split-splice
                                                     _%g69626982%_
                                                     '0)))
                                               (begin
                                                 (let ((_g20926_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g20925_)
                                                              (##vector-length
                                                               _g20925_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g20926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g20926_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target69646985%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g20925_
                                                           0)))
                                                       (_%tl69666988%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g20925_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl69666988%_)
                                                       (letrec ((_%loop69676991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd69656995%_ _%opt-bind69716998%_)
                           (if (gx#stx-pair? _%hd69656995%_)
                               (let ((_%e69687001%_
                                      (gx#syntax-e _%hd69656995%_)))
                                 (let ((_%lp-hd69697005%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e69687001%_)))
                                       (_%lp-tl69707008%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e69687001%_))))
                                   (_%loop69676991%_
                                    _%lp-tl69707008%_
                                    (cons _%lp-hd69697005%_
                                          _%opt-bind69716998%_))))
                               (let ((_%opt-bind69727011%_
                                      (reverse _%opt-bind69716998%_)))
                                 ((lambda (_%L7015%_)
                                    (let* ((_%g70327040%_
                                            (lambda (_%g70337036%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g70337036%_)))
                                           (_%g70317078%_
                                            (lambda (_%g70337044%_)
                                              ((lambda (_%L7047%_)
                                                 (cons (list (foldr (lambda (_%g70617066%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g70627069%_)
                              (cons _%g70617066%_ _%g70627069%_))
                            (foldr (lambda (_%g70637072%_ _%g70647075%_)
                                     (cons _%g70637072%_ _%g70647075%_))
                                   (cons _%L7047%_ '())
                                   _%L7015%_)
                            _%L6939%_)
                     (_%generate-opt-clause5333%_
                      _%primary6861%_
                      (foldr cons (reverse _%right*6882%_) _%pre6863%_)
                      _%rest6879%_))
               (_%recur6867%_ _%rest6879%_ _%right*6882%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g70337044%_))))
                                      (_%g70317078%_ _%hd6876%_)))
                                  _%opt-bind69727011%_))))))
                 (_%loop69676991%_ _%target69646985%_ '()))
               (_%g69616978%_ _%g69626982%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g69616978%_ _%g69626982%_)))))
                                 (_%g69607082%_ (reverse _%right6872%_))))
                             _%pre-bind68966935%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop68916915%_
                                                     _%target68886909%_
                                                     '()))
                                                  (_%g68856902%_
                                                   _%g68866906%_)))))
                                        (_%g68856902%_ _%g68866906%_)))))
                            (_%g68847086%_ _%pre6863%_))
                          (if (gx#stx-null? _%tail6865%_)
                              '()
                              (let* ((_%g70947135%_
                                      (lambda (_%g70957131%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g70957131%_)))
                                     (_%g70937308%_
                                      (lambda (_%g70957139%_)
                                        (if (gx#stx-pair? _%g70957139%_)
                                            (let ((_%e71007142%_
                                                   (gx#syntax-e
                                                    _%g70957139%_)))
                                              (let ((_%hd71017146%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71007142%_)))
                                                    (_%tl71027149%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71007142%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd71017146%_)
                                                    (let ((_g20927_
                                                           (gx#syntax-split-splice
                                                            _%hd71017146%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20928_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g20927_)
                             (##vector-length _g20927_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g20928_ 2)))
                      (error "Context expects 2 values" _g20928_)))
                (let ((_%target71037152%_
                       (let () (declare (not safe)) (##vector-ref _g20927_ 0)))
                      (_%tl71057155%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g20927_ 1))))
                  (if (gx#stx-null? _%tl71057155%_)
                      (letrec ((_%loop71067158%_
                                (lambda (_%hd71047162%_ _%pre71107165%_)
                                  (if (gx#stx-pair? _%hd71047162%_)
                                      (let ((_%e71077168%_
                                             (gx#syntax-e _%hd71047162%_)))
                                        (let ((_%lp-hd71087172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e71077168%_)))
                                              (_%lp-tl71097175%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e71077168%_))))
                                          (_%loop71067158%_
                                           _%lp-tl71097175%_
                                           (cons _%lp-hd71087172%_
                                                 _%pre71107165%_))))
                                      (let ((_%pre71117178%_
                                             (reverse _%pre71107165%_)))
                                        (if (gx#stx-pair? _%tl71027149%_)
                                            (let ((_%e71127182%_
                                                   (gx#syntax-e
                                                    _%tl71027149%_)))
                                              (let ((_%hd71137186%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71127182%_)))
                                                    (_%tl71147189%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71127182%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd71137186%_)
                                                    (let ((_g20929_
                                                           (gx#syntax-split-splice
                                                            _%hd71137186%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20930_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g20929_)
                             (##vector-length _g20929_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g20930_ 2)))
                      (error "Context expects 2 values" _g20930_)))
                (let ((_%target71157192%_
                       (let () (declare (not safe)) (##vector-ref _g20929_ 0)))
                      (_%tl71177195%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g20929_ 1))))
                  (if (gx#stx-null? _%tl71177195%_)
                      (letrec ((_%loop71187198%_
                                (lambda (_%hd71167202%_ _%opt71227205%_)
                                  (if (gx#stx-pair? _%hd71167202%_)
                                      (let ((_%e71197208%_
                                             (gx#syntax-e _%hd71167202%_)))
                                        (let ((_%lp-hd71207212%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e71197208%_)))
                                              (_%lp-tl71217215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e71197208%_))))
                                          (_%loop71187198%_
                                           _%lp-tl71217215%_
                                           (cons _%lp-hd71207212%_
                                                 _%opt71227205%_))))
                                      (let ((_%opt71237218%_
                                             (reverse _%opt71227205%_)))
                                        (if (gx#stx-pair? _%tl71147189%_)
                                            (let ((_%e71247222%_
                                                   (gx#syntax-e
                                                    _%tl71147189%_)))
                                              (let ((_%hd71257226%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71247222%_)))
                                                    (_%tl71267229%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71247222%_))))
                                                (if (gx#stx-pair?
                                                     _%tl71267229%_)
                                                    (let ((_%e71277232%_
                                                           (gx#syntax-e
                                                            _%tl71267229%_)))
                                                      (let ((_%hd71287236%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e71277232%_)))
                    (_%tl71297239%_
                     (let () (declare (not safe)) (##cdr _%e71277232%_))))
                (if (gx#stx-null? _%tl71297239%_)
                    ((lambda (_%L7242%_ _%L7244%_ _%L7245%_ _%L7246%_)
                       (list (list (foldr (lambda (_%g72757280%_ _%g72767283%_)
                                            (cons _%g72757280%_ _%g72767283%_))
                                          (foldr (lambda (_%g72777286%_
                                                          _%g72787289%_)
                                                   (cons _%g72777286%_
                                                         _%g72787289%_))
                                                 _%L7244%_
                                                 _%L7245%_)
                                          _%L7246%_)
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'apply)
                                          (cons _%L7242%_
                                                (foldr (lambda (_%g72917296%_
                                                                _%g72927299%_)
                                                         (cons _%g72917296%_
                                                               _%g72927299%_))
                                                       (foldr (lambda (_%g72937302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g72947305%_)
                        (cons _%g72937302%_ _%g72947305%_))
                      (cons _%L7244%_ '())
                      _%L7245%_)
               _%L7246%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (gx#stx-source _%stx5320%_)))))
                     _%hd71287236%_
                     _%hd71257226%_
                     _%opt71237218%_
                     _%pre71117178%_)
                    (_%g70947135%_ _%g70957139%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g70947135%_
                                                     _%g70957139%_))))
                                            (_%g70947135%_ _%g70957139%_)))))))
                        (_%loop71187198%_ _%target71157192%_ '()))
                      (_%g70947135%_ _%g70957139%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g70947135%_
                                                     _%g70957139%_))))
                                            (_%g70947135%_ _%g70957139%_)))))))
                        (_%loop71067158%_ _%target71037152%_ '()))
                      (_%g70947135%_ _%g70957139%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g70947135%_
                                                     _%g70957139%_))))
                                            (_%g70947135%_ _%g70957139%_)))))
                                (_%g70937308%_
                                 (list _%pre6863%_
                                       (reverse _%right6872%_)
                                       _%tail6865%_
                                       _%primary6861%_))))))))
                 (_%generate-opt-clause5333%_
                  (lambda (_%primary6559%_ _%pre6561%_ _%opt6562%_)
                    (let _%recur6564%_ ((_%opt-rest6567%_ _%opt6562%_)
                                        (_%right6569%_ '()))
                      (if (pair? _%opt-rest6567%_)
                          (let* ((_%hd6571%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%opt-rest6567%_)))
                                 (_%rest6574%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%opt-rest6567%_)))
                                 (_%g65776585%_
                                  (lambda (_%g65786581%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g65786581%_)))
                                 (_%g65766674%_
                                  (lambda (_%g65786589%_)
                                    ((lambda (_%L6592%_)
                                       (let* ((_%g66086616%_
                                               (lambda (_%g66096612%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g66096612%_)))
                                              (_%g66076670%_
                                               (lambda (_%g66096620%_)
                                                 ((lambda (_%L6623%_)
                                                    (let* ((_%g66366644%_
                                                            (lambda (_%g66376640%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g66376640%_)))
                                                           (_%g66356666%_
                                                            (lambda (_%g66376648%_)
                                                              ((lambda (_%L6651%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons (cons (cons (cons _%L6592%_ '())
                                                 (cons _%L6623%_ '()))
                                           '())
                                     (cons _%L6651%_ '()))))
                       _%g66376648%_))))
              (_%g66356666%_
               (_%recur6564%_ _%rest6574%_ (cons _%L6592%_ _%right6569%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g66096620%_))))
                                         (_%g66076670%_ (cdr _%hd6571%_))))
                                     _%g65786589%_))))
                            (_%g65766674%_ (car _%hd6571%_)))
                          (let* ((_%g66786715%_
                                  (lambda (_%g66796711%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g66796711%_)))
                                 (_%g66776857%_
                                  (lambda (_%g66796719%_)
                                    (if (gx#stx-pair? _%g66796719%_)
                                        (let ((_%e66836722%_
                                               (gx#syntax-e _%g66796719%_)))
                                          (let ((_%hd66846726%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e66836722%_)))
                                                (_%tl66856729%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e66836722%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd66846726%_)
                                                (let ((_g20931_
                                                       (gx#syntax-split-splice
                                                        _%hd66846726%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20932_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20931_)
                         (##vector-length _g20931_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20932_ 2)))
                  (error "Context expects 2 values" _g20932_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target66866732%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20931_
                                                              0)))
                                                          (_%tl66886735%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20931_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl66886735%_)
                                                          (letrec ((_%loop66896738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd66876742%_ _%pre66936745%_)
                              (if (gx#stx-pair? _%hd66876742%_)
                                  (let ((_%e66906748%_
                                         (gx#syntax-e _%hd66876742%_)))
                                    (let ((_%lp-hd66916752%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e66906748%_)))
                                          (_%lp-tl66926755%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e66906748%_))))
                                      (_%loop66896738%_
                                       _%lp-tl66926755%_
                                       (cons _%lp-hd66916752%_
                                             _%pre66936745%_))))
                                  (let ((_%pre66946758%_
                                         (reverse _%pre66936745%_)))
                                    (if (gx#stx-pair? _%tl66856729%_)
                                        (let ((_%e66956762%_
                                               (gx#syntax-e _%tl66856729%_)))
                                          (let ((_%hd66966766%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e66956762%_)))
                                                (_%tl66976769%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e66956762%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd66966766%_)
                                                (let ((_g20933_
                                                       (gx#syntax-split-splice
                                                        _%hd66966766%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20934_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20933_)
                         (##vector-length _g20933_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20934_ 2)))
                  (error "Context expects 2 values" _g20934_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target66986772%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20933_
                                                              0)))
                                                          (_%tl67006775%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20933_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl67006775%_)
                                                          (letrec ((_%loop67016778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd66996782%_ _%opt67056785%_)
                              (if (gx#stx-pair? _%hd66996782%_)
                                  (let ((_%e67026788%_
                                         (gx#syntax-e _%hd66996782%_)))
                                    (let ((_%lp-hd67036792%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e67026788%_)))
                                          (_%lp-tl67046795%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e67026788%_))))
                                      (_%loop67016778%_
                                       _%lp-tl67046795%_
                                       (cons _%lp-hd67036792%_
                                             _%opt67056785%_))))
                                  (let ((_%opt67066798%_
                                         (reverse _%opt67056785%_)))
                                    (if (gx#stx-pair? _%tl66976769%_)
                                        (let ((_%e67076802%_
                                               (gx#syntax-e _%tl66976769%_)))
                                          (let ((_%hd67086806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67076802%_)))
                                                (_%tl67096809%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67076802%_))))
                                            (if (gx#stx-null? _%tl67096809%_)
                                                ((lambda (_%L6812%_
                                                          _%L6814%_
                                                          _%L6815%_)
                                                   (gx#stx-wrap-source
                                                    (cons _%L6812%_
                                                          (foldr (lambda (_%g68406845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g68416848%_)
                           (cons _%g68406845%_ _%g68416848%_))
                         (foldr (lambda (_%g68426851%_ _%g68436854%_)
                                  (cons _%g68426851%_ _%g68436854%_))
                                '()
                                _%L6814%_)
                         _%L6815%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _%stx5320%_)))
                                                 _%hd67086806%_
                                                 _%opt67066798%_
                                                 _%pre66946758%_)
                                                (_%g66786715%_
                                                 _%g66796719%_))))
                                        (_%g66786715%_ _%g66796719%_)))))))
                    (_%loop67016778%_ _%target66986772%_ '()))
                  (_%g66786715%_ _%g66796719%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g66786715%_
                                                 _%g66796719%_))))
                                        (_%g66786715%_ _%g66796719%_)))))))
                    (_%loop66896738%_ _%target66866732%_ '()))
                  (_%g66786715%_ _%g66796719%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g66786715%_
                                                 _%g66796719%_))))
                                        (_%g66786715%_ _%g66796719%_)))))
                            (_%g66776857%_
                             (list _%pre6561%_
                                   (reverse _%right6569%_)
                                   _%primary6559%_)))))))
                 (_%generate-kw-primary5334%_
                  (lambda (_%key5935%_
                           _%kwargs5937%_
                           _%args5938%_
                           _%body5939%_)
                    (letrec ((_%make-body5941%_
                              (lambda (_%kwargs6428%_ _%kwvals6430%_)
                                (if (pair? _%kwargs6428%_)
                                    (let* ((_%kwarg6432%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%kwargs6428%_)))
                                           (_%var6435%_ (cadr _%kwarg6432%_))
                                           (_%default6438%_
                                            (caddr _%kwarg6432%_))
                                           (_%kwval6441%_ (car _%kwvals6430%_))
                                           (_%rest-kwargs6444%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%kwargs6428%_)))
                                           (_%rest-kwvals6447%_
                                            (cdr _%kwvals6430%_))
                                           (_%g64526475%_
                                            (lambda (_%g64536471%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g64536471%_)))
                                           (_%g64516555%_
                                            (lambda (_%g64536479%_)
                                              (if (gx#stx-pair? _%g64536479%_)
                                                  (let ((_%e64586482%_
                                                         (gx#syntax-e
                                                          _%g64536479%_)))
                                                    (let ((_%hd64596486%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e64586482%_)))
                                                          (_%tl64606489%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e64586482%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl64606489%_)
                                                          (let ((_%e64616492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl64606489%_)))
                    (let ((_%hd64626496%_
                           (let () (declare (not safe)) (##car _%e64616492%_)))
                          (_%tl64636499%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e64616492%_))))
                      (if (gx#stx-pair? _%tl64636499%_)
                          (let ((_%e64646502%_ (gx#syntax-e _%tl64636499%_)))
                            (let ((_%hd64656506%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e64646502%_)))
                                  (_%tl64666509%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e64646502%_))))
                              (if (gx#stx-pair? _%tl64666509%_)
                                  (let ((_%e64676512%_
                                         (gx#syntax-e _%tl64666509%_)))
                                    (let ((_%hd64686516%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e64676512%_)))
                                          (_%tl64696519%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e64676512%_))))
                                      (if (gx#stx-null? _%tl64696519%_)
                                          ((lambda (_%L6522%_
                                                    _%L6524%_
                                                    _%L6525%_
                                                    _%L6526%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'let-values)
                                                   (cons (cons (cons (cons _%L6526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'eq?)
                                                     (cons _%L6525%_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'absent-value)
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L6524%_
                                                     (cons _%L6525%_ '()))))
                                   '()))
                       '())
                 (cons _%L6522%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd64686516%_
                                           _%hd64656506%_
                                           _%hd64626496%_
                                           _%hd64596486%_)
                                          (_%g64526475%_ _%g64536479%_))))
                                  (_%g64526475%_ _%g64536479%_))))
                          (_%g64526475%_ _%g64536479%_))))
                  (_%g64526475%_ _%g64536479%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g64526475%_
                                                   _%g64536479%_)))))
                                      (_%g64516555%_
                                       (list _%var6435%_
                                             _%kwval6441%_
                                             _%default6438%_
                                             (_%make-body5941%_
                                              _%rest-kwargs6444%_
                                              _%rest-kwvals6447%_))))
                                    (cons 'begin _%body5939%_))))
                             (_%make-main5943%_
                              (lambda ()
                                (let* ((_%g62366244%_
                                        (lambda (_%g62376240%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g62376240%_)))
                                       (_%g62356420%_
                                        (lambda (_%g62376248%_)
                                          ((lambda (_%L6251%_)
                                             (let* ((_%g62636280%_
                                                     (lambda (_%g62646276%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g62646276%_)))
                                                    (_%g62626416%_
                                                     (lambda (_%g62646284%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g62646284%_)
                                                           (let ((_g20935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g62646284%_ '0)))
                     (begin
                       (let ((_g20936_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g20935_)
                                    (##vector-length _g20935_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g20936_ 2)))
                             (error "Context expects 2 values" _g20936_)))
                       (let ((_%target62666287%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g20935_ 0)))
                             (_%tl62686290%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g20935_ 1))))
                         (if (gx#stx-null? _%tl62686290%_)
                             (letrec ((_%loop62696293%_
                                       (lambda (_%hd62676297%_
                                                _%kwval62736300%_)
                                         (if (gx#stx-pair? _%hd62676297%_)
                                             (let ((_%e62706303%_
                                                    (gx#syntax-e
                                                     _%hd62676297%_)))
                                               (let ((_%lp-hd62716307%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e62706303%_)))
                                                     (_%lp-tl62726310%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e62706303%_))))
                                                 (_%loop62696293%_
                                                  _%lp-tl62726310%_
                                                  (cons _%lp-hd62716307%_
                                                        _%kwval62736300%_))))
                                             (let ((_%kwval62746313%_
                                                    (reverse _%kwval62736300%_)))
                                               ((lambda (_%L6317%_)
                                                  (let* ((_%g63346342%_
                                                          (lambda (_%g63356338%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g63356338%_)))
                                                         (_%g63336412%_
                                                          (lambda (_%g63356346%_)
                                                            ((lambda (_%L6349%_)
                                                               (let* ((_%g63626370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g63636366%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g63636366%_)))
                              (_%g63616400%_
                               (lambda (_%g63636374%_)
                                 ((lambda (_%L6377%_)
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (cons _%L6251%_
                                                       (foldr (lambda (_%g63916394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g63926397%_)
                        (cons _%g63916394%_ _%g63926397%_))
                      _%L6349%_
                      _%L6317%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L6377%_ '())))
                                     (gx#stx-source _%stx5320%_)))
                                  _%g63636374%_))))
                         (_%g63616400%_
                          (_%make-body5941%_
                           _%kwargs5937%_
                           (foldr (lambda (_%g64036406%_ _%g64046409%_)
                                    (cons _%g64036406%_ _%g64046409%_))
                                  '()
                                  _%L6317%_)))))
                     _%g63356346%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g63336412%_
                                                     _%args5938%_)))
                                                _%kwval62746313%_))))))
                               (_%loop62696293%_ _%target62666287%_ '()))
                             (_%g62636280%_ _%g62646284%_)))))
                   (_%g62636280%_ _%g62646284%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g62626416%_
                                                (gx#gentemps
                                                 (map cadr _%kwargs5937%_)))))
                                           _%g62376248%_))))
                                  (_%g62356420%_
                                   (let ((_%$e6424%_ _%key5935%_))
                                     (if _%$e6424%_
                                         _%$e6424%_
                                         (gx#syntax-local-introduce
                                          '@@keywords)))))))
                             (_%make-dispatch5944%_
                              (lambda (_%main6044%_)
                                (let* ((_%g60476055%_
                                        (lambda (_%g60486051%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g60486051%_)))
                                       (_%g60466226%_
                                        (lambda (_%g60486059%_)
                                          ((lambda (_%L6062%_)
                                             (let* ((_%g60746091%_
                                                     (lambda (_%g60756087%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g60756087%_)))
                                                    (_%g60736187%_
                                                     (lambda (_%g60756095%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g60756095%_)
                                                           (let ((_g20937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g60756095%_ '0)))
                     (begin
                       (let ((_g20938_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g20937_)
                                    (##vector-length _g20937_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g20938_ 2)))
                             (error "Context expects 2 values" _g20938_)))
                       (let ((_%target60776098%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g20937_ 0)))
                             (_%tl60796101%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g20937_ 1))))
                         (if (gx#stx-null? _%tl60796101%_)
                             (letrec ((_%loop60806104%_
                                       (lambda (_%hd60786108%_
                                                _%get-kw60846111%_)
                                         (if (gx#stx-pair? _%hd60786108%_)
                                             (let ((_%e60816114%_
                                                    (gx#syntax-e
                                                     _%hd60786108%_)))
                                               (let ((_%lp-hd60826118%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e60816114%_)))
                                                     (_%lp-tl60836121%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e60816114%_))))
                                                 (_%loop60806104%_
                                                  _%lp-tl60836121%_
                                                  (cons _%lp-hd60826118%_
                                                        _%get-kw60846111%_))))
                                             (let ((_%get-kw60856124%_
                                                    (reverse _%get-kw60846111%_)))
                                               ((lambda (_%L6128%_)
                                                  (let* ((_%g61456153%_
                                                          (lambda (_%g61466149%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g61466149%_)))
                                                         (_%g61446183%_
                                                          (lambda (_%g61466157%_)
                                                            ((lambda (_%L6160%_)
                                                               (gx#stx-wrap-source
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'lambda)
                              (cons (cons _%L6062%_
                                          (gx#datum->syntax '#f 'args))
                                    (cons (cons (gx#datum->syntax '#f 'apply)
                                                (cons _%L6160%_
                                                      (cons _%L6062%_
                                                            (foldr (lambda (_%g61746177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g61756180%_)
                             (cons _%g61746177%_ _%g61756180%_))
                           (cons (gx#datum->syntax '#f 'args) '())
                           _%L6128%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (gx#stx-source _%stx5320%_)))
                     _%g61466157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g61446183%_
                                                     _%main6044%_)))
                                                _%get-kw60856124%_))))))
                               (_%loop60806104%_ _%target60776098%_ '()))
                             (_%g60746091%_ _%g60756095%_)))))
                   (_%g60746091%_ _%g60756095%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g60736187%_
                                                (map (lambda (_%kwarg6191%_)
                                                       (let* ((_%g61946202%_
                                                               (lambda (_%g61956198%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g61956198%_)))
                      (_%g61936222%_
                       (lambda (_%g61956206%_)
                         ((lambda (_%L6209%_)
                            (cons (gx#datum->syntax '#f 'symbolic-table-ref)
                                  (cons _%L6062%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%L6209%_ '()))
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'absent-value)
                                                    '())))))
                          _%g61956206%_))))
                 (_%g61936222%_ (car _%kwarg6191%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%kwargs5937%_))))
                                           _%g60486059%_))))
                                  (_%g60466226%_
                                   (let ((_%$e6230%_ _%key5935%_))
                                     (if _%$e6230%_
                                         _%$e6230%_
                                         (gx#syntax-local-introduce
                                          '@@keywords))))))))
                      (let* ((_%g59465954%_
                              (lambda (_%g59475950%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g59475950%_)))
                             (_%g59456040%_
                              (lambda (_%g59475958%_)
                                ((lambda (_%L5961%_)
                                   (let* ((_%g59745982%_
                                           (lambda (_%g59755978%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g59755978%_)))
                                          (_%g59736036%_
                                           (lambda (_%g59755986%_)
                                             ((lambda (_%L5989%_)
                                                (let* ((_%g60026010%_
                                                        (lambda (_%g60036006%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g60036006%_)))
                                                       (_%g60016032%_
                                                        (lambda (_%g60036014%_)
                                                          ((lambda (_%L6017%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons (cons (cons (cons _%L5961%_ '())
                                             (cons _%L6017%_ '()))
                                       '())
                                 (cons _%L5989%_ '()))))
                   _%g60036014%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g60016032%_
                                                   (_%make-main5943%_))))
                                              _%g59755986%_))))
                                     (_%g59736036%_
                                      (_%make-dispatch5944%_ _%L5961%_))))
                                 _%g59475958%_))))
                        (_%g59456040%_ (gx#genident 'kw-lambda-main))))))
                 (_%generate-kw-dispatch5335%_
                  (lambda (_%primary5848%_ _%kwargs5850%_ _%strict?5851%_)
                    (let* ((_%g58535872%_
                            (lambda (_%g58545868%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g58545868%_)))
                           (_%g58525931%_
                            (lambda (_%g58545876%_)
                              (if (gx#stx-pair? _%g58545876%_)
                                  (let ((_%e58585879%_
                                         (gx#syntax-e _%g58545876%_)))
                                    (let ((_%hd58595883%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e58585879%_)))
                                          (_%tl58605886%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e58585879%_))))
                                      (if (gx#stx-pair? _%tl58605886%_)
                                          (let ((_%e58615889%_
                                                 (gx#syntax-e _%tl58605886%_)))
                                            (let ((_%hd58625893%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e58615889%_)))
                                                  (_%tl58635896%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e58615889%_))))
                                              (if (gx#stx-pair? _%tl58635896%_)
                                                  (let ((_%e58645899%_
                                                         (gx#syntax-e
                                                          _%tl58635896%_)))
                                                    (let ((_%hd58655903%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e58645899%_)))
                                                          (_%tl58665906%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e58645899%_))))
                                                      (if (gx#stx-null?
                                                           _%tl58665906%_)
                                                          ((lambda (_%L5909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L5911%_
                            _%L5912%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%L5909%_
                                 (cons (cons (gx#datum->syntax '#f 'apply)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'keyword-dispatch)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%L5912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L5911%_ (cons _%L5909%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _%hd58655903%_
                   _%hd58625893%_
                   _%hd58595883%_)
                  (_%g58535872%_ _%g58545876%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g58535872%_
                                                   _%g58545876%_))))
                                          (_%g58535872%_ _%g58545876%_))))
                                  (_%g58535872%_ _%g58545876%_)))))
                      (_%g58525931%_
                       (list (if _%strict?5851%_
                                 (_%generate-kw-table5336%_
                                  (map car _%kwargs5850%_))
                                 '#f)
                             _%primary5848%_
                             (gx#genident 'args))))))
                 (_%generate-kw-table5336%_
                  (lambda (_%kws5822%_)
                    (let _%rehash5825%_ ((_%pht5828%_
                                          (let ((__tmp20943
                                                 (length _%kws5822%_)))
                                            (declare (not safe))
                                            (##make-vector __tmp20943 '#f))))
                      (let _%lp5831%_ ((_%rest5834%_ _%kws5822%_))
                        (if (pair? _%rest5834%_)
                            (let* ((_%key5837%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest5834%_)))
                                   (_%rest5840%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest5834%_)))
                                   (_%pos5843%_
                                    (let ((__tmp20940
                                           (keyword-hash _%key5837%_))
                                          (__tmp20939
                                           (vector-length _%pht5828%_)))
                                      (declare (not safe))
                                      (##fxmodulo __tmp20940 __tmp20939))))
                              (if (vector-ref _%pht5828%_ _%pos5843%_)
                                  (if (let ((__tmp20941
                                             (vector-length _%pht5828%_)))
                                        (declare (not safe))
                                        (##fx< __tmp20941 '8192))
                                      (_%rehash5825%_
                                       (make-vector
                                        (quotient
                                         (let ((__tmp20942
                                                (vector-length _%pht5828%_)))
                                           (declare (not safe))
                                           (##fx* '3 __tmp20942))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _%kws5822%_))
                                  (begin
                                    (vector-set!
                                     _%pht5828%_
                                     _%pos5843%_
                                     _%key5837%_)
                                    (_%lp5831%_ _%rest5840%_))))
                            _%pht5828%_))))))
          (let* ((_%__stx1944619447%_ _%stx5320%_)
                 (_%g53405371%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1944619447%_))))
            (let ((_%__kont1944919450%_
                   (lambda (_%L5803%_ _%L5805%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%L5805%_ _%L5803%_))))
                  (_%__kont1945119452%_
                   (lambda (_%L5575%_ _%L5577%_)
                     (let ((_g20944_ (_%opt-lambda-split5326%_ _%L5577%_)))
                       (begin
                         (let ((_g20945_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g20944_)
                                      (##vector-length _g20944_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g20945_ 3)))
                               (error "Context expects 3 values" _g20945_)))
                         (let ((_%pre5590%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g20944_ 0)))
                               (_%opt5592%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g20944_ 1)))
                               (_%tail5593%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g20944_ 2))))
                           (let* ((_%g55955603%_
                                   (lambda (_%g55965599%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g55965599%_)))
                                  (_%g55945772%_
                                   (lambda (_%g55965607%_)
                                     ((lambda (_%L5610%_)
                                        (let* ((_%g56235631%_
                                                (lambda (_%g56245627%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g56245627%_)))
                                               (_%g56225768%_
                                                (lambda (_%g56245635%_)
                                                  ((lambda (_%L5638%_)
                                                     (let* ((_%g56515668%_
                                                             (lambda (_%g56525664%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g56525664%_)))
                                                            (_%g56505764%_
                                                             (lambda (_%g56525672%_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g56525672%_)
                           (let ((_g20946_
                                  (gx#syntax-split-splice _%g56525672%_ '0)))
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
                               (let ((_%target56545675%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g20946_ 0)))
                                     (_%tl56565678%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g20946_ 1))))
                                 (if (gx#stx-null? _%tl56565678%_)
                                     (letrec ((_%loop56575681%_
                                               (lambda (_%hd56555685%_
                                                        _%clause56615688%_)
                                                 (if (gx#stx-pair?
                                                      _%hd56555685%_)
                                                     (let ((_%e56585691%_
                                                            (gx#syntax-e
                                                             _%hd56555685%_)))
                                                       (let ((_%lp-hd56595695%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e56585691%_)))
                     (_%lp-tl56605698%_
                      (let () (declare (not safe)) (##cdr _%e56585691%_))))
                 (_%loop56575681%_
                  _%lp-tl56605698%_
                  (cons _%lp-hd56595695%_ _%clause56615688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause56625701%_
                                                            (reverse _%clause56615688%_)))
                                                       ((lambda (_%L5705%_)
                                                          (let* ((_%g57225730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g57235726%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g57235726%_)))
                         (_%g57215752%_
                          (lambda (_%g57235734%_)
                            ((lambda (_%L5737%_)
                               (cons (gx#datum->syntax '#f 'let-values)
                                     (cons (cons (cons (cons _%L5610%_ '())
                                                       (cons _%L5638%_ '()))
                                                 '())
                                           (cons _%L5737%_ '()))))
                             _%g57235734%_))))
                    (_%g57215752%_
                     (gx#stx-wrap-source
                      (cons (gx#datum->syntax '#f 'case-lambda)
                            (foldr (lambda (_%g57555758%_ _%g57565761%_)
                                     (cons _%g57555758%_ _%g57565761%_))
                                   '()
                                   _%L5705%_))
                      (gx#stx-source _%stx5320%_)))))
                _%clause56625701%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop56575681%_
                                        _%target56545675%_
                                        '()))
                                     (_%g56515668%_ _%g56525672%_)))))
                           (_%g56515668%_ _%g56525672%_)))))
               (_%g56505764%_
                (_%generate-opt-dispatch5331%_
                 _%L5610%_
                 _%pre5590%_
                 _%opt5592%_
                 _%tail5593%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g56245635%_))))
                                          (_%g56225768%_
                                           (gx#stx-wrap-source
                                            (_%generate-opt-primary5330%_
                                             _%pre5590%_
                                             _%opt5592%_
                                             _%tail5593%_
                                             _%L5575%_)
                                            (gx#stx-source _%stx5320%_)))))
                                      _%g55965607%_))))
                             (_%g55945772%_ (gx#genident 'opt-lambda))))))))
                  (_%__kont1945319454%_
                   (lambda (_%L5398%_ _%L5400%_)
                     (let* ((_%g54165423%_
                             (lambda (_%g54175419%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g54175419%_)))
                            (_%g54155544%_
                             (lambda (_%g54175427%_)
                               ((lambda ()
                                  (let ((_g20948_
                                         (_%kw-lambda-split5328%_ _%L5400%_)))
                                    (begin
                                      (let ((_g20949_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g20948_)
                                                   (##vector-length _g20948_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g20949_ 3)))
                                            (error "Context expects 3 values"
                                                   _g20949_)))
                                      (let ((_%key5436%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g20948_ 0)))
                                            (_%kwargs5438%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g20948_ 1)))
                                            (_%args5439%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g20948_ 2))))
                                        (let* ((_%g54415449%_
                                                (lambda (_%g54425445%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g54425445%_)))
                                               (_%g54405540%_
                                                (lambda (_%g54425453%_)
                                                  ((lambda (_%L5456%_)
                                                     (let* ((_%g54745482%_
                                                             (lambda (_%g54755478%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g54755478%_)))
                                                            (_%g54735536%_
                                                             (lambda (_%g54755486%_)
                                                               ((lambda (_%L5489%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g55025510%_
                                  (lambda (_%g55035506%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g55035506%_)))
                                 (_%g55015532%_
                                  (lambda (_%g55035514%_)
                                    ((lambda (_%L5517%_)
                                       (cons (gx#datum->syntax '#f 'let-values)
                                             (cons (cons (cons (cons _%L5456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _%L5489%_ '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%L5517%_ '()))))
                                     _%g55035514%_))))
                            (_%g55015532%_
                             (gx#stx-wrap-source
                              (_%generate-kw-dispatch5335%_
                               _%L5456%_
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
                  _%L5398%_)
                 (gx#stx-source _%stx5320%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g54425453%_))))
                                          (_%g54405540%_
                                           (gx#genident 'kw-lambda)))))))))))
                       (_%g54155544%_
                        (_%check-duplicate-bindings5329%_ _%L5400%_))))))
              (let* ((_%__match1949119492%_
                      (lambda (_%e53605378%_
                               _%hd53615382%_
                               _%tl53625385%_
                               _%e53635388%_
                               _%hd53645392%_
                               _%tl53655395%_)
                        (let ((_%L5398%_ _%tl53655395%_)
                              (_%L5400%_ _%hd53645392%_))
                          (if (_%kw-lambda?5327%_ _%L5400%_)
                              (_%__kont1945319454%_ _%L5398%_ _%L5400%_)
                              (let () (declare (not safe)) (_%g53405371%_))))))
                     (_%__match1947919480%_
                      (lambda (_%e53525555%_
                               _%hd53535559%_
                               _%tl53545562%_
                               _%e53555565%_
                               _%hd53565569%_
                               _%tl53575572%_)
                        (let ((_%L5575%_ _%tl53575572%_)
                              (_%L5577%_ _%hd53565569%_))
                          (if (_%opt-lambda?5325%_ _%L5577%_)
                              (_%__kont1945119452%_ _%L5575%_ _%L5577%_)
                              (_%__match1949119492%_
                               _%e53525555%_
                               _%hd53535559%_
                               _%tl53545562%_
                               _%e53555565%_
                               _%hd53565569%_
                               _%tl53575572%_)))))
                     (_%__match1946719468%_
                      (lambda (_%e53445783%_
                               _%hd53455787%_
                               _%tl53465790%_
                               _%e53475793%_
                               _%hd53485797%_
                               _%tl53495800%_)
                        (let ((_%L5803%_ _%tl53495800%_)
                              (_%L5805%_ _%hd53485797%_))
                          (if (_%simple-lambda?5323%_ _%L5805%_)
                              (_%__kont1944919450%_ _%L5803%_ _%L5805%_)
                              (_%__match1947919480%_
                               _%e53445783%_
                               _%hd53455787%_
                               _%tl53465790%_
                               _%e53475793%_
                               _%hd53485797%_
                               _%tl53495800%_))))))
                (if (gx#stx-pair? _%__stx1944619447%_)
                    (let ((_%e53445783%_ (gx#syntax-e _%__stx1944619447%_)))
                      (let ((_%tl53465790%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e53445783%_)))
                            (_%hd53455787%_
                             (let ()
                               (declare (not safe))
                               (##car _%e53445783%_))))
                        (if (gx#stx-pair? _%tl53465790%_)
                            (let ((_%e53475793%_ (gx#syntax-e _%tl53465790%_)))
                              (let ((_%tl53495800%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e53475793%_)))
                                    (_%hd53485797%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e53475793%_))))
                                (_%__match1946719468%_
                                 _%e53445783%_
                                 _%hd53455787%_
                                 _%tl53465790%_
                                 _%e53475793%_
                                 _%hd53485797%_
                                 _%tl53495800%_)))
                            (let () (declare (not safe)) (_%g53405371%_)))))
                    (let () (declare (not safe)) (_%g53405371%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def|
      (lambda (_%$stx8745%_)
        (let* ((_%__stx1949419495%_ _%$stx8745%_)
               (_%g87518815%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1949419495%_))))
          (let ((_%__kont1949719498%_
                 (lambda (_%L9045%_ _%L9047%_ _%L9048%_ _%L9049%_)
                   (cons (gx#datum->syntax '#f 'def)
                         (cons (cons _%L9049%_ _%L9048%_)
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L9047%_
                                                 (foldr (lambda (_%g90719074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g90729077%_)
                  (cons _%g90719074%_ _%g90729077%_))
                '()
                _%L9045%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1950119502%_
                 (lambda (_%L8937%_ _%L8939%_ _%L8940%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L8940%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L8939%_
                                                 (foldr (lambda (_%g89598962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g89608965%_)
                  (cons _%g89598962%_ _%g89608965%_))
                '()
                _%L8937%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1950519506%_
                 (lambda (_%L8852%_ _%L8854%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L8854%_ '()) (cons _%L8852%_ '()))))))
            (let* ((_%__match1958519586%_
                    (lambda (_%e88018822%_
                             _%hd88028826%_
                             _%tl88038829%_
                             _%e88048832%_
                             _%hd88058836%_
                             _%tl88068839%_
                             _%e88078842%_
                             _%hd88088846%_
                             _%tl88098849%_)
                      (let ((_%L8852%_ _%hd88088846%_)
                            (_%L8854%_ _%hd88058836%_))
                        (if (gx#identifier? _%L8854%_)
                            (_%__kont1950519506%_ _%L8852%_ _%L8854%_)
                            (let () (declare (not safe)) (_%g87518815%_))))))
                   (_%__match1957719578%_
                    (lambda (_%e88018822%_
                             _%hd88028826%_
                             _%tl88038829%_
                             _%e88048832%_
                             _%hd88058836%_
                             _%tl88068839%_)
                      (if (gx#stx-pair? _%tl88068839%_)
                          (let ((_%e88078842%_ (gx#syntax-e _%tl88068839%_)))
                            (let ((_%tl88098849%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e88078842%_)))
                                  (_%hd88088846%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e88078842%_))))
                              (if (gx#stx-null? _%tl88098849%_)
                                  (_%__match1958519586%_
                                   _%e88018822%_
                                   _%hd88028826%_
                                   _%tl88038829%_
                                   _%e88048832%_
                                   _%hd88058836%_
                                   _%tl88068839%_
                                   _%e88078842%_
                                   _%hd88088846%_
                                   _%tl88098849%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g87518815%_)))))
                          (let () (declare (not safe)) (_%g87518815%_)))))
                   (_%__match1956519566%_
                    (lambda (_%e87818877%_
                             _%hd87828881%_
                             _%tl87838884%_
                             _%e87848887%_
                             _%hd87858891%_
                             _%tl87868894%_
                             _%e87878897%_
                             _%hd87888901%_
                             _%tl87898904%_
                             _%__splice1950319504%_
                             _%target87908907%_
                             _%tl87928910%_)
                      (letrec ((_%loop87938913%_
                                (lambda (_%hd87918917%_ _%body87978920%_)
                                  (if (gx#stx-pair? _%hd87918917%_)
                                      (let ((_%e87948923%_
                                             (gx#syntax-e _%hd87918917%_)))
                                        (let ((_%lp-tl87968930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e87948923%_)))
                                              (_%lp-hd87958927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e87948923%_))))
                                          (_%loop87938913%_
                                           _%lp-tl87968930%_
                                           (cons _%lp-hd87958927%_
                                                 _%body87978920%_))))
                                      (let ((_%body87988933%_
                                             (reverse _%body87978920%_)))
                                        (let ((_%L8937%_ _%body87988933%_)
                                              (_%L8939%_ _%tl87898904%_)
                                              (_%L8940%_ _%hd87888901%_))
                                          (if (gx#identifier? _%L8940%_)
                                              (_%__kont1950119502%_
                                               _%L8937%_
                                               _%L8939%_
                                               _%L8940%_)
                                              (_%__match1957719578%_
                                               _%e87818877%_
                                               _%hd87828881%_
                                               _%tl87838884%_
                                               _%e87848887%_
                                               _%hd87858891%_
                                               _%tl87868894%_))))))))
                        (_%loop87938913%_ _%target87908907%_ '()))))
                   (_%__match1953919540%_
                    (lambda (_%e87578975%_
                             _%hd87588979%_
                             _%tl87598982%_
                             _%e87608985%_
                             _%hd87618989%_
                             _%tl87628992%_
                             _%e87638995%_
                             _%hd87648999%_
                             _%tl87659002%_
                             _%e87669005%_
                             _%hd87679009%_
                             _%tl87689012%_
                             _%__splice1949919500%_
                             _%target87699015%_
                             _%tl87719018%_)
                      (letrec ((_%loop87729021%_
                                (lambda (_%hd87709025%_ _%body87769028%_)
                                  (if (gx#stx-pair? _%hd87709025%_)
                                      (let ((_%e87739031%_
                                             (gx#syntax-e _%hd87709025%_)))
                                        (let ((_%lp-tl87759038%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e87739031%_)))
                                              (_%lp-hd87749035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e87739031%_))))
                                          (_%loop87729021%_
                                           _%lp-tl87759038%_
                                           (cons _%lp-hd87749035%_
                                                 _%body87769028%_))))
                                      (let ((_%body87779041%_
                                             (reverse _%body87769028%_)))
                                        (_%__kont1949719498%_
                                         _%body87779041%_
                                         _%tl87659002%_
                                         _%tl87689012%_
                                         _%hd87679009%_))))))
                        (_%loop87729021%_ _%target87699015%_ '())))))
              (if (gx#stx-pair? _%__stx1949419495%_)
                  (let ((_%e87578975%_ (gx#syntax-e _%__stx1949419495%_)))
                    (let ((_%tl87598982%_
                           (let () (declare (not safe)) (##cdr _%e87578975%_)))
                          (_%hd87588979%_
                           (let ()
                             (declare (not safe))
                             (##car _%e87578975%_))))
                      (if (gx#stx-pair? _%tl87598982%_)
                          (let ((_%e87608985%_ (gx#syntax-e _%tl87598982%_)))
                            (let ((_%tl87628992%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e87608985%_)))
                                  (_%hd87618989%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e87608985%_))))
                              (if (gx#stx-pair? _%hd87618989%_)
                                  (let ((_%e87638995%_
                                         (gx#syntax-e _%hd87618989%_)))
                                    (let ((_%tl87659002%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e87638995%_)))
                                          (_%hd87648999%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e87638995%_))))
                                      (if (gx#stx-pair? _%hd87648999%_)
                                          (let ((_%e87669005%_
                                                 (gx#syntax-e _%hd87648999%_)))
                                            (let ((_%tl87689012%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e87669005%_)))
                                                  (_%hd87679009%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e87669005%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl87628992%_)
                                                  (let ((_%__splice1949919500%_
                                                         (gx#syntax-split-splice
                                                          _%tl87628992%_
                                                          '0)))
                                                    (let ((_%tl87719018%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1949919500%_
                                                              '1)))
                                                          (_%target87699015%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1949919500%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl87719018%_)
                                                          (_%__match1953919540%_
                                                           _%e87578975%_
                                                           _%hd87588979%_
                                                           _%tl87598982%_
                                                           _%e87608985%_
                                                           _%hd87618989%_
                                                           _%tl87628992%_
                                                           _%e87638995%_
                                                           _%hd87648999%_
                                                           _%tl87659002%_
                                                           _%e87669005%_
                                                           _%hd87679009%_
                                                           _%tl87689012%_
                                                           _%__splice1949919500%_
                                                           _%target87699015%_
                                                           _%tl87719018%_)
                                                          (if (gx#stx-pair?
                                                               _%tl87628992%_)
                                                              (let ((_%e88078842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl87628992%_)))
                        (let ((_%tl88098849%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e88078842%_)))
                              (_%hd88088846%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e88078842%_))))
                          (if (gx#stx-null? _%tl88098849%_)
                              (_%__match1958519586%_
                               _%e87578975%_
                               _%hd87588979%_
                               _%tl87598982%_
                               _%e87608985%_
                               _%hd87618989%_
                               _%tl87628992%_
                               _%e88078842%_
                               _%hd88088846%_
                               _%tl88098849%_)
                              (let () (declare (not safe)) (_%g87518815%_)))))
                      (let () (declare (not safe)) (_%g87518815%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl87628992%_)
                                                      (let ((_%e88078842%_
                                                             (gx#syntax-e
                                                              _%tl87628992%_)))
                                                        (let ((_%tl88098849%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e88078842%_)))
                      (_%hd88088846%_
                       (let () (declare (not safe)) (##car _%e88078842%_))))
                  (if (gx#stx-null? _%tl88098849%_)
                      (_%__match1958519586%_
                       _%e87578975%_
                       _%hd87588979%_
                       _%tl87598982%_
                       _%e87608985%_
                       _%hd87618989%_
                       _%tl87628992%_
                       _%e88078842%_
                       _%hd88088846%_
                       _%tl88098849%_)
                      (let () (declare (not safe)) (_%g87518815%_)))))
              (let () (declare (not safe)) (_%g87518815%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl87628992%_)
                                              (let ((_%__splice1950319504%_
                                                     (gx#syntax-split-splice
                                                      _%tl87628992%_
                                                      '0)))
                                                (let ((_%tl87928910%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1950319504%_
                                                          '1)))
                                                      (_%target87908907%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1950319504%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl87928910%_)
                                                      (_%__match1956519566%_
                                                       _%e87578975%_
                                                       _%hd87588979%_
                                                       _%tl87598982%_
                                                       _%e87608985%_
                                                       _%hd87618989%_
                                                       _%tl87628992%_
                                                       _%e87638995%_
                                                       _%hd87648999%_
                                                       _%tl87659002%_
                                                       _%__splice1950319504%_
                                                       _%target87908907%_
                                                       _%tl87928910%_)
                                                      (if (gx#stx-pair?
                                                           _%tl87628992%_)
                                                          (let ((_%e88078842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl87628992%_)))
                    (let ((_%tl88098849%_
                           (let () (declare (not safe)) (##cdr _%e88078842%_)))
                          (_%hd88088846%_
                           (let ()
                             (declare (not safe))
                             (##car _%e88078842%_))))
                      (if (gx#stx-null? _%tl88098849%_)
                          (_%__match1958519586%_
                           _%e87578975%_
                           _%hd87588979%_
                           _%tl87598982%_
                           _%e87608985%_
                           _%hd87618989%_
                           _%tl87628992%_
                           _%e88078842%_
                           _%hd88088846%_
                           _%tl88098849%_)
                          (let () (declare (not safe)) (_%g87518815%_)))))
                  (let () (declare (not safe)) (_%g87518815%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _%tl87628992%_)
                                                  (let ((_%e88078842%_
                                                         (gx#syntax-e
                                                          _%tl87628992%_)))
                                                    (let ((_%tl88098849%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e88078842%_)))
                                                          (_%hd88088846%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e88078842%_))))
                                                      (if (gx#stx-null?
                                                           _%tl88098849%_)
                                                          (_%__match1958519586%_
                                                           _%e87578975%_
                                                           _%hd87588979%_
                                                           _%tl87598982%_
                                                           _%e87608985%_
                                                           _%hd87618989%_
                                                           _%tl87628992%_
                                                           _%e88078842%_
                                                           _%hd88088846%_
                                                           _%tl88098849%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g87518815%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g87518815%_)))))))
                                  (if (gx#stx-pair? _%tl87628992%_)
                                      (let ((_%e88078842%_
                                             (gx#syntax-e _%tl87628992%_)))
                                        (let ((_%tl88098849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88078842%_)))
                                              (_%hd88088846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88078842%_))))
                                          (if (gx#stx-null? _%tl88098849%_)
                                              (_%__match1958519586%_
                                               _%e87578975%_
                                               _%hd87588979%_
                                               _%tl87598982%_
                                               _%e87608985%_
                                               _%hd87618989%_
                                               _%tl87628992%_
                                               _%e88078842%_
                                               _%hd88088846%_
                                               _%tl88098849%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g87518815%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g87518815%_))))))
                          (let () (declare (not safe)) (_%g87518815%_)))))
                  (let () (declare (not safe)) (_%g87518815%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def*|
      (lambda (_%$stx9086%_)
        (let* ((_%g90909114%_
                (lambda (_%g90919110%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g90919110%_)))
               (_%g90899199%_
                (lambda (_%g90919118%_)
                  (if (gx#stx-pair? _%g90919118%_)
                      (let ((_%e90949121%_ (gx#syntax-e _%g90919118%_)))
                        (let ((_%hd90959125%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e90949121%_)))
                              (_%tl90969128%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e90949121%_))))
                          (if (gx#stx-pair? _%tl90969128%_)
                              (let ((_%e90979131%_
                                     (gx#syntax-e _%tl90969128%_)))
                                (let ((_%hd90989135%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e90979131%_)))
                                      (_%tl90999138%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e90979131%_))))
                                  (if (gx#stx-pair/null? _%tl90999138%_)
                                      (let ((_g20950_
                                             (gx#syntax-split-splice
                                              _%tl90999138%_
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
                                          (let ((_%target91009141%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20950_ 0)))
                                                (_%tl91029144%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20950_ 1))))
                                            (if (gx#stx-null? _%tl91029144%_)
                                                (letrec ((_%loop91039147%_
                                                          (lambda (_%hd91019151%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clauses91079154%_)
                    (if (gx#stx-pair? _%hd91019151%_)
                        (let ((_%e91049157%_ (gx#syntax-e _%hd91019151%_)))
                          (let ((_%lp-hd91059161%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e91049157%_)))
                                (_%lp-tl91069164%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e91049157%_))))
                            (_%loop91039147%_
                             _%lp-tl91069164%_
                             (cons _%lp-hd91059161%_ _%clauses91079154%_))))
                        (let ((_%clauses91089167%_
                               (reverse _%clauses91079154%_)))
                          ((lambda (_%L9171%_ _%L9173%_)
                             (if (gx#identifier? _%L9173%_)
                                 (cons (gx#datum->syntax '#f 'define-values)
                                       (cons (cons _%L9173%_ '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'case-lambda)
                                                         (foldr (lambda (_%g91909193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g91919196%_)
                          (cons _%g91909193%_ _%g91919196%_))
                        '()
                        _%L9171%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 (_%g90909114%_ _%g90919118%_)))
                           _%clauses91089167%_
                           _%hd90989135%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop91039147%_
                                                   _%target91009141%_
                                                   '()))
                                                (_%g90909114%_
                                                 _%g90919118%_)))))
                                      (_%g90909114%_ _%g90919118%_))))
                              (_%g90909114%_ _%g90919118%_))))
                      (_%g90909114%_ _%g90919118%_)))))
          (_%g90899199%_ _%$stx9086%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#defvalues|
      (lambda (_%$stx9204%_)
        (let* ((_%g92089226%_
                (lambda (_%g92099222%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g92099222%_)))
               (_%g92079281%_
                (lambda (_%g92099230%_)
                  (if (gx#stx-pair? _%g92099230%_)
                      (let ((_%e92129233%_ (gx#syntax-e _%g92099230%_)))
                        (let ((_%hd92139237%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e92129233%_)))
                              (_%tl92149240%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e92129233%_))))
                          (if (gx#stx-pair? _%tl92149240%_)
                              (let ((_%e92159243%_
                                     (gx#syntax-e _%tl92149240%_)))
                                (let ((_%hd92169247%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e92159243%_)))
                                      (_%tl92179250%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e92159243%_))))
                                  (if (gx#stx-pair? _%tl92179250%_)
                                      (let ((_%e92189253%_
                                             (gx#syntax-e _%tl92179250%_)))
                                        (let ((_%hd92199257%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e92189253%_)))
                                              (_%tl92209260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e92189253%_))))
                                          (if (gx#stx-null? _%tl92209260%_)
                                              ((lambda (_%L9263%_ _%L9265%_)
                                                 (if (gx#identifier-list?
                                                      _%L9265%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons _%L9265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L9263%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g92089226%_
                                                      _%g92099230%_)))
                                               _%hd92199257%_
                                               _%hd92169247%_)
                                              (_%g92089226%_ _%g92099230%_))))
                                      (_%g92089226%_ _%g92099230%_))))
                              (_%g92089226%_ _%g92099230%_))))
                      (_%g92089226%_ _%g92099230%_)))))
          (_%g92079281%_ _%$stx9204%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#case|
      (lambda (_%$stx9285%_)
        (let* ((_%g92899313%_
                (lambda (_%g92909309%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g92909309%_)))
               (_%g92889398%_
                (lambda (_%g92909317%_)
                  (if (gx#stx-pair? _%g92909317%_)
                      (let ((_%e92939320%_ (gx#syntax-e _%g92909317%_)))
                        (let ((_%hd92949324%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e92939320%_)))
                              (_%tl92959327%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e92939320%_))))
                          (if (gx#stx-pair? _%tl92959327%_)
                              (let ((_%e92969330%_
                                     (gx#syntax-e _%tl92959327%_)))
                                (let ((_%hd92979334%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e92969330%_)))
                                      (_%tl92989337%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e92969330%_))))
                                  (if (gx#stx-pair/null? _%tl92989337%_)
                                      (let ((_g20952_
                                             (gx#syntax-split-splice
                                              _%tl92989337%_
                                              '0)))
                                        (begin
                                          (let ((_g20953_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20952_)
                                                       (##vector-length
                                                        _g20952_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20953_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20953_)))
                                          (let ((_%target92999340%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20952_ 0)))
                                                (_%tl93019343%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20952_ 1))))
                                            (if (gx#stx-null? _%tl93019343%_)
                                                (letrec ((_%loop93029346%_
                                                          (lambda (_%hd93009350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause93069353%_)
                    (if (gx#stx-pair? _%hd93009350%_)
                        (let ((_%e93039356%_ (gx#syntax-e _%hd93009350%_)))
                          (let ((_%lp-hd93049360%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e93039356%_)))
                                (_%lp-tl93059363%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e93039356%_))))
                            (_%loop93029346%_
                             _%lp-tl93059363%_
                             (cons _%lp-hd93049360%_ _%clause93069353%_))))
                        (let ((_%clause93079366%_
                               (reverse _%clause93069353%_)))
                          ((lambda (_%L9370%_ _%L9372%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (gx#datum->syntax '#f '$e)
                                               (cons _%L9372%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '~case)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$e)
                                                           (foldr (lambda (_%g93899392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g93909395%_)
                            (cons _%g93899392%_ _%g93909395%_))
                          '()
                          _%L9370%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%clause93079366%_
                           _%hd92979334%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop93029346%_
                                                   _%target92999340%_
                                                   '()))
                                                (_%g92899313%_
                                                 _%g92909317%_)))))
                                      (_%g92899313%_ _%g92909317%_))))
                              (_%g92899313%_ _%g92909317%_))))
                      (_%g92899313%_ _%g92909317%_)))))
          (_%g92889398%_ _%$stx9285%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case|
      (lambda (_%stx9403%_)
        (letrec ((_%parse-clauses9406%_
                  (lambda (_%e11881%_ _%clauses11883%_)
                    (let _%lp11885%_ ((_%rest11888%_ _%clauses11883%_)
                                      (_%datums11890%_ '())
                                      (_%dispatch11891%_ '())
                                      (_%default11892%_ '#f))
                      (let* ((_%__stx1968419685%_ _%rest11888%_)
                             (_%g1189511907%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1968419685%_))))
                        (let ((_%__kont1968719688%_
                               (lambda (_%L11939%_ _%L11941%_)
                                 (let* ((_%__stx1958819589%_ _%L11941%_)
                                        (_%g1195912032%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1958819589%_))))
                                   (let ((_%__kont1959119592%_
                                          (lambda (_%L12397%_)
                                            (if (gx#stx-null? _%L11939%_)
                                                (let* ((_%g1241212420%_
                                                        (lambda (_%g1241312416%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1241312416%_)))
                                                       (_%g1241112439%_
                                                        (lambda (_%g1241312424%_)
                                                          ((lambda (_%L12427%_)
                                                             (_%lp11885%_
                                                              '()
                                                              _%datums11890%_
                                                              _%dispatch11891%_
                                                              (cons _%L12397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L12427%_ '()))))
                   _%g1241312424%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1241112439%_ _%e11881%_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9403%_
                                                 _%L11941%_))))
                                         (_%__kont1959319594%_
                                          (lambda (_%L12337%_)
                                            (if (gx#stx-null? _%L11939%_)
                                                (_%lp11885%_
                                                 '()
                                                 _%datums11890%_
                                                 _%dispatch11891%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1235112354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1235212357%_)
                        (cons _%g1235112354%_ _%g1235212357%_))
                      '()
                      _%L12337%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9403%_
                                                 _%L11941%_))))
                                         (_%__kont1959719598%_
                                          (lambda (_%L12222%_ _%L12224%_)
                                            (if (null? (foldr (lambda (_%g1224212245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1224312248%_)
                        (cons _%g1224212245%_ _%g1224312248%_))
                      '()
                      _%L12224%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp11885%_
                                                 _%L11939%_
                                                 _%datums11890%_
                                                 _%dispatch11891%_
                                                 _%default11892%_)
                                                (let* ((_%g1225112259%_
                                                        (lambda (_%g1225212255%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1225212255%_)))
                                                       (_%g1225012286%_
                                                        (lambda (_%g1225212263%_)
                                                          ((lambda (_%L12266%_)
                                                             (_%lp11885%_
                                                              _%L11939%_
                                                              (cons (map gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (foldr (lambda (_%g1227712280%_
                                                 _%g1227812283%_)
                                          (cons _%g1227712280%_
                                                _%g1227812283%_))
                                        '()
                                        _%L12224%_))
                            _%datums11890%_)
                      (cons (cons _%L12222%_ (cons _%L12266%_ '()))
                            _%dispatch11891%_)
                      _%default11892%_))
                   _%g1225212263%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1225012286%_
                                                   _%e11881%_)))))
                                         (_%__kont1960119602%_
                                          (lambda (_%L12109%_ _%L12111%_)
                                            (if (null? (foldr (lambda (_%g1213012133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1213112136%_)
                        (cons _%g1213012133%_ _%g1213112136%_))
                      '()
                      _%L12111%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp11885%_
                                                 _%L11939%_
                                                 _%datums11890%_
                                                 _%dispatch11891%_
                                                 _%default11892%_)
                                                (_%lp11885%_
                                                 _%L11939%_
                                                 (cons (map gx#stx-e
                                                            (foldr (lambda (_%g1213812141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1213912144%_)
                             (cons _%g1213812141%_ _%g1213912144%_))
                           '()
                           _%L12111%_))
               _%datums11890%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (foldr (lambda (_%g1214612149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1214712152%_)
                              (cons _%g1214612149%_ _%g1214712152%_))
                            '()
                            _%L12109%_))
               _%dispatch11891%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%default11892%_)))))
                                     (let* ((_%__match1968119682%_
                                             (lambda (_%e1200612039%_
                                                      _%hd1200712043%_
                                                      _%tl1200812046%_
                                                      _%__splice1960319604%_
                                                      _%target1200912049%_
                                                      _%tl1201112052%_)
                                               (letrec ((_%loop1201212055%_
                                                         (lambda (_%hd1201012059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1201612062%_)
                   (if (gx#stx-pair? _%hd1201012059%_)
                       (let ((_%e1201312065%_ (gx#syntax-e _%hd1201012059%_)))
                         (let ((_%lp-tl1201512072%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1201312065%_)))
                               (_%lp-hd1201412069%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1201312065%_))))
                           (_%loop1201212055%_
                            _%lp-tl1201512072%_
                            (cons _%lp-hd1201412069%_ _%datum1201612062%_))))
                       (let ((_%datum1201712075%_
                              (reverse _%datum1201612062%_)))
                         (if (gx#stx-pair/null? _%tl1200812046%_)
                             (let ((_%__splice1960519606%_
                                    (gx#syntax-split-splice
                                     _%tl1200812046%_
                                     '0)))
                               (let ((_%tl1202012082%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1960519606%_
                                         '1)))
                                     (_%target1201812079%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1960519606%_
                                         '0))))
                                 (if (gx#stx-null? _%tl1202012082%_)
                                     (letrec ((_%loop1202112085%_
                                               (lambda (_%hd1201912089%_
                                                        _%body1202512092%_)
                                                 (if (gx#stx-pair?
                                                      _%hd1201912089%_)
                                                     (let ((_%e1202212095%_
                                                            (gx#syntax-e
                                                             _%hd1201912089%_)))
                                                       (let ((_%lp-tl1202412102%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e1202212095%_)))
                     (_%lp-hd1202312099%_
                      (let () (declare (not safe)) (##car _%e1202212095%_))))
                 (_%loop1202112085%_
                  _%lp-tl1202412102%_
                  (cons _%lp-hd1202312099%_ _%body1202512092%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%body1202612105%_
                                                            (reverse _%body1202512092%_)))
                                                       (_%__kont1960119602%_
                                                        _%body1202612105%_
                                                        _%datum1201712075%_))))))
                                       (_%loop1202112085%_
                                        _%target1201812079%_
                                        '()))
                                     (let ()
                                       (declare (not safe))
                                       (_%g1195912032%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g1195912032%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1201212055%_
                                                  _%target1200912049%_
                                                  '()))))
                                            (_%__match1966719668%_
                                             (lambda (_%e1198612162%_
                                                      _%hd1198712166%_
                                                      _%tl1198812169%_
                                                      _%__splice1959919600%_
                                                      _%target1198912172%_
                                                      _%tl1199112175%_)
                                               (letrec ((_%loop1199212178%_
                                                         (lambda (_%hd1199012182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1199612185%_)
                   (if (gx#stx-pair? _%hd1199012182%_)
                       (let ((_%e1199312188%_ (gx#syntax-e _%hd1199012182%_)))
                         (let ((_%lp-tl1199512195%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1199312188%_)))
                               (_%lp-hd1199412192%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1199312188%_))))
                           (_%loop1199212178%_
                            _%lp-tl1199512195%_
                            (cons _%lp-hd1199412192%_ _%datum1199612185%_))))
                       (let ((_%datum1199712198%_
                              (reverse _%datum1199612185%_)))
                         (if (gx#stx-pair? _%tl1198812169%_)
                             (let ((_%e1199812202%_
                                    (gx#syntax-e _%tl1198812169%_)))
                               (let ((_%tl1200012209%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1199812202%_)))
                                     (_%hd1199912206%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1199812202%_))))
                                 (if (gx#identifier? _%hd1199912206%_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core/sugar~Sugar-2[1]#_g20954_|
                                          _%hd1199912206%_)
                                         (if (gx#stx-pair? _%tl1200012209%_)
                                             (let ((_%e1200112212%_
                                                    (gx#syntax-e
                                                     _%tl1200012209%_)))
                                               (let ((_%tl1200312219%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1200112212%_)))
                                                     (_%hd1200212216%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1200112212%_))))
                                                 (if (gx#stx-null?
                                                      _%tl1200312219%_)
                                                     (_%__kont1959719598%_
                                                      _%hd1200212216%_
                                                      _%datum1199712198%_)
                                                     (_%__match1968119682%_
                                                      _%e1198612162%_
                                                      _%hd1198712166%_
                                                      _%tl1198812169%_
                                                      _%__splice1959919600%_
                                                      _%target1198912172%_
                                                      _%tl1199112175%_))))
                                             (_%__match1968119682%_
                                              _%e1198612162%_
                                              _%hd1198712166%_
                                              _%tl1198812169%_
                                              _%__splice1959919600%_
                                              _%target1198912172%_
                                              _%tl1199112175%_))
                                         (_%__match1968119682%_
                                          _%e1198612162%_
                                          _%hd1198712166%_
                                          _%tl1198812169%_
                                          _%__splice1959919600%_
                                          _%target1198912172%_
                                          _%tl1199112175%_))
                                     (_%__match1968119682%_
                                      _%e1198612162%_
                                      _%hd1198712166%_
                                      _%tl1198812169%_
                                      _%__splice1959919600%_
                                      _%target1198912172%_
                                      _%tl1199112175%_))))
                             (_%__match1968119682%_
                              _%e1198612162%_
                              _%hd1198712166%_
                              _%tl1198812169%_
                              _%__splice1959919600%_
                              _%target1198912172%_
                              _%tl1199112175%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1199212178%_
                                                  _%target1198912172%_
                                                  '()))))
                                            (_%__match1965319654%_
                                             (lambda (_%e1197212297%_
                                                      _%hd1197312301%_
                                                      _%tl1197412304%_
                                                      _%__splice1959519596%_
                                                      _%target1197512307%_
                                                      _%tl1197712310%_)
                                               (letrec ((_%loop1197812313%_
                                                         (lambda (_%hd1197612317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body1198212320%_)
                   (if (gx#stx-pair? _%hd1197612317%_)
                       (let ((_%e1197912323%_ (gx#syntax-e _%hd1197612317%_)))
                         (let ((_%lp-tl1198112330%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1197912323%_)))
                               (_%lp-hd1198012327%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1197912323%_))))
                           (_%loop1197812313%_
                            _%lp-tl1198112330%_
                            (cons _%lp-hd1198012327%_ _%body1198212320%_))))
                       (let ((_%body1198312333%_ (reverse _%body1198212320%_)))
                         (_%__kont1959319594%_ _%body1198312333%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1197812313%_
                                                  _%target1197512307%_
                                                  '())))))
                                       (if (gx#stx-pair? _%__stx1958819589%_)
                                           (let ((_%e1196212367%_
                                                  (gx#syntax-e
                                                   _%__stx1958819589%_)))
                                             (let ((_%tl1196412374%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e1196212367%_)))
                                                   (_%hd1196312371%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e1196212367%_))))
                                               (if (gx#identifier?
                                                    _%hd1196312371%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/sugar~Sugar-2[1]#_g20955_|
                                                        _%hd1196312371%_)
                                                       (if (gx#stx-pair?
                                                            _%tl1196412374%_)
                                                           (let ((_%e1196512377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl1196412374%_)))
                     (let ((_%tl1196712384%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1196512377%_)))
                           (_%hd1196612381%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1196512377%_))))
                       (if (gx#identifier? _%hd1196612381%_)
                           (if (gx#free-identifier=?
                                |gerbil/core/sugar~Sugar-2[1]#_g20956_|
                                _%hd1196612381%_)
                               (if (gx#stx-pair? _%tl1196712384%_)
                                   (let ((_%e1196812387%_
                                          (gx#syntax-e _%tl1196712384%_)))
                                     (let ((_%tl1197012394%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e1196812387%_)))
                                           (_%hd1196912391%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e1196812387%_))))
                                       (if (gx#stx-null? _%tl1197012394%_)
                                           (_%__kont1959119592%_
                                            _%hd1196912391%_)
                                           (if (gx#stx-pair/null?
                                                _%tl1196412374%_)
                                               (let ((_%__splice1959519596%_
                                                      (gx#syntax-split-splice
                                                       _%tl1196412374%_
                                                       '0)))
                                                 (let ((_%tl1197712310%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1959519596%_
                                                           '1)))
                                                       (_%target1197512307%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1959519596%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1197712310%_)
                                                       (_%__match1965319654%_
                                                        _%e1196212367%_
                                                        _%hd1196312371%_
                                                        _%tl1196412374%_
                                                        _%__splice1959519596%_
                                                        _%target1197512307%_
                                                        _%tl1197712310%_)
                                                       (if (gx#stx-pair/null?
                                                            _%hd1196312371%_)
                                                           (let ((_%__splice1959919600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%hd1196312371%_ '0)))
                     (let ((_%tl1199112175%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1959919600%_ '1)))
                           (_%target1198912172%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1959919600%_ '0))))
                       (if (gx#stx-null? _%tl1199112175%_)
                           (_%__match1966719668%_
                            _%e1196212367%_
                            _%hd1196312371%_
                            _%tl1196412374%_
                            _%__splice1959919600%_
                            _%target1198912172%_
                            _%tl1199112175%_)
                           (let () (declare (not safe)) (_%g1195912032%_)))))
                   (let () (declare (not safe)) (_%g1195912032%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _%hd1196312371%_)
                                                   (let ((_%__splice1959919600%_
                                                          (gx#syntax-split-splice
                                                           _%hd1196312371%_
                                                           '0)))
                                                     (let ((_%tl1199112175%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1959919600%_
                                                               '1)))
                                                           (_%target1198912172%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1959919600%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1199112175%_)
                                                           (_%__match1966719668%_
                                                            _%e1196212367%_
                                                            _%hd1196312371%_
                                                            _%tl1196412374%_
                                                            _%__splice1959919600%_
                                                            _%target1198912172%_
                                                            _%tl1199112175%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1195912032%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1195912032%_)))))))
                                   (if (gx#stx-pair/null? _%tl1196412374%_)
                                       (let ((_%__splice1959519596%_
                                              (gx#syntax-split-splice
                                               _%tl1196412374%_
                                               '0)))
                                         (let ((_%tl1197712310%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1959519596%_
                                                   '1)))
                                               (_%target1197512307%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1959519596%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1197712310%_)
                                               (_%__match1965319654%_
                                                _%e1196212367%_
                                                _%hd1196312371%_
                                                _%tl1196412374%_
                                                _%__splice1959519596%_
                                                _%target1197512307%_
                                                _%tl1197712310%_)
                                               (if (gx#stx-pair/null?
                                                    _%hd1196312371%_)
                                                   (let ((_%__splice1959919600%_
                                                          (gx#syntax-split-splice
                                                           _%hd1196312371%_
                                                           '0)))
                                                     (let ((_%tl1199112175%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1959919600%_
                                                               '1)))
                                                           (_%target1198912172%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1959919600%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1199112175%_)
                                                           (_%__match1966719668%_
                                                            _%e1196212367%_
                                                            _%hd1196312371%_
                                                            _%tl1196412374%_
                                                            _%__splice1959919600%_
                                                            _%target1198912172%_
                                                            _%tl1199112175%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1195912032%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1195912032%_))))))
                                       (if (gx#stx-pair/null? _%hd1196312371%_)
                                           (let ((_%__splice1959919600%_
                                                  (gx#syntax-split-splice
                                                   _%hd1196312371%_
                                                   '0)))
                                             (let ((_%tl1199112175%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1959919600%_
                                                       '1)))
                                                   (_%target1198912172%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1959919600%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1199112175%_)
                                                   (_%__match1966719668%_
                                                    _%e1196212367%_
                                                    _%hd1196312371%_
                                                    _%tl1196412374%_
                                                    _%__splice1959919600%_
                                                    _%target1198912172%_
                                                    _%tl1199112175%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1195912032%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1195912032%_)))))
                               (if (gx#stx-pair/null? _%tl1196412374%_)
                                   (let ((_%__splice1959519596%_
                                          (gx#syntax-split-splice
                                           _%tl1196412374%_
                                           '0)))
                                     (let ((_%tl1197712310%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1959519596%_
                                               '1)))
                                           (_%target1197512307%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1959519596%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1197712310%_)
                                           (_%__match1965319654%_
                                            _%e1196212367%_
                                            _%hd1196312371%_
                                            _%tl1196412374%_
                                            _%__splice1959519596%_
                                            _%target1197512307%_
                                            _%tl1197712310%_)
                                           (if (gx#stx-pair/null?
                                                _%hd1196312371%_)
                                               (let ((_%__splice1959919600%_
                                                      (gx#syntax-split-splice
                                                       _%hd1196312371%_
                                                       '0)))
                                                 (let ((_%tl1199112175%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1959919600%_
                                                           '1)))
                                                       (_%target1198912172%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1959919600%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1199112175%_)
                                                       (_%__match1966719668%_
                                                        _%e1196212367%_
                                                        _%hd1196312371%_
                                                        _%tl1196412374%_
                                                        _%__splice1959919600%_
                                                        _%target1198912172%_
                                                        _%tl1199112175%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g1195912032%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1195912032%_))))))
                                   (if (gx#stx-pair/null? _%hd1196312371%_)
                                       (let ((_%__splice1959919600%_
                                              (gx#syntax-split-splice
                                               _%hd1196312371%_
                                               '0)))
                                         (let ((_%tl1199112175%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1959919600%_
                                                   '1)))
                                               (_%target1198912172%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1959919600%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1199112175%_)
                                               (_%__match1966719668%_
                                                _%e1196212367%_
                                                _%hd1196312371%_
                                                _%tl1196412374%_
                                                _%__splice1959919600%_
                                                _%target1198912172%_
                                                _%tl1199112175%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1195912032%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g1195912032%_)))))
                           (if (gx#stx-pair/null? _%tl1196412374%_)
                               (let ((_%__splice1959519596%_
                                      (gx#syntax-split-splice
                                       _%tl1196412374%_
                                       '0)))
                                 (let ((_%tl1197712310%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1959519596%_
                                           '1)))
                                       (_%target1197512307%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1959519596%_
                                           '0))))
                                   (if (gx#stx-null? _%tl1197712310%_)
                                       (_%__match1965319654%_
                                        _%e1196212367%_
                                        _%hd1196312371%_
                                        _%tl1196412374%_
                                        _%__splice1959519596%_
                                        _%target1197512307%_
                                        _%tl1197712310%_)
                                       (if (gx#stx-pair/null? _%hd1196312371%_)
                                           (let ((_%__splice1959919600%_
                                                  (gx#syntax-split-splice
                                                   _%hd1196312371%_
                                                   '0)))
                                             (let ((_%tl1199112175%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1959919600%_
                                                       '1)))
                                                   (_%target1198912172%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1959919600%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1199112175%_)
                                                   (_%__match1966719668%_
                                                    _%e1196212367%_
                                                    _%hd1196312371%_
                                                    _%tl1196412374%_
                                                    _%__splice1959919600%_
                                                    _%target1198912172%_
                                                    _%tl1199112175%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1195912032%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1195912032%_))))))
                               (if (gx#stx-pair/null? _%hd1196312371%_)
                                   (let ((_%__splice1959919600%_
                                          (gx#syntax-split-splice
                                           _%hd1196312371%_
                                           '0)))
                                     (let ((_%tl1199112175%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1959919600%_
                                               '1)))
                                           (_%target1198912172%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1959919600%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1199112175%_)
                                           (_%__match1966719668%_
                                            _%e1196212367%_
                                            _%hd1196312371%_
                                            _%tl1196412374%_
                                            _%__splice1959919600%_
                                            _%target1198912172%_
                                            _%tl1199112175%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1195912032%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1195912032%_)))))))
                   (if (gx#stx-pair/null? _%tl1196412374%_)
                       (let ((_%__splice1959519596%_
                              (gx#syntax-split-splice _%tl1196412374%_ '0)))
                         (let ((_%tl1197712310%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1959519596%_ '1)))
                               (_%target1197512307%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1959519596%_ '0))))
                           (if (gx#stx-null? _%tl1197712310%_)
                               (_%__match1965319654%_
                                _%e1196212367%_
                                _%hd1196312371%_
                                _%tl1196412374%_
                                _%__splice1959519596%_
                                _%target1197512307%_
                                _%tl1197712310%_)
                               (if (gx#stx-pair/null? _%hd1196312371%_)
                                   (let ((_%__splice1959919600%_
                                          (gx#syntax-split-splice
                                           _%hd1196312371%_
                                           '0)))
                                     (let ((_%tl1199112175%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1959919600%_
                                               '1)))
                                           (_%target1198912172%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1959919600%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1199112175%_)
                                           (_%__match1966719668%_
                                            _%e1196212367%_
                                            _%hd1196312371%_
                                            _%tl1196412374%_
                                            _%__splice1959919600%_
                                            _%target1198912172%_
                                            _%tl1199112175%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1195912032%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1195912032%_))))))
                       (if (gx#stx-pair/null? _%hd1196312371%_)
                           (let ((_%__splice1959919600%_
                                  (gx#syntax-split-splice
                                   _%hd1196312371%_
                                   '0)))
                             (let ((_%tl1199112175%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1959919600%_
                                       '1)))
                                   (_%target1198912172%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1959919600%_
                                       '0))))
                               (if (gx#stx-null? _%tl1199112175%_)
                                   (_%__match1966719668%_
                                    _%e1196212367%_
                                    _%hd1196312371%_
                                    _%tl1196412374%_
                                    _%__splice1959919600%_
                                    _%target1198912172%_
                                    _%tl1199112175%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g1195912032%_)))))
                           (let () (declare (not safe)) (_%g1195912032%_)))))
               (if (gx#stx-pair/null? _%hd1196312371%_)
                   (let ((_%__splice1959919600%_
                          (gx#syntax-split-splice _%hd1196312371%_ '0)))
                     (let ((_%tl1199112175%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1959919600%_ '1)))
                           (_%target1198912172%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1959919600%_ '0))))
                       (if (gx#stx-null? _%tl1199112175%_)
                           (_%__match1966719668%_
                            _%e1196212367%_
                            _%hd1196312371%_
                            _%tl1196412374%_
                            _%__splice1959919600%_
                            _%target1198912172%_
                            _%tl1199112175%_)
                           (let () (declare (not safe)) (_%g1195912032%_)))))
                   (let () (declare (not safe)) (_%g1195912032%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%hd1196312371%_)
                                                       (let ((_%__splice1959919600%_
                                                              (gx#syntax-split-splice
                                                               _%hd1196312371%_
                                                               '0)))
                                                         (let ((_%tl1199112175%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice1959919600%_ '1)))
                       (_%target1198912172%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice1959919600%_ '0))))
                   (if (gx#stx-null? _%tl1199112175%_)
                       (_%__match1966719668%_
                        _%e1196212367%_
                        _%hd1196312371%_
                        _%tl1196412374%_
                        _%__splice1959919600%_
                        _%target1198912172%_
                        _%tl1199112175%_)
                       (let () (declare (not safe)) (_%g1195912032%_)))))
               (let () (declare (not safe)) (_%g1195912032%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_%g1195912032%_))))))))
                              (_%__kont1968919690%_
                               (lambda ()
                                 (_%check-duplicate-datums9408%_
                                  _%datums11890%_)
                                 (values (reverse _%datums11890%_)
                                         (reverse _%dispatch11891%_)
                                         (let ((_%$e11918%_ _%default11892%_))
                                           (if _%$e11918%_
                                               _%$e11918%_
                                               '#!void))))))
                          (let ((_%g1189411922%_
                                 (lambda ()
                                   (if (gx#stx-null? _%__stx1968419685%_)
                                       (_%__kont1968919690%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g1189511907%_))))))
                            (if (gx#stx-pair? _%__stx1968419685%_)
                                (let ((_%e1189911929%_
                                       (gx#syntax-e _%__stx1968419685%_)))
                                  (let ((_%tl1190111936%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1189911929%_)))
                                        (_%hd1190011933%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1189911929%_))))
                                    (_%__kont1968719688%_
                                     _%tl1190111936%_
                                     _%hd1190011933%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g1189411922%_)))))))))
                 (_%check-duplicate-datums9408%_
                  (lambda (_%datums11869%_)
                    (let ((_%ht11872%_ (make-hash-table)))
                      (for-each
                       (lambda (_%lst11875%_)
                         (for-each
                          (lambda (_%datum11878%_)
                            (if (hash-get _%ht11872%_ _%datum11878%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _%stx9403%_
                                 _%datum11878%_)
                                (hash-put! _%ht11872%_ _%datum11878%_ '#t)))
                          _%lst11875%_))
                       _%datums11869%_))))
                 (_%count-datums9409%_
                  (lambda (_%datums11862%_)
                    (foldl (lambda (_%lst11865%_ _%r11867%_)
                             (+ (length _%lst11865%_) _%r11867%_))
                           '0
                           _%datums11862%_)))
                 (_%symbolic-datums?9410%_
                  (lambda (_%datums11856%_)
                    (andmap (lambda (_%lst11859%_)
                              (andmap symbol? _%lst11859%_))
                            _%datums11856%_)))
                 (_%char-datums?9411%_
                  (lambda (_%datums11850%_)
                    (andmap (lambda (_%lst11853%_) (andmap char? _%lst11853%_))
                            _%datums11850%_)))
                 (_%fixnum-datums?9412%_
                  (lambda (_%datums11844%_)
                    (andmap (lambda (_%lst11847%_)
                              (andmap fixnum? _%lst11847%_))
                            _%datums11844%_)))
                 (_%eq-datums?9413%_
                  (lambda (_%datums11827%_)
                    (andmap (lambda (_%lst11830%_)
                              (andmap (lambda (_%x11833%_)
                                        (let ((_%$e11836%_
                                               (symbol? _%x11833%_)))
                                          (if _%$e11836%_
                                              _%$e11836%_
                                              (let ((_%$e11840%_
                                                     (keyword? _%x11833%_)))
                                                (if _%$e11840%_
                                                    _%$e11840%_
                                                    (immediate?
                                                     _%x11833%_))))))
                                      _%lst11830%_))
                            _%datums11827%_)))
                 (_%generate-simple-case9414%_
                  (lambda (_%e11591%_
                           _%datums11593%_
                           _%dispatch11594%_
                           _%default11595%_)
                    (let* ((_%g1159711605%_
                            (lambda (_%g1159811601%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1159811601%_)))
                           (_%g1159611823%_
                            (lambda (_%g1159811609%_)
                              ((lambda (_%L11612%_)
                                 (let _%recur11624%_ ((_%datums11627%_
                                                       _%datums11593%_)
                                                      (_%dispatch11629%_
                                                       _%dispatch11594%_))
                                   (let* ((_%__stx1970219703%_ _%datums11627%_)
                                          (_%g1163211653%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx1970219703%_))))
                                     (let ((_%__kont1970519706%_
                                            (lambda (_%L11711%_ _%L11713%_)
                                              (let* ((_%g1173311745%_
                                                      (lambda (_%g1173411741%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1173411741%_)))
                                                     (_%g1173211815%_
                                                      (lambda (_%g1173411749%_)
                                                        (if (gx#stx-pair?
                                                             _%g1173411749%_)
                                                            (let ((_%e1173711752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%g1173411749%_)))
                      (let ((_%hd1173811756%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1173711752%_)))
                            (_%tl1173911759%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1173711752%_))))
                        ((lambda (_%L11762%_ _%L11764%_)
                           (let* ((_%g1177611784%_
                                   (lambda (_%g1177711780%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g1177711780%_)))
                                  (_%g1177511811%_
                                   (lambda (_%g1177711788%_)
                                     ((lambda (_%L11791%_)
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'or)
                                                          (foldr (lambda (_%g1180211805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g1180311808%_)
                           (cons (cons (gx#datum->syntax '#f '~case-test)
                                       (cons _%g1180211805%_
                                             (cons _%L11612%_ '())))
                                 _%g1180311808%_))
                         '()
                         _%L11713%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L11764%_
                                                          (cons _%L11791%_
                                                                '())))))
                                      _%g1177711788%_))))
                             (_%g1177511811%_
                              (_%recur11624%_ _%L11711%_ _%L11762%_))))
                         _%tl1173911759%_
                         _%hd1173811756%_)))
                    (_%g1173311745%_ _%g1173411749%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1173211815%_
                                                 _%dispatch11629%_))))
                                           (_%__kont1970919710%_
                                            (lambda () _%default11595%_)))
                                       (let ((_%__match1972519726%_
                                              (lambda (_%e1163611671%_
                                                       _%hd1163711675%_
                                                       _%tl1163811678%_
                                                       _%__splice1970719708%_
                                                       _%target1163911681%_
                                                       _%tl1164111684%_)
                                                (letrec ((_%loop1164211687%_
                                                          (lambda (_%hd1164011691%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%datum1164611694%_)
                    (if (gx#stx-pair? _%hd1164011691%_)
                        (let ((_%e1164311697%_ (gx#syntax-e _%hd1164011691%_)))
                          (let ((_%lp-tl1164511704%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1164311697%_)))
                                (_%lp-hd1164411701%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1164311697%_))))
                            (_%loop1164211687%_
                             _%lp-tl1164511704%_
                             (cons _%lp-hd1164411701%_ _%datum1164611694%_))))
                        (let ((_%datum1164711707%_
                               (reverse _%datum1164611694%_)))
                          (_%__kont1970519706%_
                           _%tl1163811678%_
                           _%datum1164711707%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1164211687%_
                                                   _%target1163911681%_
                                                   '())))))
                                         (if (gx#stx-pair? _%__stx1970219703%_)
                                             (let ((_%e1163611671%_
                                                    (gx#syntax-e
                                                     _%__stx1970219703%_)))
                                               (let ((_%tl1163811678%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1163611671%_)))
                                                     (_%hd1163711675%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1163611671%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%hd1163711675%_)
                                                     (let ((_%__splice1970719708%_
                                                            (gx#syntax-split-splice
                                                             _%hd1163711675%_
                                                             '0)))
                                                       (let ((_%tl1164111684%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice1970719708%_ '1)))
                     (_%target1163911681%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice1970719708%_ '0))))
                 (if (gx#stx-null? _%tl1164111684%_)
                     (_%__match1972519726%_
                      _%e1163611671%_
                      _%hd1163711675%_
                      _%tl1163811678%_
                      _%__splice1970719708%_
                      _%target1163911681%_
                      _%tl1164111684%_)
                     (_%__kont1970919710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont1970919710%_))))
                                             (_%__kont1970919710%_)))))))
                               _%g1159811609%_))))
                      (_%g1159611823%_ _%e11591%_))))
                 (_%datum-dispatch-index9415%_
                  (lambda (_%datums11463%_)
                    (let _%lp11466%_ ((_%rest11469%_ _%datums11463%_)
                                      (_%ix11471%_ '0)
                                      (_%r11472%_ '()))
                      (let* ((_%__stx1972819729%_ _%rest11469%_)
                             (_%g1147511496%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1972819729%_))))
                        (let ((_%__kont1973119732%_
                               (lambda (_%L11554%_ _%L11556%_)
                                 (_%lp11466%_
                                  _%L11554%_
                                  (fx1+ _%ix11471%_)
                                  (foldl (lambda (_%x11575%_ _%r11577%_)
                                           (cons (cons _%x11575%_ _%ix11471%_)
                                                 _%r11577%_))
                                         _%r11472%_
                                         (foldr (lambda (_%g1157811581%_
                                                         _%g1157911584%_)
                                                  (cons _%g1157811581%_
                                                        _%g1157911584%_))
                                                '()
                                                _%L11556%_)))))
                              (_%__kont1973519736%_ (lambda () _%r11472%_)))
                          (let ((_%__match1975119752%_
                                 (lambda (_%e1147911514%_
                                          _%hd1148011518%_
                                          _%tl1148111521%_
                                          _%__splice1973319734%_
                                          _%target1148211524%_
                                          _%tl1148411527%_)
                                   (letrec ((_%loop1148511530%_
                                             (lambda (_%hd1148311534%_
                                                      _%datum1148911537%_)
                                               (if (gx#stx-pair?
                                                    _%hd1148311534%_)
                                                   (let ((_%e1148611540%_
                                                          (gx#syntax-e
                                                           _%hd1148311534%_)))
                                                     (let ((_%lp-tl1148811547%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e1148611540%_)))
                                                           (_%lp-hd1148711544%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e1148611540%_))))
                                                       (_%loop1148511530%_
                                                        _%lp-tl1148811547%_
                                                        (cons _%lp-hd1148711544%_
                                                              _%datum1148911537%_))))
                                                   (let ((_%datum1149011550%_
                                                          (reverse _%datum1148911537%_)))
                                                     (_%__kont1973119732%_
                                                      _%tl1148111521%_
                                                      _%datum1149011550%_))))))
                                     (_%loop1148511530%_
                                      _%target1148211524%_
                                      '())))))
                            (if (gx#stx-pair? _%__stx1972819729%_)
                                (let ((_%e1147911514%_
                                       (gx#syntax-e _%__stx1972819729%_)))
                                  (let ((_%tl1148111521%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1147911514%_)))
                                        (_%hd1148011518%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1147911514%_))))
                                    (if (gx#stx-pair/null? _%hd1148011518%_)
                                        (let ((_%__splice1973319734%_
                                               (gx#syntax-split-splice
                                                _%hd1148011518%_
                                                '0)))
                                          (let ((_%tl1148411527%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1973319734%_
                                                    '1)))
                                                (_%target1148211524%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1973319734%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1148411527%_)
                                                (_%__match1975119752%_
                                                 _%e1147911514%_
                                                 _%hd1148011518%_
                                                 _%tl1148111521%_
                                                 _%__splice1973319734%_
                                                 _%target1148211524%_
                                                 _%tl1148411527%_)
                                                (_%__kont1973519736%_))))
                                        (_%__kont1973519736%_))))
                                (_%__kont1973519736%_))))))))
                 (_%duplicate-indexes?9416%_
                  (lambda (_%xs11444%_)
                    (let ((_%ht11447%_ (make-hash-table-eq)))
                      (let _%lp11450%_ ((_%rest11453%_ _%xs11444%_))
                        (if (pair? _%rest11453%_)
                            (let* ((_%ix11456%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest11453%_)))
                                   (_%$e11459%_
                                    (hash-get _%ht11447%_ _%ix11456%_)))
                              (if _%$e11459%_
                                  _%$e11459%_
                                  (begin
                                    (hash-put! _%ht11447%_ _%ix11456%_ '#t)
                                    (_%lp11450%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest11453%_))))))
                            '#f)))))
                 (_%generate-hash-dispatch-table9417%_
                  (lambda (_%indexes11413%_ _%hash-e11415%_)
                    (let _%lp11417%_ ((_%len11420%_
                                       (* '2 (length _%indexes11413%_))))
                      (let* ((_%hs11426%_
                              (map (lambda (_%x11423%_)
                                     (_%hash-e11415%_ (car _%x11423%_)))
                                   _%indexes11413%_))
                             (_%xs11432%_
                              (map (lambda (_%h11429%_)
                                     (fxmodulo _%h11429%_ _%len11420%_))
                                   _%hs11426%_)))
                        (if (_%duplicate-indexes?9416%_ _%xs11432%_)
                            (if (< _%len11420%_ '131072)
                                (_%lp11417%_
                                 (quotient
                                  (let ()
                                    (declare (not safe))
                                    (##fx* _%len11420%_ '3))
                                  '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _%stx9403%_
                                 _%indexes11413%_))
                            (let ((_%tab11437%_
                                   (make-vector _%len11420%_ '#f)))
                              (for-each
                               (lambda (_%entry11440%_ _%x11442%_)
                                 (vector-set!
                                  _%tab11437%_
                                  _%x11442%_
                                  _%entry11440%_))
                               _%indexes11413%_
                               _%xs11432%_)
                              _%tab11437%_))))))
                 (_%generate-symbolic-dispatch9418%_
                  (lambda (_%e11016%_
                           _%datums11018%_
                           _%dispatch11019%_
                           _%default11020%_)
                    (let* ((_%indexes11022%_
                            (_%datum-dispatch-index9415%_ _%datums11018%_))
                           (_%tab11025%_
                            (_%generate-hash-dispatch-table9417%_
                             _%indexes11022%_
                             symbol-hash)))
                      (if (= (length _%dispatch11019%_) '1)
                          (let* ((_%tab11033%_
                                  (vector-map
                                   (lambda (_%x11030%_)
                                     (if _%x11030%_ (car _%x11030%_) '#f))
                                   _%tab11025%_))
                                 (_%g1103611074%_
                                  (lambda (_%g1103711070%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1103711070%_)))
                                 (_%g1103511205%_
                                  (lambda (_%g1103711078%_)
                                    (if (gx#stx-pair? _%g1103711078%_)
                                        (let ((_%e1104511081%_
                                               (gx#syntax-e _%g1103711078%_)))
                                          (let ((_%hd1104611085%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1104511081%_)))
                                                (_%tl1104711088%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1104511081%_))))
                                            (if (gx#stx-pair? _%tl1104711088%_)
                                                (let ((_%e1104811091%_
                                                       (gx#syntax-e
                                                        _%tl1104711088%_)))
                                                  (let ((_%hd1104911095%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1104811091%_)))
                                                        (_%tl1105011098%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1104811091%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1105011098%_)
                                                        (let ((_%e1105111101%_
                                                               (gx#syntax-e
                                                                _%tl1105011098%_)))
                                                          (let ((_%hd1105211105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1105111101%_)))
                        (_%tl1105311108%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1105111101%_))))
                    (if (gx#stx-pair? _%tl1105311108%_)
                        (let ((_%e1105411111%_ (gx#syntax-e _%tl1105311108%_)))
                          (let ((_%hd1105511115%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1105411111%_)))
                                (_%tl1105611118%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1105411111%_))))
                            (if (gx#stx-pair? _%hd1105511115%_)
                                (let ((_%e1105711121%_
                                       (gx#syntax-e _%hd1105511115%_)))
                                  (let ((_%hd1105811125%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1105711121%_)))
                                        (_%tl1105911128%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1105711121%_))))
                                    (if (gx#stx-null? _%tl1105911128%_)
                                        (if (gx#stx-pair? _%tl1105611118%_)
                                            (let ((_%e1106011131%_
                                                   (gx#syntax-e
                                                    _%tl1105611118%_)))
                                              (let ((_%hd1106111135%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1106011131%_)))
                                                    (_%tl1106211138%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1106011131%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1106211138%_)
                                                    (let ((_%e1106311141%_
                                                           (gx#syntax-e
                                                            _%tl1106211138%_)))
                                                      (let ((_%hd1106411145%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1106311141%_)))
                    (_%tl1106511148%_
                     (let () (declare (not safe)) (##cdr _%e1106311141%_))))
                (if (gx#stx-pair? _%tl1106511148%_)
                    (let ((_%e1106611151%_ (gx#syntax-e _%tl1106511148%_)))
                      (let ((_%hd1106711155%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1106611151%_)))
                            (_%tl1106811158%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1106611151%_))))
                        (if (gx#stx-null? _%tl1106811158%_)
                            ((lambda (_%L11161%_
                                      _%L11163%_
                                      _%L11164%_
                                      _%L11165%_
                                      _%L11166%_
                                      _%L11167%_
                                      _%L11168%_)
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L11167%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _%L11164%_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L11166%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%L11163%_ '()))
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
                           (cons _%L11168%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'let*)
                                 (cons (cons (cons (gx#datum->syntax '#f 'h)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##symbol-hash)
                                                               (cons _%L11168%_
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
                                   (cons _%L11161%_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'q)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##vector-ref)
                                   (cons _%L11166%_
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
                             (cons _%L11168%_ '())))
                 (cons _%L11165%_ (cons (cons _%L11167%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _%L11167%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                             _%hd1106711155%_
                             _%hd1106411145%_
                             _%hd1106111135%_
                             _%hd1105811125%_
                             _%hd1105211105%_
                             _%hd1104911095%_
                             _%hd1104611085%_)
                            (_%g1103611074%_ _%g1103711078%_))))
                    (_%g1103611074%_ _%g1103711078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1103611074%_
                                                     _%g1103711078%_))))
                                            (_%g1103611074%_ _%g1103711078%_))
                                        (_%g1103611074%_ _%g1103711078%_))))
                                (_%g1103611074%_ _%g1103711078%_))))
                        (_%g1103611074%_ _%g1103711078%_))))
                (_%g1103611074%_ _%g1103711078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1103611074%_
                                                 _%g1103711078%_))))
                                        (_%g1103611074%_ _%g1103711078%_)))))
                            (_%g1103511205%_
                             (list _%e11016%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch11019%_
                                   _%default11020%_
                                   _%tab11033%_
                                   (vector-length _%tab11033%_))))
                          (let* ((_%g1120911253%_
                                  (lambda (_%g1121011249%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1121011249%_)))
                                 (_%g1120811409%_
                                  (lambda (_%g1121011257%_)
                                    (if (gx#stx-pair? _%g1121011257%_)
                                        (let ((_%e1121811260%_
                                               (gx#syntax-e _%g1121011257%_)))
                                          (let ((_%hd1121911264%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1121811260%_)))
                                                (_%tl1122011267%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1121811260%_))))
                                            (if (gx#stx-pair? _%tl1122011267%_)
                                                (let ((_%e1122111270%_
                                                       (gx#syntax-e
                                                        _%tl1122011267%_)))
                                                  (let ((_%hd1122211274%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1122111270%_)))
                                                        (_%tl1122311277%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1122111270%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1122311277%_)
                                                        (let ((_%e1122411280%_
                                                               (gx#syntax-e
                                                                _%tl1122311277%_)))
                                                          (let ((_%hd1122511284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1122411280%_)))
                        (_%tl1122611287%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1122411280%_))))
                    (if (gx#stx-pair? _%tl1122611287%_)
                        (let ((_%e1122711290%_ (gx#syntax-e _%tl1122611287%_)))
                          (let ((_%hd1122811294%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1122711290%_)))
                                (_%tl1122911297%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1122711290%_))))
                            (if (gx#stx-pair/null? _%hd1122811294%_)
                                (let ((_g20957_
                                       (gx#syntax-split-splice
                                        _%hd1122811294%_
                                        '0)))
                                  (begin
                                    (let ((_g20958_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g20957_)
                                                 (##vector-length _g20957_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g20958_ 2)))
                                          (error "Context expects 2 values"
                                                 _g20958_)))
                                    (let ((_%target1123011300%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g20957_ 0)))
                                          (_%tl1123211303%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g20957_ 1))))
                                      (if (gx#stx-null? _%tl1123211303%_)
                                          (letrec ((_%loop1123311306%_
                                                    (lambda (_%hd1123111310%_
                                                             _%dispatch1123711313%_)
                                                      (if (gx#stx-pair?
                                                           _%hd1123111310%_)
                                                          (let ((_%e1123411316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd1123111310%_)))
                    (let ((_%lp-hd1123511320%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1123411316%_)))
                          (_%lp-tl1123611323%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1123411316%_))))
                      (_%loop1123311306%_
                       _%lp-tl1123611323%_
                       (cons _%lp-hd1123511320%_ _%dispatch1123711313%_))))
                  (let ((_%dispatch1123811326%_
                         (reverse _%dispatch1123711313%_)))
                    (if (gx#stx-pair? _%tl1122911297%_)
                        (let ((_%e1123911330%_ (gx#syntax-e _%tl1122911297%_)))
                          (let ((_%hd1124011334%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1123911330%_)))
                                (_%tl1124111337%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1123911330%_))))
                            (if (gx#stx-pair? _%tl1124111337%_)
                                (let ((_%e1124211340%_
                                       (gx#syntax-e _%tl1124111337%_)))
                                  (let ((_%hd1124311344%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1124211340%_)))
                                        (_%tl1124411347%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1124211340%_))))
                                    (if (gx#stx-pair? _%tl1124411347%_)
                                        (let ((_%e1124511350%_
                                               (gx#syntax-e _%tl1124411347%_)))
                                          (let ((_%hd1124611354%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1124511350%_)))
                                                (_%tl1124711357%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1124511350%_))))
                                            (if (gx#stx-null? _%tl1124711357%_)
                                                ((lambda (_%L11360%_
                                                          _%L11362%_
                                                          _%L11363%_
                                                          _%L11364%_
                                                          _%L11365%_
                                                          _%L11366%_
                                                          _%L11367%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _%L11366%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons '()
                                                     (cons _%L11363%_ '())))
                                         '()))
                             (cons (cons _%L11365%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L11362%_ '()))
                                               '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f 'symbol?)
                                               (cons _%L11367%_ '()))
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
                                           (cons _%L11367%_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'ix)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##fxmodulo)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'h)
                                                       (cons _%L11360%_ '())))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'q)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _%L11365%_
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
                           (cons _%L11367%_ '())))
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
                                                   (foldr (lambda (_%g1140011403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1140111406%_)
                    (cons _%g1140011403%_ _%g1140111406%_))
                  '()
                  _%L11364%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons (cons _%L11366%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%L11366%_ '()) '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L11366%_ '())
                                                     '()))))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd1124611354%_
                                                 _%hd1124311344%_
                                                 _%hd1124011334%_
                                                 _%dispatch1123811326%_
                                                 _%hd1122511284%_
                                                 _%hd1122211274%_
                                                 _%hd1121911264%_)
                                                (_%g1120911253%_
                                                 _%g1121011257%_))))
                                        (_%g1120911253%_ _%g1121011257%_))))
                                (_%g1120911253%_ _%g1121011257%_))))
                        (_%g1120911253%_ _%g1121011257%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop1123311306%_
                                             _%target1123011300%_
                                             '()))
                                          (_%g1120911253%_ _%g1121011257%_)))))
                                (_%g1120911253%_ _%g1121011257%_))))
                        (_%g1120911253%_ _%g1121011257%_))))
                (_%g1120911253%_ _%g1121011257%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1120911253%_
                                                 _%g1121011257%_))))
                                        (_%g1120911253%_ _%g1121011257%_)))))
                            (_%g1120811409%_
                             (list _%e11016%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch11019%_
                                   _%default11020%_
                                   _%tab11025%_
                                   (vector-length _%tab11025%_))))))))
                 (_%max-char9419%_
                  (lambda (_%datums11005%_)
                    (foldl (lambda (_%lst11008%_ _%r11010%_)
                             (foldl (lambda (_%char11012%_ _%r11014%_)
                                      (max (char->integer _%char11012%_)
                                           _%r11014%_))
                                    _%r11010%_
                                    _%lst11008%_))
                           '0
                           _%datums11005%_)))
                 (_%generate-char-dispatch-table9420%_
                  (lambda (_%indexes10984%_)
                    (let* ((_%ixs10990%_
                            (map (lambda (_%x10987%_)
                                   (char->integer (car _%x10987%_)))
                                 _%indexes10984%_))
                           (_%len10993%_ (fx1+ (foldl max '0 _%ixs10990%_)))
                           (_%vec10996%_ (make-vector _%len10993%_ '#f)))
                      (for-each
                       (lambda (_%entry11001%_ _%x11003%_)
                         (vector-set!
                          _%vec10996%_
                          _%x11003%_
                          (cdr _%entry11001%_)))
                       _%indexes10984%_
                       _%ixs10990%_)
                      _%vec10996%_)))
                 (_%simple-char-range?9421%_
                  (lambda (_%tab10960%_)
                    (let ((_%end10963%_ (vector-length _%tab10960%_)))
                      (let _%lp10966%_ ((_%i10969%_ '0))
                        (let ((_%ix10972%_
                               (vector-ref _%tab10960%_ _%i10969%_)))
                          (if _%ix10972%_
                              (let _%lp210975%_ ((_%i10978%_
                                                  (fx1+ _%i10969%_)))
                                (if (fx< _%i10978%_ _%end10963%_)
                                    (let ((_%ix*10981%_
                                           (vector-ref
                                            _%tab10960%_
                                            _%i10978%_)))
                                      (if (eq? _%ix10972%_ _%ix*10981%_)
                                          (_%lp210975%_ (fx1+ _%i10978%_))
                                          '#f))
                                    '#t))
                              (_%lp10966%_ (fx1+ _%i10969%_))))))))
                 (_%char-range-start9422%_
                  (lambda (_%tab10951%_)
                    (let _%lp10954%_ ((_%i10957%_ '0))
                      (if (vector-ref _%tab10951%_ _%i10957%_)
                          _%i10957%_
                          (_%lp10954%_ (fx1+ _%i10957%_))))))
                 (_%generate-char-dispatch9423%_
                  (lambda (_%e10574%_
                           _%datums10576%_
                           _%dispatch10577%_
                           _%default10578%_)
                    (if (< (_%max-char9419%_ _%datums10576%_) '128)
                        (let* ((_%indexes10580%_
                                (_%datum-dispatch-index9415%_ _%datums10576%_))
                               (_%tab10583%_
                                (_%generate-char-dispatch-table9420%_
                                 _%indexes10580%_)))
                          (if (_%simple-char-range?9421%_ _%tab10583%_)
                              (let ((_%start10588%_
                                     (_%char-range-start9422%_ _%tab10583%_))
                                    (_%end10590%_
                                     (vector-length _%tab10583%_)))
                                (let* ((_%g1059210626%_
                                        (lambda (_%g1059310622%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g1059310622%_)))
                                       (_%g1059110743%_
                                        (lambda (_%g1059310630%_)
                                          (if (gx#stx-pair? _%g1059310630%_)
                                              (let ((_%e1060010633%_
                                                     (gx#syntax-e
                                                      _%g1059310630%_)))
                                                (let ((_%hd1060110637%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1060010633%_)))
                                                      (_%tl1060210640%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1060010633%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1060210640%_)
                                                      (let ((_%e1060310643%_
                                                             (gx#syntax-e
                                                              _%tl1060210640%_)))
                                                        (let ((_%hd1060410647%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1060310643%_)))
                      (_%tl1060510650%_
                       (let () (declare (not safe)) (##cdr _%e1060310643%_))))
                  (if (gx#stx-pair? _%tl1060510650%_)
                      (let ((_%e1060610653%_ (gx#syntax-e _%tl1060510650%_)))
                        (let ((_%hd1060710657%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1060610653%_)))
                              (_%tl1060810660%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1060610653%_))))
                          (if (gx#stx-pair? _%hd1060710657%_)
                              (let ((_%e1060910663%_
                                     (gx#syntax-e _%hd1060710657%_)))
                                (let ((_%hd1061010667%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1060910663%_)))
                                      (_%tl1061110670%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1060910663%_))))
                                  (if (gx#stx-null? _%tl1061110670%_)
                                      (if (gx#stx-pair? _%tl1060810660%_)
                                          (let ((_%e1061210673%_
                                                 (gx#syntax-e
                                                  _%tl1060810660%_)))
                                            (let ((_%hd1061310677%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1061210673%_)))
                                                  (_%tl1061410680%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1061210673%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1061410680%_)
                                                  (let ((_%e1061510683%_
                                                         (gx#syntax-e
                                                          _%tl1061410680%_)))
                                                    (let ((_%hd1061610687%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1061510683%_)))
                                                          (_%tl1061710690%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1061510683%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1061710690%_)
                                                          (let ((_%e1061810693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1061710690%_)))
                    (let ((_%hd1061910697%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1061810693%_)))
                          (_%tl1062010700%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1061810693%_))))
                      (if (gx#stx-null? _%tl1062010700%_)
                          ((lambda (_%L10703%_
                                    _%L10705%_
                                    _%L10706%_
                                    _%L10707%_
                                    _%L10708%_
                                    _%L10709%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons _%L10708%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L10706%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax '#f 'if)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'char?)
                         (cons _%L10709%_ '()))
                   (cons (cons (gx#datum->syntax '#f 'let)
                               (cons (cons (gx#datum->syntax '#f 'ix)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##char->integer)
                                                       (cons _%L10709%_ '()))
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
                                       (cons _%L10705%_ '())))
                           (cons (cons (gx#datum->syntax '#f '##fx<)
                                       (cons (gx#datum->syntax '#f 'ix)
                                             (cons _%L10703%_ '())))
                                 '())))
               (cons _%L10707%_ (cons (cons _%L10708%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (cons (cons _%L10708%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%hd1061910697%_
                           _%hd1061610687%_
                           _%hd1061310677%_
                           _%hd1061010667%_
                           _%hd1060410647%_
                           _%hd1060110637%_)
                          (_%g1059210626%_ _%g1059310630%_))))
                  (_%g1059210626%_ _%g1059310630%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1059210626%_
                                                   _%g1059310630%_))))
                                          (_%g1059210626%_ _%g1059310630%_))
                                      (_%g1059210626%_ _%g1059310630%_))))
                              (_%g1059210626%_ _%g1059310630%_))))
                      (_%g1059210626%_ _%g1059310630%_))))
              (_%g1059210626%_ _%g1059310630%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1059210626%_
                                               _%g1059310630%_)))))
                                  (_%g1059110743%_
                                   (list _%e10574%_
                                         (gx#genident 'default)
                                         _%dispatch10577%_
                                         _%default10578%_
                                         _%start10588%_
                                         _%end10590%_))))
                              (let* ((_%g1074710791%_
                                      (lambda (_%g1074810787%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g1074810787%_)))
                                     (_%g1074610947%_
                                      (lambda (_%g1074810795%_)
                                        (if (gx#stx-pair? _%g1074810795%_)
                                            (let ((_%e1075610798%_
                                                   (gx#syntax-e
                                                    _%g1074810795%_)))
                                              (let ((_%hd1075710802%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1075610798%_)))
                                                    (_%tl1075810805%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1075610798%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1075810805%_)
                                                    (let ((_%e1075910808%_
                                                           (gx#syntax-e
                                                            _%tl1075810805%_)))
                                                      (let ((_%hd1076010812%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1075910808%_)))
                    (_%tl1076110815%_
                     (let () (declare (not safe)) (##cdr _%e1075910808%_))))
                (if (gx#stx-pair? _%tl1076110815%_)
                    (let ((_%e1076210818%_ (gx#syntax-e _%tl1076110815%_)))
                      (let ((_%hd1076310822%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1076210818%_)))
                            (_%tl1076410825%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1076210818%_))))
                        (if (gx#stx-pair? _%tl1076410825%_)
                            (let ((_%e1076510828%_
                                   (gx#syntax-e _%tl1076410825%_)))
                              (let ((_%hd1076610832%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1076510828%_)))
                                    (_%tl1076710835%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1076510828%_))))
                                (if (gx#stx-pair/null? _%hd1076610832%_)
                                    (let ((_g20959_
                                           (gx#syntax-split-splice
                                            _%hd1076610832%_
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
                                        (let ((_%target1076810838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g20959_ 0)))
                                              (_%tl1077010841%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g20959_ 1))))
                                          (if (gx#stx-null? _%tl1077010841%_)
                                              (letrec ((_%loop1077110844%_
                                                        (lambda (_%hd1076910848%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%dispatch1077510851%_)
                  (if (gx#stx-pair? _%hd1076910848%_)
                      (let ((_%e1077210854%_ (gx#syntax-e _%hd1076910848%_)))
                        (let ((_%lp-hd1077310858%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1077210854%_)))
                              (_%lp-tl1077410861%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1077210854%_))))
                          (_%loop1077110844%_
                           _%lp-tl1077410861%_
                           (cons _%lp-hd1077310858%_ _%dispatch1077510851%_))))
                      (let ((_%dispatch1077610864%_
                             (reverse _%dispatch1077510851%_)))
                        (if (gx#stx-pair? _%tl1076710835%_)
                            (let ((_%e1077710868%_
                                   (gx#syntax-e _%tl1076710835%_)))
                              (let ((_%hd1077810872%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1077710868%_)))
                                    (_%tl1077910875%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1077710868%_))))
                                (if (gx#stx-pair? _%tl1077910875%_)
                                    (let ((_%e1078010878%_
                                           (gx#syntax-e _%tl1077910875%_)))
                                      (let ((_%hd1078110882%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1078010878%_)))
                                            (_%tl1078210885%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1078010878%_))))
                                        (if (gx#stx-pair? _%tl1078210885%_)
                                            (let ((_%e1078310888%_
                                                   (gx#syntax-e
                                                    _%tl1078210885%_)))
                                              (let ((_%hd1078410892%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1078310888%_)))
                                                    (_%tl1078510895%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1078310888%_))))
                                                (if (gx#stx-null?
                                                     _%tl1078510895%_)
                                                    ((lambda (_%L10898%_
                                                              _%L10900%_
                                                              _%L10901%_
                                                              _%L10902%_
                                                              _%L10903%_
                                                              _%L10904%_
                                                              _%L10905%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons _%L10904%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons '()
                                                         (cons _%L10901%_
                                                               '())))
                                             '()))
                                 (cons (cons _%L10903%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _%L10900%_ '()))
                                                   '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'char?)
                                                   (cons _%L10905%_ '()))
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
                                         (cons _%L10905%_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f '##fx<)
                                               (cons (gx#datum->syntax '#f 'ix)
                                                     (cons _%L10898%_ '())))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'x)
                         (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                     (cons _%L10903%_
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
                                                       (foldr (lambda (_%g1093810941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1093910944%_)
                        (cons _%g1093810941%_ _%g1093910944%_))
                      '()
                      _%L10902%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%L10904%_ '()) '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L10904%_ '())
                                                     '()))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _%L10904%_ '())
                                                         '()))))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd1078410892%_
                                                     _%hd1078110882%_
                                                     _%hd1077810872%_
                                                     _%dispatch1077610864%_
                                                     _%hd1076310822%_
                                                     _%hd1076010812%_
                                                     _%hd1075710802%_)
                                                    (_%g1074710791%_
                                                     _%g1074810795%_))))
                                            (_%g1074710791%_
                                             _%g1074810795%_))))
                                    (_%g1074710791%_ _%g1074810795%_))))
                            (_%g1074710791%_ _%g1074810795%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop1077110844%_
                                                 _%target1076810838%_
                                                 '()))
                                              (_%g1074710791%_
                                               _%g1074810795%_)))))
                                    (_%g1074710791%_ _%g1074810795%_))))
                            (_%g1074710791%_ _%g1074810795%_))))
                    (_%g1074710791%_ _%g1074810795%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1074710791%_
                                                     _%g1074810795%_))))
                                            (_%g1074710791%_
                                             _%g1074810795%_)))))
                                (_%g1074610947%_
                                 (list _%e10574%_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _%dispatch10577%_
                                       _%default10578%_
                                       _%tab10583%_
                                       (vector-length _%tab10583%_))))))
                        (_%generate-char-dispatch/hash9424%_
                         _%e10574%_
                         _%datums10576%_
                         _%dispatch10577%_
                         _%default10578%_))))
                 (_%generate-char-dispatch/hash9424%_
                  (lambda (_%e10352%_
                           _%datums10354%_
                           _%dispatch10355%_
                           _%default10356%_)
                    (let* ((_%indexes10358%_
                            (_%datum-dispatch-index9415%_ _%datums10354%_))
                           (_%tab10361%_
                            (_%generate-hash-dispatch-table9417%_
                             _%indexes10358%_
                             char->integer))
                           (_%g1036610410%_
                            (lambda (_%g1036710406%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1036710406%_)))
                           (_%g1036510570%_
                            (lambda (_%g1036710414%_)
                              (if (gx#stx-pair? _%g1036710414%_)
                                  (let ((_%e1037510417%_
                                         (gx#syntax-e _%g1036710414%_)))
                                    (let ((_%hd1037610421%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1037510417%_)))
                                          (_%tl1037710424%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1037510417%_))))
                                      (if (gx#stx-pair? _%tl1037710424%_)
                                          (let ((_%e1037810427%_
                                                 (gx#syntax-e
                                                  _%tl1037710424%_)))
                                            (let ((_%hd1037910431%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1037810427%_)))
                                                  (_%tl1038010434%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1037810427%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1038010434%_)
                                                  (let ((_%e1038110437%_
                                                         (gx#syntax-e
                                                          _%tl1038010434%_)))
                                                    (let ((_%hd1038210441%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1038110437%_)))
                                                          (_%tl1038310444%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1038110437%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1038310444%_)
                                                          (let ((_%e1038410447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1038310444%_)))
                    (let ((_%hd1038510451%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1038410447%_)))
                          (_%tl1038610454%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1038410447%_))))
                      (if (gx#stx-pair/null? _%hd1038510451%_)
                          (let ((_g20961_
                                 (gx#syntax-split-splice _%hd1038510451%_ '0)))
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
                              (let ((_%target1038710457%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g20961_ 0)))
                                    (_%tl1038910460%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g20961_ 1))))
                                (if (gx#stx-null? _%tl1038910460%_)
                                    (letrec ((_%loop1039010463%_
                                              (lambda (_%hd1038810467%_
                                                       _%dispatch1039410470%_)
                                                (if (gx#stx-pair?
                                                     _%hd1038810467%_)
                                                    (let ((_%e1039110473%_
                                                           (gx#syntax-e
                                                            _%hd1038810467%_)))
                                                      (let ((_%lp-hd1039210477%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1039110473%_)))
                    (_%lp-tl1039310480%_
                     (let () (declare (not safe)) (##cdr _%e1039110473%_))))
                (_%loop1039010463%_
                 _%lp-tl1039310480%_
                 (cons _%lp-hd1039210477%_ _%dispatch1039410470%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch1039510483%_
                                                           (reverse _%dispatch1039410470%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl1038610454%_)
                                                          (let ((_%e1039610487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1038610454%_)))
                    (let ((_%hd1039710491%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1039610487%_)))
                          (_%tl1039810494%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1039610487%_))))
                      (if (gx#stx-pair? _%tl1039810494%_)
                          (let ((_%e1039910497%_
                                 (gx#syntax-e _%tl1039810494%_)))
                            (let ((_%hd1040010501%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1039910497%_)))
                                  (_%tl1040110504%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1039910497%_))))
                              (if (gx#stx-pair? _%tl1040110504%_)
                                  (let ((_%e1040210507%_
                                         (gx#syntax-e _%tl1040110504%_)))
                                    (let ((_%hd1040310511%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1040210507%_)))
                                          (_%tl1040410514%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1040210507%_))))
                                      (if (gx#stx-null? _%tl1040410514%_)
                                          ((lambda (_%L10517%_
                                                    _%L10519%_
                                                    _%L10520%_
                                                    _%L10521%_
                                                    _%L10522%_
                                                    _%L10523%_
                                                    _%L10524%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L10523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%L10520%_ '())))
                                   '()))
                       (cons (cons _%L10522%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%L10519%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'char?)
                                         (cons _%L10524%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'h)
                         (cons (cons (gx#datum->syntax '#f '##char->integer)
                                     (cons _%L10524%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'ix)
                               (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                           (cons (gx#datum->syntax '#f 'h)
                                                 (cons _%L10517%_ '())))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'q)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##vector-ref)
                                                 (cons _%L10522%_
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
                     (cons _%L10524%_ '())))
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
                                             (foldr (lambda (_%g1056110564%_
                                                             _%g1056210567%_)
                                                      (cons _%g1056110564%_
                                                            _%g1056210567%_))
                                                    '()
                                                    _%L10521%_)))
                                 '())))
               (cons (cons _%L10523%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%L10523%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%L10523%_ '()) '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd1040310511%_
                                           _%hd1040010501%_
                                           _%hd1039710491%_
                                           _%dispatch1039510483%_
                                           _%hd1038210441%_
                                           _%hd1037910431%_
                                           _%hd1037610421%_)
                                          (_%g1036610410%_ _%g1036710414%_))))
                                  (_%g1036610410%_ _%g1036710414%_))))
                          (_%g1036610410%_ _%g1036710414%_))))
                  (_%g1036610410%_ _%g1036710414%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop1039010463%_
                                       _%target1038710457%_
                                       '()))
                                    (_%g1036610410%_ _%g1036710414%_)))))
                          (_%g1036610410%_ _%g1036710414%_))))
                  (_%g1036610410%_ _%g1036710414%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1036610410%_
                                                   _%g1036710414%_))))
                                          (_%g1036610410%_ _%g1036710414%_))))
                                  (_%g1036610410%_ _%g1036710414%_)))))
                      (_%g1036510570%_
                       (list _%e10352%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch10355%_
                             _%default10356%_
                             _%tab10361%_
                             (vector-length _%tab10361%_))))))
                 (_%min-fixnum9425%_
                  (lambda (_%datums10345%_)
                    (foldl (lambda (_%lst10348%_ _%r10350%_)
                             (foldl min _%r10350%_ _%lst10348%_))
                           ##max-fixnum
                           _%datums10345%_)))
                 (_%max-fixnum9426%_
                  (lambda (_%datums10338%_)
                    (foldl (lambda (_%lst10341%_ _%r10343%_)
                             (foldl max _%r10343%_ _%lst10341%_))
                           ##min-fixnum
                           _%datums10338%_)))
                 (_%generate-fixnum-dispatch-table9427%_
                  (lambda (_%indexes10320%_)
                    (let* ((_%ixs10323%_ (map car _%indexes10320%_))
                           (_%len10326%_ (fx1+ (foldl max '0 _%ixs10323%_)))
                           (_%vec10329%_ (make-vector _%len10326%_ '#f)))
                      (for-each
                       (lambda (_%entry10334%_ _%x10336%_)
                         (vector-set!
                          _%vec10329%_
                          _%x10336%_
                          (cdr _%entry10334%_)))
                       _%indexes10320%_
                       _%ixs10323%_)
                      _%vec10329%_)))
                 (_%generate-fixnum-dispatch9428%_
                  (lambda (_%e10054%_
                           _%datums10056%_
                           _%dispatch10057%_
                           _%default10058%_)
                    (if (and (>= (_%min-fixnum9425%_ _%datums10056%_) '0)
                             (< (_%max-fixnum9426%_ _%datums10056%_) '1024))
                        (let* ((_%indexes10060%_
                                (_%datum-dispatch-index9415%_ _%datums10056%_))
                               (_%tab10063%_
                                (_%generate-fixnum-dispatch-table9427%_
                                 _%indexes10060%_))
                               (_%dense?10066%_
                                (andmap values (vector->list _%tab10063%_)))
                               (_%g1007110115%_
                                (lambda (_%g1007210111%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1007210111%_)))
                               (_%g1007010316%_
                                (lambda (_%g1007210119%_)
                                  (if (gx#stx-pair? _%g1007210119%_)
                                      (let ((_%e1008010122%_
                                             (gx#syntax-e _%g1007210119%_)))
                                        (let ((_%hd1008110126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1008010122%_)))
                                              (_%tl1008210129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1008010122%_))))
                                          (if (gx#stx-pair? _%tl1008210129%_)
                                              (let ((_%e1008310132%_
                                                     (gx#syntax-e
                                                      _%tl1008210129%_)))
                                                (let ((_%hd1008410136%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1008310132%_)))
                                                      (_%tl1008510139%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1008310132%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1008510139%_)
                                                      (let ((_%e1008610142%_
                                                             (gx#syntax-e
                                                              _%tl1008510139%_)))
                                                        (let ((_%hd1008710146%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1008610142%_)))
                      (_%tl1008810149%_
                       (let () (declare (not safe)) (##cdr _%e1008610142%_))))
                  (if (gx#stx-pair? _%tl1008810149%_)
                      (let ((_%e1008910152%_ (gx#syntax-e _%tl1008810149%_)))
                        (let ((_%hd1009010156%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1008910152%_)))
                              (_%tl1009110159%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1008910152%_))))
                          (if (gx#stx-pair/null? _%hd1009010156%_)
                              (let ((_g20963_
                                     (gx#syntax-split-splice
                                      _%hd1009010156%_
                                      '0)))
                                (begin
                                  (let ((_g20964_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g20963_)
                                               (##vector-length _g20963_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g20964_ 2)))
                                        (error "Context expects 2 values"
                                               _g20964_)))
                                  (let ((_%target1009210162%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g20963_ 0)))
                                        (_%tl1009410165%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g20963_ 1))))
                                    (if (gx#stx-null? _%tl1009410165%_)
                                        (letrec ((_%loop1009510168%_
                                                  (lambda (_%hd1009310172%_
                                                           _%dispatch1009910175%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1009310172%_)
                                                        (let ((_%e1009610178%_
                                                               (gx#syntax-e
                                                                _%hd1009310172%_)))
                                                          (let ((_%lp-hd1009710182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1009610178%_)))
                        (_%lp-tl1009810185%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1009610178%_))))
                    (_%loop1009510168%_
                     _%lp-tl1009810185%_
                     (cons _%lp-hd1009710182%_ _%dispatch1009910175%_))))
                (let ((_%dispatch1010010188%_
                       (reverse _%dispatch1009910175%_)))
                  (if (gx#stx-pair? _%tl1009110159%_)
                      (let ((_%e1010110192%_ (gx#syntax-e _%tl1009110159%_)))
                        (let ((_%hd1010210196%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1010110192%_)))
                              (_%tl1010310199%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1010110192%_))))
                          (if (gx#stx-pair? _%tl1010310199%_)
                              (let ((_%e1010410202%_
                                     (gx#syntax-e _%tl1010310199%_)))
                                (let ((_%hd1010510206%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1010410202%_)))
                                      (_%tl1010610209%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1010410202%_))))
                                  (if (gx#stx-pair? _%tl1010610209%_)
                                      (let ((_%e1010710212%_
                                             (gx#syntax-e _%tl1010610209%_)))
                                        (let ((_%hd1010810216%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1010710212%_)))
                                              (_%tl1010910219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1010710212%_))))
                                          (if (gx#stx-null? _%tl1010910219%_)
                                              ((lambda (_%L10222%_
                                                        _%L10224%_
                                                        _%L10225%_
                                                        _%L10226%_
                                                        _%L10227%_
                                                        _%L10228%_
                                                        _%L10229%_)
                                                 (let* ((_%g1026810276%_
                                                         (lambda (_%g1026910272%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g1026910272%_)))
                                                        (_%g1026710296%_
                                                         (lambda (_%g1026910280%_)
                                                           ((lambda (_%L10283%_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'let)
                            (cons (cons (cons _%L10228%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons '()
                                                                (cons _%L10225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons _%L10227%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L10224%_ '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fixnum?)
                                                          (cons _%L10229%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons (cons (gx#datum->syntax '#f 'and)
                                    (cons (cons (gx#datum->syntax '#f '##fx>=)
                                                (cons _%L10229%_
                                                      (cons '0 '())))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx<)
                                                      (cons _%L10229%_
                                                            (cons _%L10222%_
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
                          (cons _%L10227%_ (cons _%L10229%_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%L10283%_ '())))
                                    (cons (cons _%L10228%_ '()) '()))))
                  (cons (cons _%L10228%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))
                    _%g1026910280%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g1026710296%_
                                                    (if _%dense?10066%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'x)
                            (foldr (lambda (_%g1029910302%_ _%g1030010305%_)
                                     (cons _%g1029910302%_ _%g1030010305%_))
                                   '()
                                   _%L10226%_)))
                (cons (gx#datum->syntax '#f 'if)
                      (cons (gx#datum->syntax '#f 'x)
                            (cons (cons (gx#datum->syntax '#f '~case-dispatch)
                                        (cons (gx#datum->syntax '#f 'x)
                                              (foldr (lambda (_%g1030710310%_
                                                              _%g1030810313%_)
                                                       (cons _%g1030710310%_
                                                             _%g1030810313%_))
                                                     '()
                                                     _%L10226%_)))
                                  (cons (cons _%L10228%_ '()) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1010810216%_
                                               _%hd1010510206%_
                                               _%hd1010210196%_
                                               _%dispatch1010010188%_
                                               _%hd1008710146%_
                                               _%hd1008410136%_
                                               _%hd1008110126%_)
                                              (_%g1007110115%_
                                               _%g1007210119%_))))
                                      (_%g1007110115%_ _%g1007210119%_))))
                              (_%g1007110115%_ _%g1007210119%_))))
                      (_%g1007110115%_ _%g1007210119%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop1009510168%_
                                           _%target1009210162%_
                                           '()))
                                        (_%g1007110115%_ _%g1007210119%_)))))
                              (_%g1007110115%_ _%g1007210119%_))))
                      (_%g1007110115%_ _%g1007210119%_))))
              (_%g1007110115%_ _%g1007210119%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1007110115%_
                                               _%g1007210119%_))))
                                      (_%g1007110115%_ _%g1007210119%_)))))
                          (_%g1007010316%_
                           (list _%e10054%_
                                 (gx#genident 'default)
                                 (gx#genident 'table)
                                 _%dispatch10057%_
                                 _%default10058%_
                                 _%tab10063%_
                                 (vector-length _%tab10063%_))))
                        (_%generate-fixnum-dispatch/hash9429%_
                         _%e10054%_
                         _%datums10056%_
                         _%dispatch10057%_
                         _%default10058%_))))
                 (_%generate-fixnum-dispatch/hash9429%_
                  (lambda (_%e9832%_
                           _%datums9834%_
                           _%dispatch9835%_
                           _%default9836%_)
                    (let* ((_%indexes9838%_
                            (_%datum-dispatch-index9415%_ _%datums9834%_))
                           (_%tab9841%_
                            (_%generate-hash-dispatch-table9417%_
                             _%indexes9838%_
                             values))
                           (_%g98469890%_
                            (lambda (_%g98479886%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g98479886%_)))
                           (_%g984510050%_
                            (lambda (_%g98479894%_)
                              (if (gx#stx-pair? _%g98479894%_)
                                  (let ((_%e98559897%_
                                         (gx#syntax-e _%g98479894%_)))
                                    (let ((_%hd98569901%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e98559897%_)))
                                          (_%tl98579904%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e98559897%_))))
                                      (if (gx#stx-pair? _%tl98579904%_)
                                          (let ((_%e98589907%_
                                                 (gx#syntax-e _%tl98579904%_)))
                                            (let ((_%hd98599911%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e98589907%_)))
                                                  (_%tl98609914%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e98589907%_))))
                                              (if (gx#stx-pair? _%tl98609914%_)
                                                  (let ((_%e98619917%_
                                                         (gx#syntax-e
                                                          _%tl98609914%_)))
                                                    (let ((_%hd98629921%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e98619917%_)))
                                                          (_%tl98639924%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e98619917%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl98639924%_)
                                                          (let ((_%e98649927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl98639924%_)))
                    (let ((_%hd98659931%_
                           (let () (declare (not safe)) (##car _%e98649927%_)))
                          (_%tl98669934%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e98649927%_))))
                      (if (gx#stx-pair/null? _%hd98659931%_)
                          (let ((_g20965_
                                 (gx#syntax-split-splice _%hd98659931%_ '0)))
                            (begin
                              (let ((_g20966_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g20965_)
                                           (##vector-length _g20965_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g20966_ 2)))
                                    (error "Context expects 2 values"
                                           _g20966_)))
                              (let ((_%target98679937%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g20965_ 0)))
                                    (_%tl98699940%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g20965_ 1))))
                                (if (gx#stx-null? _%tl98699940%_)
                                    (letrec ((_%loop98709943%_
                                              (lambda (_%hd98689947%_
                                                       _%dispatch98749950%_)
                                                (if (gx#stx-pair?
                                                     _%hd98689947%_)
                                                    (let ((_%e98719953%_
                                                           (gx#syntax-e
                                                            _%hd98689947%_)))
                                                      (let ((_%lp-hd98729957%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e98719953%_)))
                    (_%lp-tl98739960%_
                     (let () (declare (not safe)) (##cdr _%e98719953%_))))
                (_%loop98709943%_
                 _%lp-tl98739960%_
                 (cons _%lp-hd98729957%_ _%dispatch98749950%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch98759963%_
                                                           (reverse _%dispatch98749950%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl98669934%_)
                                                          (let ((_%e98769967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl98669934%_)))
                    (let ((_%hd98779971%_
                           (let () (declare (not safe)) (##car _%e98769967%_)))
                          (_%tl98789974%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e98769967%_))))
                      (if (gx#stx-pair? _%tl98789974%_)
                          (let ((_%e98799977%_ (gx#syntax-e _%tl98789974%_)))
                            (let ((_%hd98809981%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e98799977%_)))
                                  (_%tl98819984%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e98799977%_))))
                              (if (gx#stx-pair? _%tl98819984%_)
                                  (let ((_%e98829987%_
                                         (gx#syntax-e _%tl98819984%_)))
                                    (let ((_%hd98839991%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e98829987%_)))
                                          (_%tl98849994%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e98829987%_))))
                                      (if (gx#stx-null? _%tl98849994%_)
                                          ((lambda (_%L9997%_
                                                    _%L9999%_
                                                    _%L10000%_
                                                    _%L10001%_
                                                    _%L10002%_
                                                    _%L10003%_
                                                    _%L10004%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L10003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%L10000%_ '())))
                                   '()))
                       (cons (cons _%L10002%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%L9999%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                         (cons _%L10004%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ix)
                         (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                     (cons _%L10004%_ (cons _%L9997%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'q)
                               (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                           (cons _%L10002%_
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
                     (cons _%L10004%_ '())))
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
                                             (foldr (lambda (_%g1004110044%_
                                                             _%g1004210047%_)
                                                      (cons _%g1004110044%_
                                                            _%g1004210047%_))
                                                    '()
                                                    _%L10001%_)))
                                 '())))
               (cons (cons _%L10003%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%L10003%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%L10003%_ '()) '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd98839991%_
                                           _%hd98809981%_
                                           _%hd98779971%_
                                           _%dispatch98759963%_
                                           _%hd98629921%_
                                           _%hd98599911%_
                                           _%hd98569901%_)
                                          (_%g98469890%_ _%g98479894%_))))
                                  (_%g98469890%_ _%g98479894%_))))
                          (_%g98469890%_ _%g98479894%_))))
                  (_%g98469890%_ _%g98479894%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop98709943%_
                                       _%target98679937%_
                                       '()))
                                    (_%g98469890%_ _%g98479894%_)))))
                          (_%g98469890%_ _%g98479894%_))))
                  (_%g98469890%_ _%g98479894%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g98469890%_
                                                   _%g98479894%_))))
                                          (_%g98469890%_ _%g98479894%_))))
                                  (_%g98469890%_ _%g98479894%_)))))
                      (_%g984510050%_
                       (list _%e9832%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch9835%_
                             _%default9836%_
                             _%tab9841%_
                             (vector-length _%tab9841%_))))))
                 (_%generate-generic-dispatch9430%_
                  (lambda (_%e9568%_
                           _%datums9570%_
                           _%dispatch9571%_
                           _%default9572%_)
                    (let ((_g20967_
                           (if (_%eq-datums?9413%_ _%datums9570%_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_%hash-e9574%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g20967_ 0)))
                              (_%hashf9576%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g20967_ 1)))
                              (_%eqf9577%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g20967_ 2))))
                          (let* ((_%indexes9579%_
                                  (_%datum-dispatch-index9415%_
                                   _%datums9570%_))
                                 (_%tab9582%_
                                  (_%generate-hash-dispatch-table9417%_
                                   _%indexes9579%_
                                   _%hash-e9574%_))
                                 (_%g95879639%_
                                  (lambda (_%g95889635%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g95889635%_)))
                                 (_%g95869828%_
                                  (lambda (_%g95889643%_)
                                    (if (gx#stx-pair? _%g95889643%_)
                                        (let ((_%e95989646%_
                                               (gx#syntax-e _%g95889643%_)))
                                          (let ((_%hd95999650%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e95989646%_)))
                                                (_%tl96009653%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e95989646%_))))
                                            (if (gx#stx-pair? _%tl96009653%_)
                                                (let ((_%e96019656%_
                                                       (gx#syntax-e
                                                        _%tl96009653%_)))
                                                  (let ((_%hd96029660%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e96019656%_)))
                                                        (_%tl96039663%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e96019656%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl96039663%_)
                                                        (let ((_%e96049666%_
                                                               (gx#syntax-e
                                                                _%tl96039663%_)))
                                                          (let ((_%hd96059670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e96049666%_)))
                        (_%tl96069673%_
                         (let () (declare (not safe)) (##cdr _%e96049666%_))))
                    (if (gx#stx-pair? _%tl96069673%_)
                        (let ((_%e96079676%_ (gx#syntax-e _%tl96069673%_)))
                          (let ((_%hd96089680%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e96079676%_)))
                                (_%tl96099683%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e96079676%_))))
                            (if (gx#stx-pair/null? _%hd96089680%_)
                                (let ((_g20968_
                                       (gx#syntax-split-splice
                                        _%hd96089680%_
                                        '0)))
                                  (begin
                                    (let ((_g20969_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g20968_)
                                                 (##vector-length _g20968_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g20969_ 2)))
                                          (error "Context expects 2 values"
                                                 _g20969_)))
                                    (let ((_%target96109686%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g20968_ 0)))
                                          (_%tl96129689%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g20968_ 1))))
                                      (if (gx#stx-null? _%tl96129689%_)
                                          (letrec ((_%loop96139692%_
                                                    (lambda (_%hd96119696%_
                                                             _%dispatch96179699%_)
                                                      (if (gx#stx-pair?
                                                           _%hd96119696%_)
                                                          (let ((_%e96149702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd96119696%_)))
                    (let ((_%lp-hd96159706%_
                           (let () (declare (not safe)) (##car _%e96149702%_)))
                          (_%lp-tl96169709%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e96149702%_))))
                      (_%loop96139692%_
                       _%lp-tl96169709%_
                       (cons _%lp-hd96159706%_ _%dispatch96179699%_))))
                  (let ((_%dispatch96189712%_ (reverse _%dispatch96179699%_)))
                    (if (gx#stx-pair? _%tl96099683%_)
                        (let ((_%e96199716%_ (gx#syntax-e _%tl96099683%_)))
                          (let ((_%hd96209720%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e96199716%_)))
                                (_%tl96219723%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e96199716%_))))
                            (if (gx#stx-pair? _%tl96219723%_)
                                (let ((_%e96229726%_
                                       (gx#syntax-e _%tl96219723%_)))
                                  (let ((_%hd96239730%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e96229726%_)))
                                        (_%tl96249733%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e96229726%_))))
                                    (if (gx#stx-pair? _%tl96249733%_)
                                        (let ((_%e96259736%_
                                               (gx#syntax-e _%tl96249733%_)))
                                          (let ((_%hd96269740%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e96259736%_)))
                                                (_%tl96279743%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e96259736%_))))
                                            (if (gx#stx-pair? _%tl96279743%_)
                                                (let ((_%e96289746%_
                                                       (gx#syntax-e
                                                        _%tl96279743%_)))
                                                  (let ((_%hd96299750%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e96289746%_)))
                                                        (_%tl96309753%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e96289746%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl96309753%_)
                                                        (let ((_%e96319756%_
                                                               (gx#syntax-e
                                                                _%tl96309753%_)))
                                                          (let ((_%hd96329760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e96319756%_)))
                        (_%tl96339763%_
                         (let () (declare (not safe)) (##cdr _%e96319756%_))))
                    (if (gx#stx-null? _%tl96339763%_)
                        ((lambda (_%L9766%_
                                  _%L9768%_
                                  _%L9769%_
                                  _%L9770%_
                                  _%L9771%_
                                  _%L9772%_
                                  _%L9773%_
                                  _%L9774%_
                                  _%L9775%_)
                           (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (cons _%L9774%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L9771%_ '())))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _%L9773%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _%L9770%_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'h)
                             (cons (cons _%L9768%_ (cons _%L9775%_ '())) '()))
                       (cons (cons (gx#datum->syntax '#f 'ix)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##fxmodulo)
                                               (cons (gx#datum->syntax '#f 'h)
                                                     (cons _%L9769%_ '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'q)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##vector-ref)
                                                     (cons _%L9773%_
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
                                               (cons (cons _%L9766%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##car)
                               (cons (gx#datum->syntax '#f 'q) '()))
                         (cons _%L9775%_ '())))
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
                                                 (foldr (lambda (_%g98199822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g98209825%_)
                  (cons _%g98199822%_ _%g98209825%_))
                '()
                _%L9772%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons _%L9774%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%L9774%_ '()) '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))
                         _%hd96329760%_
                         _%hd96299750%_
                         _%hd96269740%_
                         _%hd96239730%_
                         _%hd96209720%_
                         _%dispatch96189712%_
                         _%hd96059670%_
                         _%hd96029660%_
                         _%hd95999650%_)
                        (_%g95879639%_ _%g95889643%_))))
                (_%g95879639%_ _%g95889643%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g95879639%_
                                                 _%g95889643%_))))
                                        (_%g95879639%_ _%g95889643%_))))
                                (_%g95879639%_ _%g95889643%_))))
                        (_%g95879639%_ _%g95889643%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop96139692%_
                                             _%target96109686%_
                                             '()))
                                          (_%g95879639%_ _%g95889643%_)))))
                                (_%g95879639%_ _%g95889643%_))))
                        (_%g95879639%_ _%g95889643%_))))
                (_%g95879639%_ _%g95889643%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g95879639%_
                                                 _%g95889643%_))))
                                        (_%g95879639%_ _%g95889643%_)))))
                            (_%g95869828%_
                             (list _%e9568%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch9571%_
                                   _%default9572%_
                                   _%tab9582%_
                                   (vector-length _%tab9582%_)
                                   _%hashf9576%_
                                   _%eqf9577%_)))))))))
          (let* ((_%g94329456%_
                  (lambda (_%g94339452%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g94339452%_)))
                 (_%g94319564%_
                  (lambda (_%g94339460%_)
                    (if (gx#stx-pair? _%g94339460%_)
                        (let ((_%e94369463%_ (gx#syntax-e _%g94339460%_)))
                          (let ((_%hd94379467%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e94369463%_)))
                                (_%tl94389470%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e94369463%_))))
                            (if (gx#stx-pair? _%tl94389470%_)
                                (let ((_%e94399473%_
                                       (gx#syntax-e _%tl94389470%_)))
                                  (let ((_%hd94409477%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e94399473%_)))
                                        (_%tl94419480%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e94399473%_))))
                                    (if (gx#stx-pair/null? _%tl94419480%_)
                                        (let ((_g20970_
                                               (gx#syntax-split-splice
                                                _%tl94419480%_
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
                                            (let ((_%target94429483%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g20970_
                                                      0)))
                                                  (_%tl94449486%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g20970_
                                                      1))))
                                              (if (gx#stx-null? _%tl94449486%_)
                                                  (letrec ((_%loop94459489%_
                                                            (lambda (_%hd94439493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause94499496%_)
                      (if (gx#stx-pair? _%hd94439493%_)
                          (let ((_%e94469499%_ (gx#syntax-e _%hd94439493%_)))
                            (let ((_%lp-hd94479503%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e94469499%_)))
                                  (_%lp-tl94489506%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e94469499%_))))
                              (_%loop94459489%_
                               _%lp-tl94489506%_
                               (cons _%lp-hd94479503%_ _%clause94499496%_))))
                          (let ((_%clause94509509%_
                                 (reverse _%clause94499496%_)))
                            ((lambda (_%L9513%_ _%L9515%_)
                               (let ((_g20972_
                                      (_%parse-clauses9406%_
                                       _%L9515%_
                                       (foldr (lambda (_%g95339536%_
                                                       _%g95349539%_)
                                                (cons _%g95339536%_
                                                      _%g95349539%_))
                                              '()
                                              _%L9513%_))))
                                 (begin
                                   (let ((_g20973_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g20972_)
                                                (##vector-length _g20972_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g20973_ 3)))
                                         (error "Context expects 3 values"
                                                _g20973_)))
                                   (let ((_%datums9542%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g20972_ 0)))
                                         (_%dispatch9544%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g20972_ 1)))
                                         (_%default9545%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g20972_ 2))))
                                     (let ((_%datum-count9547%_
                                            (_%count-datums9409%_
                                             _%datums9542%_)))
                                       (if (< _%datum-count9547%_ '6)
                                           (_%generate-simple-case9414%_
                                            _%L9515%_
                                            _%datums9542%_
                                            _%dispatch9544%_
                                            _%default9545%_)
                                           (if (_%char-datums?9411%_
                                                _%datums9542%_)
                                               (_%generate-char-dispatch9423%_
                                                _%L9515%_
                                                _%datums9542%_
                                                _%dispatch9544%_
                                                _%default9545%_)
                                               (if (_%fixnum-datums?9412%_
                                                    _%datums9542%_)
                                                   (_%generate-fixnum-dispatch9428%_
                                                    _%L9515%_
                                                    _%datums9542%_
                                                    _%dispatch9544%_
                                                    _%default9545%_)
                                                   (if (< _%datum-count9547%_
                                                          '12)
                                                       (_%generate-simple-case9414%_
                                                        _%L9515%_
                                                        _%datums9542%_
                                                        _%dispatch9544%_
                                                        _%default9545%_)
                                                       (if (_%symbolic-datums?9410%_
                                                            _%datums9542%_)
                                                           (_%generate-symbolic-dispatch9418%_
                                                            _%L9515%_
                                                            _%datums9542%_
                                                            _%dispatch9544%_
                                                            _%default9545%_)
                                                           (_%generate-generic-dispatch9430%_
                                                            _%L9515%_
                                                            _%datums9542%_
                                                            _%dispatch9544%_
                                                            _%default9545%_)))))))))))
                             _%clause94509509%_
                             _%hd94409477%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop94459489%_
                                                     _%target94429483%_
                                                     '()))
                                                  (_%g94329456%_
                                                   _%g94339460%_)))))
                                        (_%g94329456%_ _%g94339460%_))))
                                (_%g94329456%_ _%g94339460%_))))
                        (_%g94329456%_ _%g94339460%_)))))
            (_%g94319564%_ _%stx9403%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-test|
      (lambda (_%stx12466%_)
        (let* ((_%g1246912487%_
                (lambda (_%g1247012483%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1247012483%_)))
               (_%g1246812559%_
                (lambda (_%g1247012491%_)
                  (if (gx#stx-pair? _%g1247012491%_)
                      (let ((_%e1247312494%_ (gx#syntax-e _%g1247012491%_)))
                        (let ((_%hd1247412498%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1247312494%_)))
                              (_%tl1247512501%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1247312494%_))))
                          (if (gx#stx-pair? _%tl1247512501%_)
                              (let ((_%e1247612504%_
                                     (gx#syntax-e _%tl1247512501%_)))
                                (let ((_%hd1247712508%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1247612504%_)))
                                      (_%tl1247812511%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1247612504%_))))
                                  (if (gx#stx-pair? _%tl1247812511%_)
                                      (let ((_%e1247912514%_
                                             (gx#syntax-e _%tl1247812511%_)))
                                        (let ((_%hd1248012518%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1247912514%_)))
                                              (_%tl1248112521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1247912514%_))))
                                          (if (gx#stx-null? _%tl1248112521%_)
                                              ((lambda (_%L12524%_ _%L12526%_)
                                                 (let ((_%datum-e12542%_
                                                        (gx#stx-e _%L12526%_)))
                                                   (if (or (symbol? _%datum-e12542%_)
                                                           (keyword?
                                                            _%datum-e12542%_)
                                                           (immediate?
                                                            _%datum-e12542%_))
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%L12526%_ '()))
                           (cons _%L12524%_ '())))
               (if (number? _%datum-e12542%_)
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L12526%_ '()))
                               (cons _%L12524%_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L12526%_ '()))
                               (cons _%L12524%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1248012518%_
                                               _%hd1247712508%_)
                                              (_%g1246912487%_
                                               _%g1247012491%_))))
                                      (_%g1246912487%_ _%g1247012491%_))))
                              (_%g1246912487%_ _%g1247012491%_))))
                      (_%g1246912487%_ _%g1247012491%_)))))
          (_%g1246812559%_ _%stx12466%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch|
      (lambda (_%$stx12563%_)
        (let* ((_%g1256712591%_
                (lambda (_%g1256812587%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1256812587%_)))
               (_%g1256612676%_
                (lambda (_%g1256812595%_)
                  (if (gx#stx-pair? _%g1256812595%_)
                      (let ((_%e1257112598%_ (gx#syntax-e _%g1256812595%_)))
                        (let ((_%hd1257212602%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1257112598%_)))
                              (_%tl1257312605%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1257112598%_))))
                          (if (gx#stx-pair? _%tl1257312605%_)
                              (let ((_%e1257412608%_
                                     (gx#syntax-e _%tl1257312605%_)))
                                (let ((_%hd1257512612%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1257412608%_)))
                                      (_%tl1257612615%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1257412608%_))))
                                  (if (gx#stx-pair/null? _%tl1257612615%_)
                                      (let ((_g20974_
                                             (gx#syntax-split-splice
                                              _%tl1257612615%_
                                              '0)))
                                        (begin
                                          (let ((_g20975_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20974_)
                                                       (##vector-length
                                                        _g20974_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20975_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20975_)))
                                          (let ((_%target1257712618%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20974_ 0)))
                                                (_%tl1257912621%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20974_ 1))))
                                            (if (gx#stx-null? _%tl1257912621%_)
                                                (letrec ((_%loop1258012624%_
                                                          (lambda (_%hd1257812628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%K1258412631%_)
                    (if (gx#stx-pair? _%hd1257812628%_)
                        (let ((_%e1258112634%_ (gx#syntax-e _%hd1257812628%_)))
                          (let ((_%lp-hd1258212638%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1258112634%_)))
                                (_%lp-tl1258312641%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1258112634%_))))
                            (_%loop1258012624%_
                             _%lp-tl1258312641%_
                             (cons _%lp-hd1258212638%_ _%K1258412631%_))))
                        (let ((_%K1258512644%_ (reverse _%K1258412631%_)))
                          ((lambda (_%L12648%_ _%L12650%_)
                             (cons (gx#datum->syntax '#f '~case-dispatch*)
                                   (cons '0
                                         (cons _%L12650%_
                                               (foldr (lambda (_%g1266712670%_
                                                               _%g1266812673%_)
                                                        (cons _%g1266712670%_
                                                              _%g1266812673%_))
                                                      '()
                                                      _%L12648%_)))))
                           _%K1258512644%_
                           _%hd1257512612%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1258012624%_
                                                   _%target1257712618%_
                                                   '()))
                                                (_%g1256712591%_
                                                 _%g1256812595%_)))))
                                      (_%g1256712591%_ _%g1256812595%_))))
                              (_%g1256712591%_ _%g1256812595%_))))
                      (_%g1256712591%_ _%g1256812595%_)))))
          (_%g1256612676%_ _%$stx12563%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch*|
      (lambda (_%stx12681%_)
        (let* ((_%__stx1975419755%_ _%stx12681%_)
               (_%g1268812784%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1975419755%_))))
          (let ((_%__kont1975719758%_
                 (lambda (_%L13261%_ _%L13263%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons '#!void '()))))
                (_%__kont1975919760%_
                 (lambda (_%L13203%_ _%L13205%_ _%L13206%_) _%L13203%_))
                (_%__kont1976119762%_
                 (lambda (_%L13100%_ _%L13102%_ _%L13103%_ _%L13104%_)
                   (let* ((_%g1312513133%_
                           (lambda (_%g1312613129%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1312613129%_)))
                          (_%g1312413152%_
                           (lambda (_%g1312613137%_)
                             ((lambda (_%L13140%_)
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons _%L13103%_
                                                        (cons _%L13140%_ '())))
                                            (cons _%L13102%_
                                                  (cons _%L13100%_ '())))))
                              _%g1312613137%_))))
                     (_%g1312413152%_ (gx#stx-e _%L13104%_)))))
                (_%__kont1976319764%_
                 (lambda (_%L12950%_
                          _%L12952%_
                          _%L12953%_
                          _%L12954%_
                          _%L12955%_)
                   (let* ((_%g1297912994%_
                           (lambda (_%g1298012990%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1298012990%_)))
                          (_%g1297813039%_
                           (lambda (_%g1298012998%_)
                             (if (gx#stx-pair? _%g1298012998%_)
                                 (let ((_%e1298313001%_
                                        (gx#syntax-e _%g1298012998%_)))
                                   (let ((_%hd1298413005%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e1298313001%_)))
                                         (_%tl1298513008%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e1298313001%_))))
                                     (if (gx#stx-pair? _%tl1298513008%_)
                                         (let ((_%e1298613011%_
                                                (gx#syntax-e
                                                 _%tl1298513008%_)))
                                           (let ((_%hd1298713015%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e1298613011%_)))
                                                 (_%tl1298813018%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e1298613011%_))))
                                             (if (gx#stx-null?
                                                  _%tl1298813018%_)
                                                 ((lambda (_%L13021%_
                                                           _%L13023%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons _%L12954%_ (cons _%L13023%_ '())))
                        (cons _%L12953%_
                              (cons (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx=)
                                                      (cons _%L12954%_
                                                            (cons _%L13021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%L12952%_
                                                      (cons _%L12950%_ '()))))
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd1298713015%_
                                                  _%hd1298413005%_)
                                                 (_%g1297912994%_
                                                  _%g1298012998%_))))
                                         (_%g1297912994%_ _%g1298012998%_))))
                                 (_%g1297912994%_ _%g1298012998%_)))))
                     (_%g1297813039%_
                      (list (gx#stx-e _%L12955%_)
                            (fx1+ (gx#stx-e _%L12955%_)))))))
                (_%__kont1976519766%_
                 (lambda (_%L12851%_ _%L12853%_ _%L12854%_)
                   (cons (gx#datum->syntax '#f '~case-dispatch-bsearch)
                         (cons _%L12854%_
                               (cons _%L12853%_
                                     (foldr (lambda (_%g1287412877%_
                                                     _%g1287512880%_)
                                              (cons _%g1287412877%_
                                                    _%g1287512880%_))
                                            '()
                                            _%L12851%_)))))))
            (let ((_%__match1991119912%_
                   (lambda (_%e1276112791%_
                            _%hd1276212795%_
                            _%tl1276312798%_
                            _%e1276412801%_
                            _%hd1276512805%_
                            _%tl1276612808%_
                            _%e1276712811%_
                            _%hd1276812815%_
                            _%tl1276912818%_
                            _%__splice1976719768%_
                            _%target1277012821%_
                            _%tl1277212824%_)
                     (letrec ((_%loop1277312827%_
                               (lambda (_%hd1277112831%_ _%K1277712834%_)
                                 (if (gx#stx-pair? _%hd1277112831%_)
                                     (let ((_%e1277412837%_
                                            (gx#syntax-e _%hd1277112831%_)))
                                       (let ((_%lp-tl1277612844%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1277412837%_)))
                                             (_%lp-hd1277512841%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1277412837%_))))
                                         (_%loop1277312827%_
                                          _%lp-tl1277612844%_
                                          (cons _%lp-hd1277512841%_
                                                _%K1277712834%_))))
                                     (let ((_%K1277812847%_
                                            (reverse _%K1277712834%_)))
                                       (_%__kont1976519766%_
                                        _%K1277812847%_
                                        _%hd1276812815%_
                                        _%hd1276512805%_))))))
                       (_%loop1277312827%_ _%target1277012821%_ '())))))
              (if (gx#stx-pair? _%__stx1975419755%_)
                  (let ((_%e1269213231%_ (gx#syntax-e _%__stx1975419755%_)))
                    (let ((_%tl1269413238%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1269213231%_)))
                          (_%hd1269313235%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1269213231%_))))
                      (if (gx#stx-pair? _%tl1269413238%_)
                          (let ((_%e1269513241%_
                                 (gx#syntax-e _%tl1269413238%_)))
                            (let ((_%tl1269713248%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1269513241%_)))
                                  (_%hd1269613245%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1269513241%_))))
                              (if (gx#stx-pair? _%tl1269713248%_)
                                  (let ((_%e1269813251%_
                                         (gx#syntax-e _%tl1269713248%_)))
                                    (let ((_%tl1270013258%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1269813251%_)))
                                          (_%hd1269913255%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1269813251%_))))
                                      (if (gx#stx-null? _%tl1270013258%_)
                                          (_%__kont1975719758%_
                                           _%hd1269913255%_
                                           _%hd1269613245%_)
                                          (if (gx#stx-pair? _%tl1270013258%_)
                                              (let ((_%e1271313193%_
                                                     (gx#syntax-e
                                                      _%tl1270013258%_)))
                                                (let ((_%tl1271513200%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1271313193%_)))
                                                      (_%hd1271413197%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1271313193%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1271513200%_)
                                                      (_%__kont1975919760%_
                                                       _%hd1271413197%_
                                                       _%hd1269913255%_
                                                       _%hd1269613245%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1271513200%_)
                                                          (let ((_%e1273213090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1271513200%_)))
                    (let ((_%tl1273413097%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1273213090%_)))
                          (_%hd1273313094%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1273213090%_))))
                      (if (gx#stx-null? _%tl1273413097%_)
                          (_%__kont1976119762%_
                           _%hd1273313094%_
                           _%hd1271413197%_
                           _%hd1269913255%_
                           _%hd1269613245%_)
                          (if (gx#stx-pair? _%tl1273413097%_)
                              (let ((_%e1275512940%_
                                     (gx#syntax-e _%tl1273413097%_)))
                                (let ((_%tl1275712947%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1275512940%_)))
                                      (_%hd1275612944%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1275512940%_))))
                                  (if (gx#stx-null? _%tl1275712947%_)
                                      (_%__kont1976319764%_
                                       _%hd1275612944%_
                                       _%hd1273313094%_
                                       _%hd1271413197%_
                                       _%hd1269913255%_
                                       _%hd1269613245%_)
                                      (if (gx#stx-pair/null? _%tl1270013258%_)
                                          (let ((_%__splice1976719768%_
                                                 (gx#syntax-split-splice
                                                  _%tl1270013258%_
                                                  '0)))
                                            (let ((_%tl1277212824%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1976719768%_
                                                      '1)))
                                                  (_%target1277012821%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1976719768%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1277212824%_)
                                                  (_%__match1991119912%_
                                                   _%e1269213231%_
                                                   _%hd1269313235%_
                                                   _%tl1269413238%_
                                                   _%e1269513241%_
                                                   _%hd1269613245%_
                                                   _%tl1269713248%_
                                                   _%e1269813251%_
                                                   _%hd1269913255%_
                                                   _%tl1270013258%_
                                                   _%__splice1976719768%_
                                                   _%target1277012821%_
                                                   _%tl1277212824%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1268812784%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1268812784%_))))))
                              (if (gx#stx-pair/null? _%tl1270013258%_)
                                  (let ((_%__splice1976719768%_
                                         (gx#syntax-split-splice
                                          _%tl1270013258%_
                                          '0)))
                                    (let ((_%tl1277212824%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1976719768%_
                                              '1)))
                                          (_%target1277012821%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1976719768%_
                                              '0))))
                                      (if (gx#stx-null? _%tl1277212824%_)
                                          (_%__match1991119912%_
                                           _%e1269213231%_
                                           _%hd1269313235%_
                                           _%tl1269413238%_
                                           _%e1269513241%_
                                           _%hd1269613245%_
                                           _%tl1269713248%_
                                           _%e1269813251%_
                                           _%hd1269913255%_
                                           _%tl1270013258%_
                                           _%__splice1976719768%_
                                           _%target1277012821%_
                                           _%tl1277212824%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g1268812784%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1268812784%_)))))))
                  (if (gx#stx-pair/null? _%tl1270013258%_)
                      (let ((_%__splice1976719768%_
                             (gx#syntax-split-splice _%tl1270013258%_ '0)))
                        (let ((_%tl1277212824%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1976719768%_ '1)))
                              (_%target1277012821%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1976719768%_ '0))))
                          (if (gx#stx-null? _%tl1277212824%_)
                              (_%__match1991119912%_
                               _%e1269213231%_
                               _%hd1269313235%_
                               _%tl1269413238%_
                               _%e1269513241%_
                               _%hd1269613245%_
                               _%tl1269713248%_
                               _%e1269813251%_
                               _%hd1269913255%_
                               _%tl1270013258%_
                               _%__splice1976719768%_
                               _%target1277012821%_
                               _%tl1277212824%_)
                              (let ()
                                (declare (not safe))
                                (_%g1268812784%_)))))
                      (let () (declare (not safe)) (_%g1268812784%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl1270013258%_)
                                                  (let ((_%__splice1976719768%_
                                                         (gx#syntax-split-splice
                                                          _%tl1270013258%_
                                                          '0)))
                                                    (let ((_%tl1277212824%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1976719768%_
                                                              '1)))
                                                          (_%target1277012821%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1976719768%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl1277212824%_)
                                                          (_%__match1991119912%_
                                                           _%e1269213231%_
                                                           _%hd1269313235%_
                                                           _%tl1269413238%_
                                                           _%e1269513241%_
                                                           _%hd1269613245%_
                                                           _%tl1269713248%_
                                                           _%e1269813251%_
                                                           _%hd1269913255%_
                                                           _%tl1270013258%_
                                                           _%__splice1976719768%_
                                                           _%target1277012821%_
                                                           _%tl1277212824%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g1268812784%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1268812784%_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1268812784%_)))))
                          (let () (declare (not safe)) (_%g1268812784%_)))))
                  (let () (declare (not safe)) (_%g1268812784%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch-bsearch|
      (lambda (_%stx13283%_)
        (letrec ((_%split13286%_
                  (lambda (_%lst13647%_ _%mid13649%_)
                    (let _%lp13651%_ ((_%i13654%_ '0)
                                      (_%rest13656%_ _%lst13647%_)
                                      (_%left13657%_ '()))
                      (if (fx< _%i13654%_ _%mid13649%_)
                          (_%lp13651%_
                           (fx1+ _%i13654%_)
                           (cdr _%rest13656%_)
                           (cons (car _%rest13656%_) _%left13657%_))
                          (values (reverse _%left13657%_) _%rest13656%_))))))
          (let* ((_%g1328913317%_
                  (lambda (_%g1329013313%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1329013313%_)))
                 (_%g1328813643%_
                  (lambda (_%g1329013321%_)
                    (if (gx#stx-pair? _%g1329013321%_)
                        (let ((_%e1329413324%_ (gx#syntax-e _%g1329013321%_)))
                          (let ((_%hd1329513328%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1329413324%_)))
                                (_%tl1329613331%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1329413324%_))))
                            (if (gx#stx-pair? _%tl1329613331%_)
                                (let ((_%e1329713334%_
                                       (gx#syntax-e _%tl1329613331%_)))
                                  (let ((_%hd1329813338%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1329713334%_)))
                                        (_%tl1329913341%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1329713334%_))))
                                    (if (gx#stx-pair? _%tl1329913341%_)
                                        (let ((_%e1330013344%_
                                               (gx#syntax-e _%tl1329913341%_)))
                                          (let ((_%hd1330113348%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1330013344%_)))
                                                (_%tl1330213351%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1330013344%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl1330213351%_)
                                                (let ((_g20976_
                                                       (gx#syntax-split-splice
                                                        _%tl1330213351%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20977_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20976_)
                         (##vector-length _g20976_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20977_ 2)))
                  (error "Context expects 2 values" _g20977_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target1330313354%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20976_
                                                              0)))
                                                          (_%tl1330513357%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20976_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl1330513357%_)
                                                          (letrec ((_%loop1330613360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd1330413364%_ _%K1331013367%_)
                              (if (gx#stx-pair? _%hd1330413364%_)
                                  (let ((_%e1330713370%_
                                         (gx#syntax-e _%hd1330413364%_)))
                                    (let ((_%lp-hd1330813374%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1330713370%_)))
                                          (_%lp-tl1330913377%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1330713370%_))))
                                      (_%loop1330613360%_
                                       _%lp-tl1330913377%_
                                       (cons _%lp-hd1330813374%_
                                             _%K1331013367%_))))
                                  (let ((_%K1331113380%_
                                         (reverse _%K1331013367%_)))
                                    ((lambda (_%L13384%_ _%L13386%_ _%L13387%_)
                                       (let* ((_%len13417%_
                                               (length (foldr (lambda (_%g1340813411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1340913414%_)
                        (cons _%g1340813411%_ _%g1340913414%_))
                      '()
                      _%L13384%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%mid13420%_
                                               (quotient _%len13417%_ '2))
                                              (_g20978_
                                               (_%split13286%_
                                                (foldr (lambda (_%g1342213425%_
                                                                _%g1342313428%_)
                                                         (cons _%g1342213425%_
                                                               _%g1342313428%_))
                                                       '()
                                                       _%L13384%_)
                                                _%mid13420%_)))
                                         (begin
                                           (let ((_g20979_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g20978_)
                                                        (##vector-length
                                                         _g20978_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g20979_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g20979_)))
                                           (let ((_%left13431%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g20978_ 0)))
                                                 (_%right13433%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g20978_
                                                     1))))
                                             (let* ((_%g1343713478%_
                                                     (lambda (_%g1343813474%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g1343813474%_)))
                                                    (_%g1343613639%_
                                                     (lambda (_%g1343813482%_)
                                                       (if (gx#stx-pair?
                                                            _%g1343813482%_)
                                                           (let ((_%e1344313485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g1343813482%_)))
                     (let ((_%hd1344413489%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1344313485%_)))
                           (_%tl1344513492%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1344313485%_))))
                       (if (gx#stx-pair? _%tl1344513492%_)
                           (let ((_%e1344613495%_
                                  (gx#syntax-e _%tl1344513492%_)))
                             (let ((_%hd1344713499%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1344613495%_)))
                                   (_%tl1344813502%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1344613495%_))))
                               (if (gx#stx-pair/null? _%hd1344713499%_)
                                   (let ((_g20980_
                                          (gx#syntax-split-splice
                                           _%hd1344713499%_
                                           '0)))
                                     (begin
                                       (let ((_g20981_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20980_)
                                                    (##vector-length _g20980_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20981_ 2)))
                                             (error "Context expects 2 values"
                                                    _g20981_)))
                                       (let ((_%target1344913505%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20980_ 0)))
                                             (_%tl1345113508%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20980_ 1))))
                                         (if (gx#stx-null? _%tl1345113508%_)
                                             (letrec ((_%loop1345213511%_
                                                       (lambda (_%hd1345013515%_
                                                                _%K-left1345613518%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1345013515%_)
                                                             (let ((_%e1345313521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1345013515%_)))
                       (let ((_%lp-hd1345413525%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1345313521%_)))
                             (_%lp-tl1345513528%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1345313521%_))))
                         (_%loop1345213511%_
                          _%lp-tl1345513528%_
                          (cons _%lp-hd1345413525%_ _%K-left1345613518%_))))
                     (let ((_%K-left1345713531%_
                            (reverse _%K-left1345613518%_)))
                       (if (gx#stx-pair? _%tl1344813502%_)
                           (let ((_%e1345813535%_
                                  (gx#syntax-e _%tl1344813502%_)))
                             (let ((_%hd1345913539%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1345813535%_)))
                                   (_%tl1346013542%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1345813535%_))))
                               (if (gx#stx-pair/null? _%hd1345913539%_)
                                   (let ((_g20982_
                                          (gx#syntax-split-splice
                                           _%hd1345913539%_
                                           '0)))
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
                                             (error "Context expects 2 values"
                                                    _g20983_)))
                                       (let ((_%target1346113545%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20982_ 0)))
                                             (_%tl1346313548%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20982_ 1))))
                                         (if (gx#stx-null? _%tl1346313548%_)
                                             (letrec ((_%loop1346413551%_
                                                       (lambda (_%hd1346213555%_
                                                                _%K-right1346813558%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1346213555%_)
                                                             (let ((_%e1346513561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1346213555%_)))
                       (let ((_%lp-hd1346613565%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1346513561%_)))
                             (_%lp-tl1346713568%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1346513561%_))))
                         (_%loop1346413551%_
                          _%lp-tl1346713568%_
                          (cons _%lp-hd1346613565%_ _%K-right1346813558%_))))
                     (let ((_%K-right1346913571%_
                            (reverse _%K-right1346813558%_)))
                       (if (gx#stx-pair? _%tl1346013542%_)
                           (let ((_%e1347013575%_
                                  (gx#syntax-e _%tl1346013542%_)))
                             (let ((_%hd1347113579%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1347013575%_)))
                                   (_%tl1347213582%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1347013575%_))))
                               (if (gx#stx-null? _%tl1347213582%_)
                                   ((lambda (_%L13585%_
                                             _%L13587%_
                                             _%L13588%_
                                             _%L13589%_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '##fx<)
                                                        (cons _%L13386%_
                                                              (cons _%L13585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch*)
                                                              (cons _%L13387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L13386%_
                                  (foldr (lambda (_%g1362413627%_
                                                  _%g1362513630%_)
                                           (cons _%g1362413627%_
                                                 _%g1362513630%_))
                                         '()
                                         _%L13588%_))))
                (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                            (cons _%L13585%_
                                  (cons _%L13386%_
                                        (foldr (lambda (_%g1362213633%_
                                                        _%g1362313636%_)
                                                 (cons _%g1362213633%_
                                                       _%g1362313636%_))
                                               '()
                                               _%L13587%_))))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%hd1347113579%_
                                    _%K-right1346913571%_
                                    _%K-left1345713531%_
                                    _%hd1344413489%_)
                                   (_%g1343713478%_ _%g1343813482%_))))
                           (_%g1343713478%_ _%g1343813482%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1346413551%_
                                                _%target1346113545%_
                                                '()))
                                             (_%g1343713478%_
                                              _%g1343813482%_)))))
                                   (_%g1343713478%_ _%g1343813482%_))))
                           (_%g1343713478%_ _%g1343813482%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1345213511%_
                                                _%target1344913505%_
                                                '()))
                                             (_%g1343713478%_
                                              _%g1343813482%_)))))
                                   (_%g1343713478%_ _%g1343813482%_))))
                           (_%g1343713478%_ _%g1343813482%_))))
                   (_%g1343713478%_ _%g1343813482%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g1343613639%_
                                                (list _%mid13420%_
                                                      _%left13431%_
                                                      _%right13433%_
                                                      (fx+ _%mid13420%_
                                                           (gx#stx-e
                                                            _%L13387%_)))))))))
                                     _%K1331113380%_
                                     _%hd1330113348%_
                                     _%hd1329813338%_))))))
                    (_%loop1330613360%_ _%target1330313354%_ '()))
                  (_%g1328913317%_ _%g1329013321%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1328913317%_
                                                 _%g1329013321%_))))
                                        (_%g1328913317%_ _%g1329013321%_))))
                                (_%g1328913317%_ _%g1329013321%_))))
                        (_%g1328913317%_ _%g1329013321%_)))))
            (_%g1328813643%_ _%stx13283%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#do|
      (lambda (_%$stx13663%_)
        (let* ((_%g1366713738%_
                (lambda (_%g1366813734%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1366813734%_)))
               (_%g1366614027%_
                (lambda (_%g1366813742%_)
                  (if (gx#stx-pair? _%g1366813742%_)
                      (let ((_%e1367513745%_ (gx#syntax-e _%g1366813742%_)))
                        (let ((_%hd1367613749%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1367513745%_)))
                              (_%tl1367713752%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1367513745%_))))
                          (if (gx#stx-pair? _%tl1367713752%_)
                              (let ((_%e1367813755%_
                                     (gx#syntax-e _%tl1367713752%_)))
                                (let ((_%hd1367913759%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1367813755%_)))
                                      (_%tl1368013762%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1367813755%_))))
                                  (if (gx#stx-pair/null? _%hd1367913759%_)
                                      (let ((_g20984_
                                             (gx#syntax-split-splice
                                              _%hd1367913759%_
                                              '0)))
                                        (begin
                                          (let ((_g20985_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20984_)
                                                       (##vector-length
                                                        _g20984_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20985_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20985_)))
                                          (let ((_%target1368113765%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20984_ 0)))
                                                (_%tl1368313768%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20984_ 1))))
                                            (if (gx#stx-null? _%tl1368313768%_)
                                                (letrec ((_%loop1368413771%_
                                                          (lambda (_%hd1368213775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step1368813778%_
                           _%init1368913780%_
                           _%var1369013782%_)
                    (if (gx#stx-pair? _%hd1368213775%_)
                        (let ((_%e1368513785%_ (gx#syntax-e _%hd1368213775%_)))
                          (let ((_%lp-hd1368613789%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1368513785%_)))
                                (_%lp-tl1368713792%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1368513785%_))))
                            (if (gx#stx-pair? _%lp-hd1368613789%_)
                                (let ((_%e1371813795%_
                                       (gx#syntax-e _%lp-hd1368613789%_)))
                                  (let ((_%hd1371913799%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1371813795%_)))
                                        (_%tl1372013802%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1371813795%_))))
                                    (if (gx#stx-pair? _%tl1372013802%_)
                                        (let ((_%e1372113805%_
                                               (gx#syntax-e _%tl1372013802%_)))
                                          (let ((_%hd1372213809%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1372113805%_)))
                                                (_%tl1372313812%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1372113805%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl1372313812%_)
                                                (let ((_g20986_
                                                       (gx#syntax-split-splice
                                                        _%tl1372313812%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20987_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20986_)
                         (##vector-length _g20986_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20987_ 2)))
                  (error "Context expects 2 values" _g20987_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target1372413815%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20986_
                                                              0)))
                                                          (_%tl1372613818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20986_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl1372613818%_)
                                                          (letrec ((_%loop1372713821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd1372513825%_ _%step1373113828%_)
                              (if (gx#stx-pair? _%hd1372513825%_)
                                  (let ((_%e1372813831%_
                                         (gx#syntax-e _%hd1372513825%_)))
                                    (let ((_%lp-hd1372913835%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1372813831%_)))
                                          (_%lp-tl1373013838%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1372813831%_))))
                                      (_%loop1372713821%_
                                       _%lp-tl1373013838%_
                                       (cons _%lp-hd1372913835%_
                                             _%step1373113828%_))))
                                  (let ((_%step1373213841%_
                                         (reverse _%step1373113828%_)))
                                    (_%loop1368413771%_
                                     _%lp-tl1368713792%_
                                     (cons _%step1373213841%_
                                           _%step1368813778%_)
                                     (cons _%hd1372213809%_ _%init1368913780%_)
                                     (cons _%hd1371913799%_
                                           _%var1369013782%_)))))))
                    (_%loop1372713821%_ _%target1372413815%_ '()))
                  (_%g1366713738%_ _%g1366813742%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1366713738%_
                                                 _%g1366813742%_))))
                                        (_%g1366713738%_ _%g1366813742%_))))
                                (_%g1366713738%_ _%g1366813742%_))))
                        (let ((_%step1369113845%_ (reverse _%step1368813778%_))
                              (_%init1369213848%_ (reverse _%init1368913780%_))
                              (_%var1369313850%_ (reverse _%var1369013782%_)))
                          (if (gx#stx-pair? _%tl1368013762%_)
                              (let ((_%e1369413853%_
                                     (gx#syntax-e _%tl1368013762%_)))
                                (let ((_%hd1369513857%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1369413853%_)))
                                      (_%tl1369613860%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1369413853%_))))
                                  (if (gx#stx-pair? _%hd1369513857%_)
                                      (let ((_%e1369713863%_
                                             (gx#syntax-e _%hd1369513857%_)))
                                        (let ((_%hd1369813867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1369713863%_)))
                                              (_%tl1369913870%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1369713863%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1369913870%_)
                                              (let ((_g20988_
                                                     (gx#syntax-split-splice
                                                      _%tl1369913870%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20989_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20988_)
                                                               (##vector-length
                                                                _g20988_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20989_ 2)))
                (error "Context expects 2 values" _g20989_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1370013873%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g20988_
                                                            0)))
                                                        (_%tl1370213876%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g20988_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1370213876%_)
                                                        (letrec ((_%loop1370313879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1370113883%_ _%fini1370713886%_)
                            (if (gx#stx-pair? _%hd1370113883%_)
                                (let ((_%e1370413889%_
                                       (gx#syntax-e _%hd1370113883%_)))
                                  (let ((_%lp-hd1370513893%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1370413889%_)))
                                        (_%lp-tl1370613896%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1370413889%_))))
                                    (_%loop1370313879%_
                                     _%lp-tl1370613896%_
                                     (cons _%lp-hd1370513893%_
                                           _%fini1370713886%_))))
                                (let ((_%fini1370813899%_
                                       (reverse _%fini1370713886%_)))
                                  (if (gx#stx-pair/null? _%tl1369613860%_)
                                      (let ((_g20990_
                                             (gx#syntax-split-splice
                                              _%tl1369613860%_
                                              '0)))
                                        (begin
                                          (let ((_g20991_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20990_)
                                                       (##vector-length
                                                        _g20990_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20991_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20991_)))
                                          (let ((_%target1370913903%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20990_ 0)))
                                                (_%tl1371113906%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20990_ 1))))
                                            (if (gx#stx-null? _%tl1371113906%_)
                                                (letrec ((_%loop1371213909%_
                                                          (lambda (_%hd1371013913%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body1371613916%_)
                    (if (gx#stx-pair? _%hd1371013913%_)
                        (let ((_%e1371313919%_ (gx#syntax-e _%hd1371013913%_)))
                          (let ((_%lp-hd1371413923%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1371313919%_)))
                                (_%lp-tl1371513926%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1371313919%_))))
                            (_%loop1371213909%_
                             _%lp-tl1371513926%_
                             (cons _%lp-hd1371413923%_ _%body1371613916%_))))
                        (let ((_%body1371713929%_
                               (reverse _%body1371613916%_)))
                          ((lambda (_%L13933%_
                                    _%L13935%_
                                    _%L13936%_
                                    _%L13937%_
                                    _%L13938%_
                                    _%L13939%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g1397213975%_
                                                  _%g1397313978%_)
                                           (cons _%g1397213975%_
                                                 _%g1397313978%_))
                                         '()
                                         _%L13939%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%L13938%_
                                                      _%L13939%_)
                                                     (foldr (lambda (_%g1398913993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g1399013996%_
                             _%g1399113998%_)
                      (cons (cons _%g1399013996%_ (cons _%g1398913993%_ '()))
                            _%g1399113998%_))
                    '()
                    _%L13938%_
                    _%L13939%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _%L13936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_%g1398714001%_
                                                               _%g1398814004%_)
                                                        (cons _%g1398714001%_
                                                              _%g1398814004%_))
                                                      '()
                                                      _%L13935%_)))
                                   (cons (cons (gx#datum->syntax '#f 'begin)
                                               (foldr (lambda (_%g1398014007%_
                                                               _%g1398114010%_)
                                                        (cons _%g1398014007%_
                                                              _%g1398114010%_))
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$loop)
                          (begin
                            (gx#syntax-check-splice-targets
                             _%L13937%_
                             _%L13939%_)
                            (foldr (lambda (_%g1398214013%_
                                            _%g1398314016%_
                                            _%g1398414018%_)
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons _%g1398314016%_
                                                       (foldr (lambda (_%g1398514021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1398614024%_)
                        (cons _%g1398514021%_ _%g1398614024%_))
                      '()
                      _%g1398214013%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g1398414018%_))
                                   '()
                                   _%L13937%_
                                   _%L13939%_)))
                    '())
              _%L13933%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g1366713738%_ _%g1366813742%_)))
                           _%body1371713929%_
                           _%fini1370813899%_
                           _%hd1369813867%_
                           _%step1369113845%_
                           _%init1369213848%_
                           _%var1369313850%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1371213909%_
                                                   _%target1370913903%_
                                                   '()))
                                                (_%g1366713738%_
                                                 _%g1366813742%_)))))
                                      (_%g1366713738%_ _%g1366813742%_)))))))
                  (_%loop1370313879%_ _%target1370013873%_ '()))
                (_%g1366713738%_ _%g1366813742%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1366713738%_
                                               _%g1366813742%_))))
                                      (_%g1366713738%_ _%g1366813742%_))))
                              (_%g1366713738%_ _%g1366813742%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1368413771%_
                                                   _%target1368113765%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g1366713738%_
                                                 _%g1366813742%_)))))
                                      (_%g1366713738%_ _%g1366813742%_))))
                              (_%g1366713738%_ _%g1366813742%_))))
                      (_%g1366713738%_ _%g1366813742%_)))))
          (_%g1366614027%_ _%$stx13663%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#do-while|
      (lambda (_%$stx14035%_)
        (let* ((_%g1403914062%_
                (lambda (_%g1404014058%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1404014058%_)))
               (_%g1403814133%_
                (lambda (_%g1404014066%_)
                  (if (gx#stx-pair? _%g1404014066%_)
                      (let ((_%e1404514069%_ (gx#syntax-e _%g1404014066%_)))
                        (let ((_%hd1404614073%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1404514069%_)))
                              (_%tl1404714076%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1404514069%_))))
                          (if (gx#stx-pair? _%tl1404714076%_)
                              (let ((_%e1404814079%_
                                     (gx#syntax-e _%tl1404714076%_)))
                                (let ((_%hd1404914083%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1404814079%_)))
                                      (_%tl1405014086%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1404814079%_))))
                                  (if (gx#stx-pair? _%tl1405014086%_)
                                      (let ((_%e1405114089%_
                                             (gx#syntax-e _%tl1405014086%_)))
                                        (let ((_%hd1405214093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1405114089%_)))
                                              (_%tl1405314096%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1405114089%_))))
                                          (if (gx#stx-pair? _%hd1405214093%_)
                                              (let ((_%e1405414099%_
                                                     (gx#syntax-e
                                                      _%hd1405214093%_)))
                                                (let ((_%hd1405514103%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1405414099%_)))
                                                      (_%tl1405614106%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1405414099%_))))
                                                  ((lambda (_%L14109%_
                                                            _%L14111%_
                                                            _%L14112%_
                                                            _%L14113%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'do)
                                                           (cons _%L14113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (gx#datum->syntax '#f 'not)
                                           (cons _%L14112%_ '()))
                                     _%L14111%_)
                               _%L14109%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%tl1405314096%_
                                                   _%tl1405614106%_
                                                   _%hd1405514103%_
                                                   _%hd1404914083%_)))
                                              (_%g1403914062%_
                                               _%g1404014066%_))))
                                      (_%g1403914062%_ _%g1404014066%_))))
                              (_%g1403914062%_ _%g1404014066%_))))
                      (_%g1403914062%_ _%g1404014066%_)))))
          (_%g1403814133%_ _%$stx14035%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#begin0|
      (lambda (_%$stx14137%_)
        (let* ((_%__stx1991419915%_ _%$stx14137%_)
               (_%g1414214173%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1991419915%_))))
          (let ((_%__kont1991719918%_ (lambda (_%L14285%_) _%L14285%_))
                (_%__kont1991919920%_
                 (lambda (_%L14230%_ _%L14232%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$r)
                                     (cons _%L14232%_ '()))
                               (cons (cons (gx#datum->syntax '#f '%#expression)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1424914252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1425014255%_)
                        (cons _%g1424914252%_ _%g1425014255%_))
                      '()
                      _%L14230%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (gx#datum->syntax '#f '$r)
                                           '())))))))
            (let ((_%__match1995719958%_
                   (lambda (_%e1415314180%_
                            _%hd1415414184%_
                            _%tl1415514187%_
                            _%e1415614190%_
                            _%hd1415714194%_
                            _%tl1415814197%_
                            _%__splice1992119922%_
                            _%target1415914200%_
                            _%tl1416114203%_)
                     (letrec ((_%loop1416214206%_
                               (lambda (_%hd1416014210%_ _%rest1416614213%_)
                                 (if (gx#stx-pair? _%hd1416014210%_)
                                     (let ((_%e1416314216%_
                                            (gx#syntax-e _%hd1416014210%_)))
                                       (let ((_%lp-tl1416514223%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1416314216%_)))
                                             (_%lp-hd1416414220%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1416314216%_))))
                                         (_%loop1416214206%_
                                          _%lp-tl1416514223%_
                                          (cons _%lp-hd1416414220%_
                                                _%rest1416614213%_))))
                                     (let ((_%rest1416714226%_
                                            (reverse _%rest1416614213%_)))
                                       (_%__kont1991919920%_
                                        _%rest1416714226%_
                                        _%hd1415714194%_))))))
                       (_%loop1416214206%_ _%target1415914200%_ '())))))
              (if (gx#stx-pair? _%__stx1991419915%_)
                  (let ((_%e1414514265%_ (gx#syntax-e _%__stx1991419915%_)))
                    (let ((_%tl1414714272%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1414514265%_)))
                          (_%hd1414614269%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1414514265%_))))
                      (if (gx#stx-pair? _%tl1414714272%_)
                          (let ((_%e1414814275%_
                                 (gx#syntax-e _%tl1414714272%_)))
                            (let ((_%tl1415014282%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1414814275%_)))
                                  (_%hd1414914279%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1414814275%_))))
                              (if (gx#stx-null? _%tl1415014282%_)
                                  (_%__kont1991719918%_ _%hd1414914279%_)
                                  (if (gx#stx-pair/null? _%tl1415014282%_)
                                      (let ((_%__splice1992119922%_
                                             (gx#syntax-split-splice
                                              _%tl1415014282%_
                                              '0)))
                                        (let ((_%tl1416114203%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1992119922%_
                                                  '1)))
                                              (_%target1415914200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1992119922%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1416114203%_)
                                              (_%__match1995719958%_
                                               _%e1414514265%_
                                               _%hd1414614269%_
                                               _%tl1414714272%_
                                               _%e1414814275%_
                                               _%hd1414914279%_
                                               _%tl1415014282%_
                                               _%__splice1992119922%_
                                               _%target1415914200%_
                                               _%tl1416114203%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1414214173%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1414214173%_))))))
                          (let () (declare (not safe)) (_%g1414214173%_)))))
                  (let () (declare (not safe)) (_%g1414214173%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#rec|
      (lambda (_%$stx14303%_)
        (let* ((_%__stx1996019961%_ _%$stx14303%_)
               (_%g1430914362%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1996019961%_))))
          (let ((_%__kont1996319964%_
                 (lambda (_%L14564%_ _%L14566%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%L14566%_ (cons _%L14564%_ '()))
                                     '())
                               (cons _%L14566%_ '())))))
                (_%__kont1996519966%_
                 (lambda (_%L14508%_ _%L14510%_)
                   (cons (gx#datum->syntax '#f 'letrec-values)
                         (cons (cons (cons _%L14510%_ (cons _%L14508%_ '()))
                                     '())
                               (cons (cons (gx#datum->syntax '#f 'values)
                                           _%L14510%_)
                                     '())))))
                (_%__kont1996719968%_
                 (lambda (_%L14429%_ _%L14431%_ _%L14432%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%L14432%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons _%L14431%_
                                                             (foldr (lambda (_%g1445214455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1445314458%_)
                              (cons _%g1445214455%_ _%g1445314458%_))
                            '()
                            _%L14429%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons _%L14432%_ '()))))))
            (let* ((_%__match2004720048%_
                    (lambda (_%e1433914369%_
                             _%hd1434014373%_
                             _%tl1434114376%_
                             _%e1434214379%_
                             _%hd1434314383%_
                             _%tl1434414386%_
                             _%e1434514389%_
                             _%hd1434614393%_
                             _%tl1434714396%_
                             _%__splice1996919970%_
                             _%target1434814399%_
                             _%tl1435014402%_)
                      (letrec ((_%loop1435114405%_
                                (lambda (_%hd1434914409%_ _%body1435514412%_)
                                  (if (gx#stx-pair? _%hd1434914409%_)
                                      (let ((_%e1435214415%_
                                             (gx#syntax-e _%hd1434914409%_)))
                                        (let ((_%lp-tl1435414422%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1435214415%_)))
                                              (_%lp-hd1435314419%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1435214415%_))))
                                          (_%loop1435114405%_
                                           _%lp-tl1435414422%_
                                           (cons _%lp-hd1435314419%_
                                                 _%body1435514412%_))))
                                      (let ((_%body1435614425%_
                                             (reverse _%body1435514412%_)))
                                        (let ((_%L14429%_ _%body1435614425%_)
                                              (_%L14431%_ _%tl1434714396%_)
                                              (_%L14432%_ _%hd1434614393%_))
                                          (if (gx#identifier? _%L14432%_)
                                              (_%__kont1996719968%_
                                               _%L14429%_
                                               _%L14431%_
                                               _%L14432%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1430914362%_)))))))))
                        (_%loop1435114405%_ _%target1434814399%_ '()))))
                   (_%__match2002120022%_
                    (lambda (_%e1432414468%_
                             _%hd1432514472%_
                             _%tl1432614475%_
                             _%e1432714478%_
                             _%hd1432814482%_
                             _%tl1432914485%_
                             _%e1433014488%_
                             _%hd1433114492%_
                             _%tl1433214495%_
                             _%e1433314498%_
                             _%hd1433414502%_
                             _%tl1433514505%_)
                      (let ((_%L14508%_ _%hd1433414502%_)
                            (_%L14510%_ _%tl1433214495%_))
                        (if (gx#identifier-list? _%L14510%_)
                            (_%__kont1996519966%_ _%L14508%_ _%L14510%_)
                            (if (gx#stx-pair/null? _%tl1432914485%_)
                                (let ((_%__splice1996919970%_
                                       (gx#syntax-split-splice
                                        _%tl1432914485%_
                                        '0)))
                                  (let ((_%tl1435014402%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1996919970%_
                                            '1)))
                                        (_%target1434814399%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1996919970%_
                                            '0))))
                                    (if (gx#stx-null? _%tl1435014402%_)
                                        (_%__match2004720048%_
                                         _%e1432414468%_
                                         _%hd1432514472%_
                                         _%tl1432614475%_
                                         _%e1432714478%_
                                         _%hd1432814482%_
                                         _%tl1432914485%_
                                         _%e1433014488%_
                                         _%hd1433114492%_
                                         _%tl1433214495%_
                                         _%__splice1996919970%_
                                         _%target1434814399%_
                                         _%tl1435014402%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1430914362%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1430914362%_)))))))
                   (_%__match1999119992%_
                    (lambda (_%e1431314534%_
                             _%hd1431414538%_
                             _%tl1431514541%_
                             _%e1431614544%_
                             _%hd1431714548%_
                             _%tl1431814551%_
                             _%e1431914554%_
                             _%hd1432014558%_
                             _%tl1432114561%_)
                      (let ((_%L14564%_ _%hd1432014558%_)
                            (_%L14566%_ _%hd1431714548%_))
                        (if (gx#identifier? _%L14566%_)
                            (_%__kont1996319964%_ _%L14564%_ _%L14566%_)
                            (if (gx#stx-pair? _%hd1431714548%_)
                                (let ((_%e1433014488%_
                                       (gx#syntax-e _%hd1431714548%_)))
                                  (let ((_%tl1433214495%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1433014488%_)))
                                        (_%hd1433114492%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1433014488%_))))
                                    (if (gx#identifier? _%hd1433114492%_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core/sugar~Sugar-2[1]#_g20992_|
                                             _%hd1433114492%_)
                                            (_%__match2002120022%_
                                             _%e1431314534%_
                                             _%hd1431414538%_
                                             _%tl1431514541%_
                                             _%e1431614544%_
                                             _%hd1431714548%_
                                             _%tl1431814551%_
                                             _%e1433014488%_
                                             _%hd1433114492%_
                                             _%tl1433214495%_
                                             _%e1431914554%_
                                             _%hd1432014558%_
                                             _%tl1432114561%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl1431814551%_)
                                                (let ((_%__splice1996919970%_
                                                       (gx#syntax-split-splice
                                                        _%tl1431814551%_
                                                        '0)))
                                                  (let ((_%tl1435014402%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1996919970%_
                                                            '1)))
                                                        (_%target1434814399%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1996919970%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl1435014402%_)
                                                        (_%__match2004720048%_
                                                         _%e1431314534%_
                                                         _%hd1431414538%_
                                                         _%tl1431514541%_
                                                         _%e1431614544%_
                                                         _%hd1431714548%_
                                                         _%tl1431814551%_
                                                         _%e1433014488%_
                                                         _%hd1433114492%_
                                                         _%tl1433214495%_
                                                         _%__splice1996919970%_
                                                         _%target1434814399%_
                                                         _%tl1435014402%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g1430914362%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1430914362%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl1431814551%_)
                                            (let ((_%__splice1996919970%_
                                                   (gx#syntax-split-splice
                                                    _%tl1431814551%_
                                                    '0)))
                                              (let ((_%tl1435014402%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1996919970%_
                                                        '1)))
                                                    (_%target1434814399%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1996919970%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1435014402%_)
                                                    (_%__match2004720048%_
                                                     _%e1431314534%_
                                                     _%hd1431414538%_
                                                     _%tl1431514541%_
                                                     _%e1431614544%_
                                                     _%hd1431714548%_
                                                     _%tl1431814551%_
                                                     _%e1433014488%_
                                                     _%hd1433114492%_
                                                     _%tl1433214495%_
                                                     _%__splice1996919970%_
                                                     _%target1434814399%_
                                                     _%tl1435014402%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1430914362%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g1430914362%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1430914362%_))))))))
              (if (gx#stx-pair? _%__stx1996019961%_)
                  (let ((_%e1431314534%_ (gx#syntax-e _%__stx1996019961%_)))
                    (let ((_%tl1431514541%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1431314534%_)))
                          (_%hd1431414538%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1431314534%_))))
                      (if (gx#stx-pair? _%tl1431514541%_)
                          (let ((_%e1431614544%_
                                 (gx#syntax-e _%tl1431514541%_)))
                            (let ((_%tl1431814551%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1431614544%_)))
                                  (_%hd1431714548%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1431614544%_))))
                              (if (gx#stx-pair? _%tl1431814551%_)
                                  (let ((_%e1431914554%_
                                         (gx#syntax-e _%tl1431814551%_)))
                                    (let ((_%tl1432114561%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1431914554%_)))
                                          (_%hd1432014558%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1431914554%_))))
                                      (if (gx#stx-null? _%tl1432114561%_)
                                          (_%__match1999119992%_
                                           _%e1431314534%_
                                           _%hd1431414538%_
                                           _%tl1431514541%_
                                           _%e1431614544%_
                                           _%hd1431714548%_
                                           _%tl1431814551%_
                                           _%e1431914554%_
                                           _%hd1432014558%_
                                           _%tl1432114561%_)
                                          (if (gx#stx-pair? _%hd1431714548%_)
                                              (let ((_%e1433014488%_
                                                     (gx#syntax-e
                                                      _%hd1431714548%_)))
                                                (let ((_%tl1433214495%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1433014488%_)))
                                                      (_%hd1433114492%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1433014488%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl1431814551%_)
                                                      (let ((_%__splice1996919970%_
                                                             (gx#syntax-split-splice
                                                              _%tl1431814551%_
                                                              '0)))
                                                        (let ((_%tl1435014402%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice1996919970%_ '1)))
                      (_%target1434814399%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice1996919970%_ '0))))
                  (if (gx#stx-null? _%tl1435014402%_)
                      (_%__match2004720048%_
                       _%e1431314534%_
                       _%hd1431414538%_
                       _%tl1431514541%_
                       _%e1431614544%_
                       _%hd1431714548%_
                       _%tl1431814551%_
                       _%e1433014488%_
                       _%hd1433114492%_
                       _%tl1433214495%_
                       _%__splice1996919970%_
                       _%target1434814399%_
                       _%tl1435014402%_)
                      (let () (declare (not safe)) (_%g1430914362%_)))))
              (let () (declare (not safe)) (_%g1430914362%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1430914362%_))))))
                                  (if (gx#stx-pair? _%hd1431714548%_)
                                      (let ((_%e1433014488%_
                                             (gx#syntax-e _%hd1431714548%_)))
                                        (let ((_%tl1433214495%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1433014488%_)))
                                              (_%hd1433114492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1433014488%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1431814551%_)
                                              (let ((_%__splice1996919970%_
                                                     (gx#syntax-split-splice
                                                      _%tl1431814551%_
                                                      '0)))
                                                (let ((_%tl1435014402%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1996919970%_
                                                          '1)))
                                                      (_%target1434814399%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1996919970%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1435014402%_)
                                                      (_%__match2004720048%_
                                                       _%e1431314534%_
                                                       _%hd1431414538%_
                                                       _%tl1431514541%_
                                                       _%e1431614544%_
                                                       _%hd1431714548%_
                                                       _%tl1431814551%_
                                                       _%e1433014488%_
                                                       _%hd1433114492%_
                                                       _%tl1433214495%_
                                                       _%__splice1996919970%_
                                                       _%target1434814399%_
                                                       _%tl1435014402%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1430914362%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1430914362%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1430914362%_))))))
                          (let () (declare (not safe)) (_%g1430914362%_)))))
                  (let () (declare (not safe)) (_%g1430914362%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet|
      (lambda (_%stx14586%_)
        (letrec ((_%let-bind?14589%_
                  (lambda (_%x15512%_)
                    (let* ((_%__stx2005020051%_ _%x15512%_)
                           (_%g1551715536%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2005020051%_))))
                      (let ((_%__kont2005320054%_
                             (lambda (_%L15604%_ _%L15606%_)
                               (_%let-head?14592%_ _%L15606%_)))
                            (_%__kont2005520056%_ (lambda (_%L15564%_) '#t))
                            (_%__kont2005720058%_ (lambda () '#f)))
                        (if (gx#stx-pair? _%__stx2005020051%_)
                            (let ((_%e1552115584%_
                                   (gx#syntax-e _%__stx2005020051%_)))
                              (let ((_%tl1552315591%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1552115584%_)))
                                    (_%hd1552215588%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1552115584%_))))
                                (if (gx#stx-pair? _%tl1552315591%_)
                                    (let ((_%e1552415594%_
                                           (gx#syntax-e _%tl1552315591%_)))
                                      (let ((_%tl1552615601%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1552415594%_)))
                                            (_%hd1552515598%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1552415594%_))))
                                        (if (gx#stx-null? _%tl1552615601%_)
                                            (_%__kont2005320054%_
                                             _%hd1552515598%_
                                             _%hd1552215588%_)
                                            (_%__kont2005720058%_))))
                                    (if (gx#stx-null? _%tl1552315591%_)
                                        (_%__kont2005520056%_ _%hd1552215588%_)
                                        (_%__kont2005720058%_)))))
                            (_%__kont2005720058%_))))))
                 (_%let-bind14591%_
                  (lambda (_%x15414%_)
                    (let* ((_%__stx2008420085%_ _%x15414%_)
                           (_%g1541815437%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2008420085%_))))
                      (let ((_%__kont2008720088%_
                             (lambda (_%L15493%_ _%L15495%_) _%x15414%_))
                            (_%__kont2008920090%_
                             (lambda (_%L15454%_)
                               (cons (gx#datum->syntax '#f '_)
                                     (cons _%L15454%_ '())))))
                        (if (gx#stx-pair? _%__stx2008420085%_)
                            (let ((_%e1542215473%_
                                   (gx#syntax-e _%__stx2008420085%_)))
                              (let ((_%tl1542415480%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1542215473%_)))
                                    (_%hd1542315477%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1542215473%_))))
                                (if (gx#stx-pair? _%tl1542415480%_)
                                    (let ((_%e1542515483%_
                                           (gx#syntax-e _%tl1542415480%_)))
                                      (let ((_%tl1542715490%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1542515483%_)))
                                            (_%hd1542615487%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1542515483%_))))
                                        (if (gx#stx-null? _%tl1542715490%_)
                                            (_%__kont2008720088%_
                                             _%hd1542615487%_
                                             _%hd1542315477%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1541815437%_)))))
                                    (if (gx#stx-null? _%tl1542415480%_)
                                        (_%__kont2008920090%_ _%hd1542315477%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1541815437%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g1541815437%_)))))))
                 (_%let-head?14592%_
                  (lambda (_%x15354%_)
                    (let* ((_%__stx2011620117%_ _%x15354%_)
                           (_%g1535815369%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2011620117%_))))
                      (let ((_%__kont2011920120%_
                             (lambda (_%L15397%_)
                               (gx#stx-andmap gx#identifier? _%L15397%_)))
                            (_%__kont2012120122%_
                             (lambda () (gx#identifier? _%x15354%_))))
                        (if (gx#stx-pair? _%__stx2011620117%_)
                            (let ((_%e1536115387%_
                                   (gx#syntax-e _%__stx2011620117%_)))
                              (let ((_%tl1536315394%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1536115387%_)))
                                    (_%hd1536215391%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1536115387%_))))
                                (if (gx#identifier? _%hd1536215391%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g20993_|
                                         _%hd1536215391%_)
                                        (_%__kont2011920120%_ _%tl1536315394%_)
                                        (_%__kont2012120122%_))
                                    (_%__kont2012120122%_))))
                            (_%__kont2012120122%_))))))
                 (_%let-head14593%_
                  (lambda (_%x15294%_)
                    (let* ((_%__stx2013620137%_ _%x15294%_)
                           (_%g1529815309%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2013620137%_))))
                      (let ((_%__kont2013920140%_
                             (lambda (_%L15337%_) _%L15337%_))
                            (_%__kont2014120142%_
                             (lambda () (list _%x15294%_))))
                        (if (gx#stx-pair? _%__stx2013620137%_)
                            (let ((_%e1530115327%_
                                   (gx#syntax-e _%__stx2013620137%_)))
                              (let ((_%tl1530315334%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1530115327%_)))
                                    (_%hd1530215331%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1530115327%_))))
                                (if (gx#identifier? _%hd1530215331%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g20994_|
                                         _%hd1530215331%_)
                                        (_%__kont2013920140%_ _%tl1530315334%_)
                                        (_%__kont2014120142%_))
                                    (_%__kont2014120142%_))))
                            (_%__kont2014120142%_)))))))
          (let* ((_%__stx2015620157%_ _%stx14586%_)
                 (_%g1459714669%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2015620157%_))))
            (let ((_%__kont2015920160%_
                   (lambda (_%L15267%_ _%L15269%_ _%L15270%_ _%L15271%_)
                     (cons _%L15271%_
                           (cons (cons (cons _%L15270%_ (cons _%L15269%_ '()))
                                       '())
                                 _%L15267%_))))
                  (_%__kont2016120162%_
                   (lambda (_%L15189%_ _%L15191%_)
                     (cons (gx#datum->syntax '#f 'and)
                           (cons _%L15191%_
                                 (cons (cons (gx#datum->syntax '#f 'let)
                                             (cons '()
                                                   (foldr (lambda (_%g1521115214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1521215217%_)
                    (cons _%g1521115214%_ _%g1521215217%_))
                  '()
                  _%L15189%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                  (_%__kont2016520166%_
                   (lambda (_%L14756%_ _%L14758%_)
                     (let* ((_%g1478914815%_
                             (lambda (_%g1479014811%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g1479014811%_)))
                            (_%g1478815100%_
                             (lambda (_%g1479014819%_)
                               (if (gx#stx-pair/null? _%g1479014819%_)
                                   (let ((_g20995_
                                          (gx#syntax-split-splice
                                           _%g1479014819%_
                                           '0)))
                                     (begin
                                       (let ((_g20996_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20995_)
                                                    (##vector-length _g20995_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20996_ 2)))
                                             (error "Context expects 2 values"
                                                    _g20996_)))
                                       (let ((_%target1479314822%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20995_ 0)))
                                             (_%tl1479514825%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20995_ 1))))
                                         (if (gx#stx-null? _%tl1479514825%_)
                                             (letrec ((_%loop1479614828%_
                                                       (lambda (_%hd1479414832%_
                                                                _%e1480014835%_
                                                                _%hd1480114837%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1479414832%_)
                                                             (let ((_%e1479714840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1479414832%_)))
                       (let ((_%lp-hd1479814844%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1479714840%_)))
                             (_%lp-tl1479914847%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1479714840%_))))
                         (if (gx#stx-pair? _%lp-hd1479814844%_)
                             (let ((_%e1480414850%_
                                    (gx#syntax-e _%lp-hd1479814844%_)))
                               (let ((_%hd1480514854%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1480414850%_)))
                                     (_%tl1480614857%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1480414850%_))))
                                 (if (gx#stx-pair? _%tl1480614857%_)
                                     (let ((_%e1480714860%_
                                            (gx#syntax-e _%tl1480614857%_)))
                                       (let ((_%hd1480814864%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1480714860%_)))
                                             (_%tl1480914867%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1480714860%_))))
                                         (if (gx#stx-null? _%tl1480914867%_)
                                             (_%loop1479614828%_
                                              _%lp-tl1479914847%_
                                              (cons _%hd1480814864%_
                                                    _%e1480014835%_)
                                              (cons _%hd1480514854%_
                                                    _%hd1480114837%_))
                                             (_%g1478914815%_
                                              _%g1479014819%_))))
                                     (_%g1478914815%_ _%g1479014819%_))))
                             (_%g1478914815%_ _%g1479014819%_))))
                     (let ((_%e1480214870%_ (reverse _%e1480014835%_))
                           (_%hd1480314873%_ (reverse _%hd1480114837%_)))
                       ((lambda (_%L14876%_ _%L14878%_)
                          (let* ((_%g1489414911%_
                                  (lambda (_%g1489514907%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1489514907%_)))
                                 (_%g1489315088%_
                                  (lambda (_%g1489514915%_)
                                    (if (gx#stx-pair/null? _%g1489514915%_)
                                        (let ((_g20997_
                                               (gx#syntax-split-splice
                                                _%g1489514915%_
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
                                            (let ((_%target1489714918%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g20997_
                                                      0)))
                                                  (_%tl1489914921%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g20997_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl1489914921%_)
                                                  (letrec ((_%loop1490014924%_
                                                            (lambda (_%hd1489814928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$e1490414931%_)
                      (if (gx#stx-pair? _%hd1489814928%_)
                          (let ((_%e1490114934%_
                                 (gx#syntax-e _%hd1489814928%_)))
                            (let ((_%lp-hd1490214938%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1490114934%_)))
                                  (_%lp-tl1490314941%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1490114934%_))))
                              (_%loop1490014924%_
                               _%lp-tl1490314941%_
                               (cons _%lp-hd1490214938%_ _%$e1490414931%_))))
                          (let ((_%$e1490514944%_ (reverse _%$e1490414931%_)))
                            ((lambda (_%L14948%_)
                               (let* ((_%g1496514982%_
                                       (lambda (_%g1496614978%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1496614978%_)))
                                      (_%g1496415076%_
                                       (lambda (_%g1496614986%_)
                                         (if (gx#stx-pair/null?
                                              _%g1496614986%_)
                                             (let ((_g20999_
                                                    (gx#syntax-split-splice
                                                     _%g1496614986%_
                                                     '0)))
                                               (begin
                                                 (let ((_g21000_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g20999_)
                                                              (##vector-length
                                                               _g20999_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g21000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g21000_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target1496814989%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g20999_
                                                           0)))
                                                       (_%tl1497014992%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g20999_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl1497014992%_)
                                                       (letrec ((_%loop1497114995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd1496914999%_ _%hd-bind1497515002%_)
                           (if (gx#stx-pair? _%hd1496914999%_)
                               (let ((_%e1497215005%_
                                      (gx#syntax-e _%hd1496914999%_)))
                                 (let ((_%lp-hd1497315009%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1497215005%_)))
                                       (_%lp-tl1497415012%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1497215005%_))))
                                   (_%loop1497114995%_
                                    _%lp-tl1497415012%_
                                    (cons _%lp-hd1497315009%_
                                          _%hd-bind1497515002%_))))
                               (let ((_%hd-bind1497615015%_
                                      (reverse _%hd-bind1497515002%_)))
                                 ((lambda (_%L15019%_)
                                    (cons (gx#datum->syntax '#f 'let-values)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%L14876%_
                                                   _%L14948%_)
                                                  (foldr (lambda (_%g1504415048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1504515051%_
                          _%g1504615053%_)
                   (cons (cons (cons _%g1504515051%_ '())
                               (cons _%g1504415048%_ '()))
                         _%g1504615053%_))
                 '()
                 _%L14876%_
                 _%L14948%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'and)
                                                            (foldr (lambda (_%g1503715056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1503815059%_)
                             (cons _%g1503715056%_ _%g1503815059%_))
                           (cons (cons (gx#datum->syntax '#f 'let-values)
                                       (cons (begin
                                               (gx#syntax-check-splice-targets
                                                _%L14948%_
                                                _%L15019%_)
                                               (foldr (lambda (_%g1504115062%_
                                                               _%g1504215065%_
                                                               _%g1504315067%_)
                                                        (cons (cons _%g1504215065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g1504115062%_ '()))
                      _%g1504315067%_))
              '()
              _%L14948%_
              _%L15019%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (foldr (lambda (_%g1503915070%_
                                                             _%g1504015073%_)
                                                      (cons _%g1503915070%_
                                                            _%g1504015073%_))
                                                    '()
                                                    _%L14756%_)))
                                 '())
                           _%L14948%_))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%hd-bind1497615015%_))))))
                 (_%loop1497114995%_ _%target1496814989%_ '()))
               (_%g1496514982%_ _%g1496614986%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g1496514982%_
                                              _%g1496614986%_)))))
                                 (_%g1496415076%_
                                  (gx#stx-map
                                   _%let-head14593%_
                                   (foldr (lambda (_%g1507915082%_
                                                   _%g1508015085%_)
                                            (cons _%g1507915082%_
                                                  _%g1508015085%_))
                                          '()
                                          _%L14878%_)))))
                             _%$e1490514944%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop1490014924%_
                                                     _%target1489714918%_
                                                     '()))
                                                  (_%g1489414911%_
                                                   _%g1489514915%_)))))
                                        (_%g1489414911%_ _%g1489514915%_)))))
                            (_%g1489315088%_
                             (gx#gentemps
                              (foldr (lambda (_%g1509115094%_ _%g1509215097%_)
                                       (cons _%g1509115094%_ _%g1509215097%_))
                                     '()
                                     _%L14878%_)))))
                        _%e1480214870%_
                        _%hd1480314873%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1479614828%_
                                                _%target1479314822%_
                                                '()
                                                '()))
                                             (_%g1478914815%_
                                              _%g1479014819%_)))))
                                   (_%g1478914815%_ _%g1479014819%_)))))
                       (_%g1478815100%_
                        (gx#stx-map
                         _%let-bind14591%_
                         (foldr (lambda (_%g1510315106%_ _%g1510415109%_)
                                  (cons _%g1510315106%_ _%g1510415109%_))
                                '()
                                _%L14758%_)))))))
              (let* ((_%__match2025320254%_
                      (lambda (_%e1464014676%_
                               _%hd1464114680%_
                               _%tl1464214683%_
                               _%e1464314686%_
                               _%hd1464414690%_
                               _%tl1464514693%_
                               _%__splice2016720168%_
                               _%target1464614696%_
                               _%tl1464814699%_)
                        (letrec ((_%loop1464914702%_
                                  (lambda (_%hd1464714706%_ _%bind1465314709%_)
                                    (if (gx#stx-pair? _%hd1464714706%_)
                                        (let ((_%e1465014712%_
                                               (gx#syntax-e _%hd1464714706%_)))
                                          (let ((_%lp-tl1465214719%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1465014712%_)))
                                                (_%lp-hd1465114716%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1465014712%_))))
                                            (_%loop1464914702%_
                                             _%lp-tl1465214719%_
                                             (cons _%lp-hd1465114716%_
                                                   _%bind1465314709%_))))
                                        (let ((_%bind1465414722%_
                                               (reverse _%bind1465314709%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl1464514693%_)
                                              (let ((_%__splice2016920170%_
                                                     (gx#syntax-split-splice
                                                      _%tl1464514693%_
                                                      '0)))
                                                (let ((_%tl1465714729%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2016920170%_
                                                          '1)))
                                                      (_%target1465514726%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2016920170%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1465714729%_)
                                                      (letrec ((_%loop1465814732%_
                                                                (lambda (_%hd1465614736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body1466214739%_)
                          (if (gx#stx-pair? _%hd1465614736%_)
                              (let ((_%e1465914742%_
                                     (gx#syntax-e _%hd1465614736%_)))
                                (let ((_%lp-tl1466114749%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1465914742%_)))
                                      (_%lp-hd1466014746%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1465914742%_))))
                                  (_%loop1465814732%_
                                   _%lp-tl1466114749%_
                                   (cons _%lp-hd1466014746%_
                                         _%body1466214739%_))))
                              (let ((_%body1466314752%_
                                     (reverse _%body1466214739%_)))
                                (let ((_%L14756%_ _%body1466314752%_)
                                      (_%L14758%_ _%bind1465414722%_))
                                  (if (gx#stx-andmap
                                       _%let-bind?14589%_
                                       (foldr (lambda (_%g1478014783%_
                                                       _%g1478114786%_)
                                                (cons _%g1478014783%_
                                                      _%g1478114786%_))
                                              '()
                                              _%L14758%_))
                                      (_%__kont2016520166%_
                                       _%L14756%_
                                       _%L14758%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g1459714669%_)))))))))
                (_%loop1465814732%_ _%target1465514726%_ '()))
              (let () (declare (not safe)) (_%g1459714669%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1459714669%_))))))))
                          (_%loop1464914702%_ _%target1464614696%_ '()))))
                     (_%__match2023320234%_
                      (lambda (_%e1461715119%_
                               _%hd1461815123%_
                               _%tl1461915126%_
                               _%e1462015129%_
                               _%hd1462115133%_
                               _%tl1462215136%_
                               _%e1462315139%_
                               _%hd1462415143%_
                               _%tl1462515146%_
                               _%e1462615149%_
                               _%hd1462715153%_
                               _%tl1462815156%_
                               _%__splice2016320164%_
                               _%target1462915159%_
                               _%tl1463115162%_)
                        (letrec ((_%loop1463215165%_
                                  (lambda (_%hd1463015169%_ _%body1463615172%_)
                                    (if (gx#stx-pair? _%hd1463015169%_)
                                        (let ((_%e1463315175%_
                                               (gx#syntax-e _%hd1463015169%_)))
                                          (let ((_%lp-tl1463515182%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1463315175%_)))
                                                (_%lp-hd1463415179%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1463315175%_))))
                                            (_%loop1463215165%_
                                             _%lp-tl1463515182%_
                                             (cons _%lp-hd1463415179%_
                                                   _%body1463615172%_))))
                                        (let ((_%body1463715185%_
                                               (reverse _%body1463615172%_)))
                                          (_%__kont2016120162%_
                                           _%body1463715185%_
                                           _%hd1462715153%_))))))
                          (_%loop1463215165%_ _%target1462915159%_ '()))))
                     (_%__match2019720198%_
                      (lambda (_%e1460315227%_
                               _%hd1460415231%_
                               _%tl1460515234%_
                               _%e1460615237%_
                               _%hd1460715241%_
                               _%tl1460815244%_
                               _%e1460915247%_
                               _%hd1461015251%_
                               _%tl1461115254%_
                               _%e1461215257%_
                               _%hd1461315261%_
                               _%tl1461415264%_)
                        (let ((_%L15267%_ _%tl1460815244%_)
                              (_%L15269%_ _%hd1461315261%_)
                              (_%L15270%_ _%hd1461015251%_)
                              (_%L15271%_ _%hd1460415231%_))
                          (if (_%let-head?14592%_ _%L15270%_)
                              (_%__kont2015920160%_
                               _%L15267%_
                               _%L15269%_
                               _%L15270%_
                               _%L15271%_)
                              (if (gx#stx-pair? _%hd1461015251%_)
                                  (let ((_%e1462615149%_
                                         (gx#syntax-e _%hd1461015251%_)))
                                    (let ((_%tl1462815156%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1462615149%_)))
                                          (_%hd1462715153%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1462615149%_))))
                                      (if (gx#stx-pair/null? _%hd1460715241%_)
                                          (let ((_%__splice2016720168%_
                                                 (gx#syntax-split-splice
                                                  _%hd1460715241%_
                                                  '0)))
                                            (let ((_%tl1464814699%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2016720168%_
                                                      '1)))
                                                  (_%target1464614696%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2016720168%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1464814699%_)
                                                  (_%__match2025320254%_
                                                   _%e1460315227%_
                                                   _%hd1460415231%_
                                                   _%tl1460515234%_
                                                   _%e1460615237%_
                                                   _%hd1460715241%_
                                                   _%tl1460815244%_
                                                   _%__splice2016720168%_
                                                   _%target1464614696%_
                                                   _%tl1464814699%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1459714669%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1459714669%_)))))
                                  (if (gx#stx-pair/null? _%hd1460715241%_)
                                      (let ((_%__splice2016720168%_
                                             (gx#syntax-split-splice
                                              _%hd1460715241%_
                                              '0)))
                                        (let ((_%tl1464814699%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2016720168%_
                                                  '1)))
                                              (_%target1464614696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2016720168%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1464814699%_)
                                              (_%__match2025320254%_
                                               _%e1460315227%_
                                               _%hd1460415231%_
                                               _%tl1460515234%_
                                               _%e1460615237%_
                                               _%hd1460715241%_
                                               _%tl1460815244%_
                                               _%__splice2016720168%_
                                               _%target1464614696%_
                                               _%tl1464814699%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1459714669%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1459714669%_)))))))))
                (if (gx#stx-pair? _%__stx2015620157%_)
                    (let ((_%e1460315227%_ (gx#syntax-e _%__stx2015620157%_)))
                      (let ((_%tl1460515234%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1460315227%_)))
                            (_%hd1460415231%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1460315227%_))))
                        (if (gx#stx-pair? _%tl1460515234%_)
                            (let ((_%e1460615237%_
                                   (gx#syntax-e _%tl1460515234%_)))
                              (let ((_%tl1460815244%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1460615237%_)))
                                    (_%hd1460715241%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1460615237%_))))
                                (if (gx#stx-pair? _%hd1460715241%_)
                                    (let ((_%e1460915247%_
                                           (gx#syntax-e _%hd1460715241%_)))
                                      (let ((_%tl1461115254%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1460915247%_)))
                                            (_%hd1461015251%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1460915247%_))))
                                        (if (gx#stx-pair? _%tl1461115254%_)
                                            (let ((_%e1461215257%_
                                                   (gx#syntax-e
                                                    _%tl1461115254%_)))
                                              (let ((_%tl1461415264%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1461215257%_)))
                                                    (_%hd1461315261%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1461215257%_))))
                                                (if (gx#stx-null?
                                                     _%tl1461415264%_)
                                                    (_%__match2019720198%_
                                                     _%e1460315227%_
                                                     _%hd1460415231%_
                                                     _%tl1460515234%_
                                                     _%e1460615237%_
                                                     _%hd1460715241%_
                                                     _%tl1460815244%_
                                                     _%e1460915247%_
                                                     _%hd1461015251%_
                                                     _%tl1461115254%_
                                                     _%e1461215257%_
                                                     _%hd1461315261%_
                                                     _%tl1461415264%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1461015251%_)
                                                        (let ((_%e1462615149%_
                                                               (gx#syntax-e
                                                                _%hd1461015251%_)))
                                                          (let ((_%tl1462815156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e1462615149%_)))
                        (_%hd1462715153%_
                         (let ()
                           (declare (not safe))
                           (##car _%e1462615149%_))))
                    (if (gx#stx-pair/null? _%hd1460715241%_)
                        (let ((_%__splice2016720168%_
                               (gx#syntax-split-splice _%hd1460715241%_ '0)))
                          (let ((_%tl1464814699%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2016720168%_ '1)))
                                (_%target1464614696%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2016720168%_ '0))))
                            (if (gx#stx-null? _%tl1464814699%_)
                                (_%__match2025320254%_
                                 _%e1460315227%_
                                 _%hd1460415231%_
                                 _%tl1460515234%_
                                 _%e1460615237%_
                                 _%hd1460715241%_
                                 _%tl1460815244%_
                                 _%__splice2016720168%_
                                 _%target1464614696%_
                                 _%tl1464814699%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1459714669%_)))))
                        (let () (declare (not safe)) (_%g1459714669%_)))))
                (if (gx#stx-pair/null? _%hd1460715241%_)
                    (let ((_%__splice2016720168%_
                           (gx#syntax-split-splice _%hd1460715241%_ '0)))
                      (let ((_%tl1464814699%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2016720168%_ '1)))
                            (_%target1464614696%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2016720168%_ '0))))
                        (if (gx#stx-null? _%tl1464814699%_)
                            (_%__match2025320254%_
                             _%e1460315227%_
                             _%hd1460415231%_
                             _%tl1460515234%_
                             _%e1460615237%_
                             _%hd1460715241%_
                             _%tl1460815244%_
                             _%__splice2016720168%_
                             _%target1464614696%_
                             _%tl1464814699%_)
                            (let () (declare (not safe)) (_%g1459714669%_)))))
                    (let () (declare (not safe)) (_%g1459714669%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%hd1461015251%_)
                                                (let ((_%e1462615149%_
                                                       (gx#syntax-e
                                                        _%hd1461015251%_)))
                                                  (let ((_%tl1462815156%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1462615149%_)))
                                                        (_%hd1462715153%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1462615149%_))))
                                                    (if (gx#stx-null?
                                                         _%tl1462815156%_)
                                                        (if (gx#stx-null?
                                                             _%tl1461115254%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl1460815244%_)
                        (let ((_%__splice2016320164%_
                               (gx#syntax-split-splice _%tl1460815244%_ '0)))
                          (let ((_%tl1463115162%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2016320164%_ '1)))
                                (_%target1462915159%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2016320164%_ '0))))
                            (if (gx#stx-null? _%tl1463115162%_)
                                (_%__match2023320234%_
                                 _%e1460315227%_
                                 _%hd1460415231%_
                                 _%tl1460515234%_
                                 _%e1460615237%_
                                 _%hd1460715241%_
                                 _%tl1460815244%_
                                 _%e1460915247%_
                                 _%hd1461015251%_
                                 _%tl1461115254%_
                                 _%e1462615149%_
                                 _%hd1462715153%_
                                 _%tl1462815156%_
                                 _%__splice2016320164%_
                                 _%target1462915159%_
                                 _%tl1463115162%_)
                                (if (gx#stx-pair/null? _%hd1460715241%_)
                                    (let ((_%__splice2016720168%_
                                           (gx#syntax-split-splice
                                            _%hd1460715241%_
                                            '0)))
                                      (let ((_%tl1464814699%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2016720168%_
                                                '1)))
                                            (_%target1464614696%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2016720168%_
                                                '0))))
                                        (if (gx#stx-null? _%tl1464814699%_)
                                            (_%__match2025320254%_
                                             _%e1460315227%_
                                             _%hd1460415231%_
                                             _%tl1460515234%_
                                             _%e1460615237%_
                                             _%hd1460715241%_
                                             _%tl1460815244%_
                                             _%__splice2016720168%_
                                             _%target1464614696%_
                                             _%tl1464814699%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1459714669%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g1459714669%_))))))
                        (if (gx#stx-pair/null? _%hd1460715241%_)
                            (let ((_%__splice2016720168%_
                                   (gx#syntax-split-splice
                                    _%hd1460715241%_
                                    '0)))
                              (let ((_%tl1464814699%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2016720168%_
                                        '1)))
                                    (_%target1464614696%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2016720168%_
                                        '0))))
                                (if (gx#stx-null? _%tl1464814699%_)
                                    (_%__match2025320254%_
                                     _%e1460315227%_
                                     _%hd1460415231%_
                                     _%tl1460515234%_
                                     _%e1460615237%_
                                     _%hd1460715241%_
                                     _%tl1460815244%_
                                     _%__splice2016720168%_
                                     _%target1464614696%_
                                     _%tl1464814699%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g1459714669%_)))))
                            (let () (declare (not safe)) (_%g1459714669%_))))
                    (if (gx#stx-pair/null? _%hd1460715241%_)
                        (let ((_%__splice2016720168%_
                               (gx#syntax-split-splice _%hd1460715241%_ '0)))
                          (let ((_%tl1464814699%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2016720168%_ '1)))
                                (_%target1464614696%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2016720168%_ '0))))
                            (if (gx#stx-null? _%tl1464814699%_)
                                (_%__match2025320254%_
                                 _%e1460315227%_
                                 _%hd1460415231%_
                                 _%tl1460515234%_
                                 _%e1460615237%_
                                 _%hd1460715241%_
                                 _%tl1460815244%_
                                 _%__splice2016720168%_
                                 _%target1464614696%_
                                 _%tl1464814699%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1459714669%_)))))
                        (let () (declare (not safe)) (_%g1459714669%_))))
                (if (gx#stx-pair/null? _%hd1460715241%_)
                    (let ((_%__splice2016720168%_
                           (gx#syntax-split-splice _%hd1460715241%_ '0)))
                      (let ((_%tl1464814699%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2016720168%_ '1)))
                            (_%target1464614696%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2016720168%_ '0))))
                        (if (gx#stx-null? _%tl1464814699%_)
                            (_%__match2025320254%_
                             _%e1460315227%_
                             _%hd1460415231%_
                             _%tl1460515234%_
                             _%e1460615237%_
                             _%hd1460715241%_
                             _%tl1460815244%_
                             _%__splice2016720168%_
                             _%target1464614696%_
                             _%tl1464814699%_)
                            (let () (declare (not safe)) (_%g1459714669%_)))))
                    (let () (declare (not safe)) (_%g1459714669%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%hd1460715241%_)
                                                    (let ((_%__splice2016720168%_
                                                           (gx#syntax-split-splice
                                                            _%hd1460715241%_
                                                            '0)))
                                                      (let ((_%tl1464814699%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice2016720168%_ '1)))
                    (_%target1464614696%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice2016720168%_ '0))))
                (if (gx#stx-null? _%tl1464814699%_)
                    (_%__match2025320254%_
                     _%e1460315227%_
                     _%hd1460415231%_
                     _%tl1460515234%_
                     _%e1460615237%_
                     _%hd1460715241%_
                     _%tl1460815244%_
                     _%__splice2016720168%_
                     _%target1464614696%_
                     _%tl1464814699%_)
                    (let () (declare (not safe)) (_%g1459714669%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1459714669%_)))))))
                                    (if (gx#stx-pair/null? _%hd1460715241%_)
                                        (let ((_%__splice2016720168%_
                                               (gx#syntax-split-splice
                                                _%hd1460715241%_
                                                '0)))
                                          (let ((_%tl1464814699%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2016720168%_
                                                    '1)))
                                                (_%target1464614696%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2016720168%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1464814699%_)
                                                (_%__match2025320254%_
                                                 _%e1460315227%_
                                                 _%hd1460415231%_
                                                 _%tl1460515234%_
                                                 _%e1460615237%_
                                                 _%hd1460715241%_
                                                 _%tl1460815244%_
                                                 _%__splice2016720168%_
                                                 _%target1464614696%_
                                                 _%tl1464814699%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1459714669%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g1459714669%_))))))
                            (let () (declare (not safe)) (_%g1459714669%_)))))
                    (let () (declare (not safe)) (_%g1459714669%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet*|
      (lambda (_%$stx15629%_)
        (let* ((_%__stx2025620257%_ _%$stx15629%_)
               (_%g1563515686%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2025620257%_))))
          (let ((_%__kont2025920260%_ (lambda () '#t))
                (_%__kont2026120262%_
                 (lambda (_%L15844%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g1586015863%_ _%g1586115866%_)
                                        (cons _%g1586015863%_ _%g1586115866%_))
                                      '()
                                      _%L15844%_)))))
                (_%__kont2026520266%_
                 (lambda (_%L15753%_ _%L15755%_ _%L15756%_ _%L15757%_)
                   (cons (gx#datum->syntax '#f 'alet)
                         (cons (cons _%L15756%_ '())
                               (cons (cons _%L15757%_
                                           (cons _%L15755%_
                                                 (foldr (lambda (_%g1577815781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1577915784%_)
                  (cons _%g1577815781%_ _%g1577915784%_))
                '()
                _%L15753%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match2033320334%_
                    (lambda (_%e1566315693%_
                             _%hd1566415697%_
                             _%tl1566515700%_
                             _%e1566615703%_
                             _%hd1566715707%_
                             _%tl1566815710%_
                             _%e1566915713%_
                             _%hd1567015717%_
                             _%tl1567115720%_
                             _%__splice2026720268%_
                             _%target1567215723%_
                             _%tl1567415726%_)
                      (letrec ((_%loop1567515729%_
                                (lambda (_%hd1567315733%_ _%body1567915736%_)
                                  (if (gx#stx-pair? _%hd1567315733%_)
                                      (let ((_%e1567615739%_
                                             (gx#syntax-e _%hd1567315733%_)))
                                        (let ((_%lp-tl1567815746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1567615739%_)))
                                              (_%lp-hd1567715743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1567615739%_))))
                                          (_%loop1567515729%_
                                           _%lp-tl1567815746%_
                                           (cons _%lp-hd1567715743%_
                                                 _%body1567915736%_))))
                                      (let ((_%body1568015749%_
                                             (reverse _%body1567915736%_)))
                                        (_%__kont2026520266%_
                                         _%body1568015749%_
                                         _%tl1567115720%_
                                         _%hd1567015717%_
                                         _%hd1566415697%_))))))
                        (_%loop1567515729%_ _%target1567215723%_ '()))))
                   (_%__match2030720308%_
                    (lambda (_%e1564415794%_
                             _%hd1564515798%_
                             _%tl1564615801%_
                             _%e1564715804%_
                             _%hd1564815808%_
                             _%tl1564915811%_
                             _%__splice2026320264%_
                             _%target1565015814%_
                             _%tl1565215817%_)
                      (letrec ((_%loop1565315820%_
                                (lambda (_%hd1565115824%_ _%body1565715827%_)
                                  (if (gx#stx-pair? _%hd1565115824%_)
                                      (let ((_%e1565415830%_
                                             (gx#syntax-e _%hd1565115824%_)))
                                        (let ((_%lp-tl1565615837%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1565415830%_)))
                                              (_%lp-hd1565515834%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1565415830%_))))
                                          (_%loop1565315820%_
                                           _%lp-tl1565615837%_
                                           (cons _%lp-hd1565515834%_
                                                 _%body1565715827%_))))
                                      (let ((_%body1565815840%_
                                             (reverse _%body1565715827%_)))
                                        (_%__kont2026120262%_
                                         _%body1565815840%_))))))
                        (_%loop1565315820%_ _%target1565015814%_ '())))))
              (if (gx#stx-pair? _%__stx2025620257%_)
                  (let ((_%e1563715876%_ (gx#syntax-e _%__stx2025620257%_)))
                    (let ((_%tl1563915883%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1563715876%_)))
                          (_%hd1563815880%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1563715876%_))))
                      (if (gx#stx-pair? _%tl1563915883%_)
                          (let ((_%e1564015886%_
                                 (gx#syntax-e _%tl1563915883%_)))
                            (let ((_%tl1564215893%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1564015886%_)))
                                  (_%hd1564115890%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1564015886%_))))
                              (if (gx#stx-null? _%hd1564115890%_)
                                  (if (gx#stx-null? _%tl1564215893%_)
                                      (_%__kont2025920260%_)
                                      (if (gx#stx-pair/null? _%tl1564215893%_)
                                          (let ((_%__splice2026320264%_
                                                 (gx#syntax-split-splice
                                                  _%tl1564215893%_
                                                  '0)))
                                            (let ((_%tl1565215817%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2026320264%_
                                                      '1)))
                                                  (_%target1565015814%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2026320264%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1565215817%_)
                                                  (_%__match2030720308%_
                                                   _%e1563715876%_
                                                   _%hd1563815880%_
                                                   _%tl1563915883%_
                                                   _%e1564015886%_
                                                   _%hd1564115890%_
                                                   _%tl1564215893%_
                                                   _%__splice2026320264%_
                                                   _%target1565015814%_
                                                   _%tl1565215817%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1563515686%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1563515686%_))))
                                  (if (gx#stx-pair? _%hd1564115890%_)
                                      (let ((_%e1566915713%_
                                             (gx#syntax-e _%hd1564115890%_)))
                                        (let ((_%tl1567115720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1566915713%_)))
                                              (_%hd1567015717%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1566915713%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1564215893%_)
                                              (let ((_%__splice2026720268%_
                                                     (gx#syntax-split-splice
                                                      _%tl1564215893%_
                                                      '0)))
                                                (let ((_%tl1567415726%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2026720268%_
                                                          '1)))
                                                      (_%target1567215723%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2026720268%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1567415726%_)
                                                      (_%__match2033320334%_
                                                       _%e1563715876%_
                                                       _%hd1563815880%_
                                                       _%tl1563915883%_
                                                       _%e1564015886%_
                                                       _%hd1564115890%_
                                                       _%tl1564215893%_
                                                       _%e1566915713%_
                                                       _%hd1567015717%_
                                                       _%tl1567115720%_
                                                       _%__splice2026720268%_
                                                       _%target1567215723%_
                                                       _%tl1567415726%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1563515686%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1563515686%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1563515686%_))))))
                          (let () (declare (not safe)) (_%g1563515686%_)))))
                  (let () (declare (not safe)) (_%g1563515686%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#@list|
      (lambda (_%$stx15906%_)
        (let* ((_%__stx2033620337%_ _%$stx15906%_)
               (_%g1591715995%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2033620337%_))))
          (let ((_%__kont2033920340%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'quote) (cons '() '()))))
                (_%__kont2034120342%_
                 (lambda (_%L16326%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _%L16326%_ '()))))
                (_%__kont2034320344%_
                 (lambda (_%L16274%_)
                   (cons (gx#datum->syntax '#f 'quasiquote)
                         (cons _%L16274%_ '()))))
                (_%__kont2034520346%_ (lambda (_%L16221%_) _%L16221%_))
                (_%__kont2034720348%_
                 (lambda (_%L16163%_ _%L16165%_) _%L16165%_))
                (_%__kont2034920350%_
                 (lambda (_%L16105%_ _%L16107%_ _%L16108%_ _%L16109%_)
                   (cons (gx#datum->syntax '#f 'foldr)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (cons _%L16109%_ _%L16105%_)
                                     (cons _%L16108%_ '()))))))
                (_%__kont2035120352%_
                 (lambda (_%L16051%_ _%L16053%_ _%L16054%_)
                   (cons (gx#datum->syntax '#f 'cons)
                         (cons _%L16053%_
                               (cons (cons _%L16054%_ _%L16051%_) '())))))
                (_%__kont2035320354%_ (lambda (_%L16012%_) _%L16012%_)))
            (let* ((_%__match2047520476%_
                    (lambda (_%e1596816075%_
                             _%hd1596916079%_
                             _%tl1597016082%_
                             _%e1597116085%_
                             _%hd1597216089%_
                             _%tl1597316092%_
                             _%e1597416095%_
                             _%hd1597516099%_
                             _%tl1597616102%_)
                      (let ((_%L16105%_ _%tl1597616102%_)
                            (_%L16107%_ _%hd1597516099%_)
                            (_%L16108%_ _%hd1597216089%_)
                            (_%L16109%_ _%hd1596916079%_))
                        (if (gx#ellipsis? _%L16107%_)
                            (_%__kont2034920350%_
                             _%L16105%_
                             _%L16107%_
                             _%L16108%_
                             _%L16109%_)
                            (_%__kont2035120352%_
                             _%tl1597316092%_
                             _%hd1597216089%_
                             _%hd1596916079%_)))))
                   (_%__match2045720458%_
                    (lambda (_%e1595516133%_
                             _%hd1595616137%_
                             _%tl1595716140%_
                             _%e1595816143%_
                             _%hd1595916147%_
                             _%tl1596016150%_
                             _%e1596116153%_
                             _%hd1596216157%_
                             _%tl1596316160%_)
                      (let ((_%L16163%_ _%hd1596216157%_)
                            (_%L16165%_ _%hd1595916147%_))
                        (if (gx#ellipsis? _%L16163%_)
                            (_%__kont2034720348%_ _%L16163%_ _%L16165%_)
                            (_%__match2047520476%_
                             _%e1595516133%_
                             _%hd1595616137%_
                             _%tl1595716140%_
                             _%e1595816143%_
                             _%hd1595916147%_
                             _%tl1596016150%_
                             _%e1596116153%_
                             _%hd1596216157%_
                             _%tl1596316160%_))))))
              (if (gx#stx-pair? _%__stx2033620337%_)
                  (let ((_%e1591916348%_ (gx#syntax-e _%__stx2033620337%_)))
                    (let ((_%tl1592116355%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1591916348%_)))
                          (_%hd1592016352%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1591916348%_))))
                      (if (gx#stx-null? _%tl1592116355%_)
                          (_%__kont2033920340%_)
                          (if (gx#stx-pair? _%tl1592116355%_)
                              (let ((_%e1592616306%_
                                     (gx#syntax-e _%tl1592116355%_)))
                                (let ((_%tl1592816313%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1592616306%_)))
                                      (_%hd1592716310%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1592616306%_))))
                                  (if (gx#identifier? _%hd1592716310%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21001_|
                                           _%hd1592716310%_)
                                          (if (gx#stx-pair? _%tl1592816313%_)
                                              (let ((_%e1592916316%_
                                                     (gx#syntax-e
                                                      _%tl1592816313%_)))
                                                (let ((_%tl1593116323%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1592916316%_)))
                                                      (_%hd1593016320%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1592916316%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1593116323%_)
                                                      (_%__kont2034120342%_
                                                       _%hd1593016320%_)
                                                      (_%__match2047520476%_
                                                       _%e1591916348%_
                                                       _%hd1592016352%_
                                                       _%tl1592116355%_
                                                       _%e1592616306%_
                                                       _%hd1592716310%_
                                                       _%tl1592816313%_
                                                       _%e1592916316%_
                                                       _%hd1593016320%_
                                                       _%tl1593116323%_))))
                                              (_%__kont2035120352%_
                                               _%tl1592816313%_
                                               _%hd1592716310%_
                                               _%hd1592016352%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21002_|
                                               _%hd1592716310%_)
                                              (if (gx#stx-pair?
                                                   _%tl1592816313%_)
                                                  (let ((_%e1593916264%_
                                                         (gx#syntax-e
                                                          _%tl1592816313%_)))
                                                    (let ((_%tl1594116271%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1593916264%_)))
                                                          (_%hd1594016268%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1593916264%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1594116271%_)
                                                          (_%__kont2034320344%_
                                                           _%hd1594016268%_)
                                                          (_%__match2047520476%_
                                                           _%e1591916348%_
                                                           _%hd1592016352%_
                                                           _%tl1592116355%_
                                                           _%e1592616306%_
                                                           _%hd1592716310%_
                                                           _%tl1592816313%_
                                                           _%e1593916264%_
                                                           _%hd1594016268%_
                                                           _%tl1594116271%_))))
                                                  (_%__kont2035120352%_
                                                   _%tl1592816313%_
                                                   _%hd1592716310%_
                                                   _%hd1592016352%_))
                                              (if (gx#stx-pair?
                                                   _%tl1592816313%_)
                                                  (let ((_%e1596116153%_
                                                         (gx#syntax-e
                                                          _%tl1592816313%_)))
                                                    (let ((_%tl1596316160%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1596116153%_)))
                                                          (_%hd1596216157%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1596116153%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1596316160%_)
                                                          (_%__match2045720458%_
                                                           _%e1591916348%_
                                                           _%hd1592016352%_
                                                           _%tl1592116355%_
                                                           _%e1592616306%_
                                                           _%hd1592716310%_
                                                           _%tl1592816313%_
                                                           _%e1596116153%_
                                                           _%hd1596216157%_
                                                           _%tl1596316160%_)
                                                          (_%__match2047520476%_
                                                           _%e1591916348%_
                                                           _%hd1592016352%_
                                                           _%tl1592116355%_
                                                           _%e1592616306%_
                                                           _%hd1592716310%_
                                                           _%tl1592816313%_
                                                           _%e1596116153%_
                                                           _%hd1596216157%_
                                                           _%tl1596316160%_))))
                                                  (_%__kont2035120352%_
                                                   _%tl1592816313%_
                                                   _%hd1592716310%_
                                                   _%hd1592016352%_))))
                                      (if (gx#stx-datum? _%hd1592716310%_)
                                          (let ((_%e1594916207%_
                                                 (gx#stx-e _%hd1592716310%_)))
                                            (if (equal? _%e1594916207%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl1592816313%_)
                                                    (let ((_%e1595016211%_
                                                           (gx#syntax-e
                                                            _%tl1592816313%_)))
                                                      (let ((_%tl1595216218%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1595016211%_)))
                    (_%hd1595116215%_
                     (let () (declare (not safe)) (##car _%e1595016211%_))))
                (if (gx#stx-null? _%tl1595216218%_)
                    (_%__kont2034520346%_ _%hd1595116215%_)
                    (_%__match2047520476%_
                     _%e1591916348%_
                     _%hd1592016352%_
                     _%tl1592116355%_
                     _%e1592616306%_
                     _%hd1592716310%_
                     _%tl1592816313%_
                     _%e1595016211%_
                     _%hd1595116215%_
                     _%tl1595216218%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2035120352%_
                                                     _%tl1592816313%_
                                                     _%hd1592716310%_
                                                     _%hd1592016352%_))
                                                (if (gx#stx-pair?
                                                     _%tl1592816313%_)
                                                    (let ((_%e1596116153%_
                                                           (gx#syntax-e
                                                            _%tl1592816313%_)))
                                                      (let ((_%tl1596316160%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1596116153%_)))
                    (_%hd1596216157%_
                     (let () (declare (not safe)) (##car _%e1596116153%_))))
                (if (gx#stx-null? _%tl1596316160%_)
                    (_%__match2045720458%_
                     _%e1591916348%_
                     _%hd1592016352%_
                     _%tl1592116355%_
                     _%e1592616306%_
                     _%hd1592716310%_
                     _%tl1592816313%_
                     _%e1596116153%_
                     _%hd1596216157%_
                     _%tl1596316160%_)
                    (_%__match2047520476%_
                     _%e1591916348%_
                     _%hd1592016352%_
                     _%tl1592116355%_
                     _%e1592616306%_
                     _%hd1592716310%_
                     _%tl1592816313%_
                     _%e1596116153%_
                     _%hd1596216157%_
                     _%tl1596316160%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2035120352%_
                                                     _%tl1592816313%_
                                                     _%hd1592716310%_
                                                     _%hd1592016352%_))))
                                          (if (gx#stx-pair? _%tl1592816313%_)
                                              (let ((_%e1596116153%_
                                                     (gx#syntax-e
                                                      _%tl1592816313%_)))
                                                (let ((_%tl1596316160%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1596116153%_)))
                                                      (_%hd1596216157%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1596116153%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1596316160%_)
                                                      (_%__match2045720458%_
                                                       _%e1591916348%_
                                                       _%hd1592016352%_
                                                       _%tl1592116355%_
                                                       _%e1592616306%_
                                                       _%hd1592716310%_
                                                       _%tl1592816313%_
                                                       _%e1596116153%_
                                                       _%hd1596216157%_
                                                       _%tl1596316160%_)
                                                      (_%__match2047520476%_
                                                       _%e1591916348%_
                                                       _%hd1592016352%_
                                                       _%tl1592116355%_
                                                       _%e1592616306%_
                                                       _%hd1592716310%_
                                                       _%tl1592816313%_
                                                       _%e1596116153%_
                                                       _%hd1596216157%_
                                                       _%tl1596316160%_))))
                                              (_%__kont2035120352%_
                                               _%tl1592816313%_
                                               _%hd1592716310%_
                                               _%hd1592016352%_))))))
                              (_%__kont2035320354%_ _%tl1592116355%_)))))
                  (let () (declare (not safe)) (_%g1591715995%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#quasiquote|
      (lambda (_%stx16366%_)
        (letrec ((_%simple-quote?16369%_
                  (lambda (_%e17061%_)
                    (let* ((_%__stx2049620497%_ _%e17061%_)
                           (_%g1706917106%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2049620497%_))))
                      (let ((_%__kont2049920500%_ (lambda () '#f))
                            (_%__kont2050120502%_ (lambda () '#f))
                            (_%__kont2050320504%_
                             (lambda (_%L17220%_ _%L17222%_)
                               (if (_%simple-quote?16369%_ _%L17222%_)
                                   (_%simple-quote?16369%_ _%L17220%_)
                                   '#f)))
                            (_%__kont2050520506%_
                             (lambda (_%L17181%_)
                               (_%simple-quote?16369%_
                                (foldr (lambda (_%g1719417197%_
                                                _%g1719517200%_)
                                         (cons _%g1719417197%_
                                               _%g1719517200%_))
                                       '()
                                       _%L17181%_))))
                            (_%__kont2050920510%_
                             (lambda (_%L17128%_)
                               (_%simple-quote?16369%_ _%L17128%_)))
                            (_%__kont2051120512%_ (lambda () '#t)))
                        (let* ((_%g1706717140%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2049620497%_)
                                      (let ((_%e1710017124%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2049620497%_))))
                                        (_%__kont2050920510%_ _%e1710017124%_))
                                      (_%__kont2051120512%_))))
                               (_%__match2056720568%_
                                (lambda (_%e1708917147%_
                                         _%__splice2050720508%_
                                         _%target1709017151%_
                                         _%tl1709217154%_)
                                  (letrec ((_%loop1709317157%_
                                            (lambda (_%hd1709117161%_
                                                     _%e1709717164%_)
                                              (if (gx#stx-pair?
                                                   _%hd1709117161%_)
                                                  (let ((_%e1709417167%_
                                                         (gx#syntax-e
                                                          _%hd1709117161%_)))
                                                    (let ((_%lp-tl1709617174%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1709417167%_)))
                                                          (_%lp-hd1709517171%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1709417167%_))))
                                                      (_%loop1709317157%_
                                                       _%lp-tl1709617174%_
                                                       (cons _%lp-hd1709517171%_
                                                             _%e1709717164%_))))
                                                  (let ((_%e1709817177%_
                                                         (reverse _%e1709717164%_)))
                                                    (_%__kont2050520506%_
                                                     _%e1709817177%_))))))
                                    (_%loop1709317157%_
                                     _%target1709017151%_
                                     '()))))
                               (_%g1706617203%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2049620497%_)
                                      (let ((_%e1708917147%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2049620497%_))))
                                        (if (gx#stx-pair/null? _%e1708917147%_)
                                            (let ((_%__splice2050720508%_
                                                   (gx#syntax-split-splice
                                                    _%e1708917147%_
                                                    '0)))
                                              (let ((_%tl1709217154%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2050720508%_
                                                        '1)))
                                                    (_%target1709017151%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2050720508%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1709217154%_)
                                                    (_%__match2056720568%_
                                                     _%e1708917147%_
                                                     _%__splice2050720508%_
                                                     _%target1709017151%_
                                                     _%tl1709217154%_)
                                                    (_%__kont2051120512%_))))
                                            (_%__kont2051120512%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1706717140%_))))))
                          (if (gx#stx-pair? _%__stx2049620497%_)
                              (let ((_%e1707117271%_
                                     (gx#syntax-e _%__stx2049620497%_)))
                                (let ((_%tl1707317278%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1707117271%_)))
                                      (_%hd1707217275%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1707117271%_))))
                                  (if (gx#identifier? _%hd1707217275%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21003_|
                                           _%hd1707217275%_)
                                          (if (gx#stx-pair? _%tl1707317278%_)
                                              (let ((_%e1707417281%_
                                                     (gx#syntax-e
                                                      _%tl1707317278%_)))
                                                (let ((_%tl1707617288%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1707417281%_)))
                                                      (_%hd1707517285%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1707417281%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1707617288%_)
                                                      (_%__kont2049920500%_)
                                                      (_%__kont2050320504%_
                                                       _%tl1707317278%_
                                                       _%hd1707217275%_))))
                                              (_%__kont2050320504%_
                                               _%tl1707317278%_
                                               _%hd1707217275%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21004_|
                                               _%hd1707217275%_)
                                              (if (gx#stx-pair?
                                                   _%tl1707317278%_)
                                                  (let ((_%e1708017250%_
                                                         (gx#syntax-e
                                                          _%tl1707317278%_)))
                                                    (let ((_%tl1708217257%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1708017250%_)))
                                                          (_%hd1708117254%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1708017250%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1708217257%_)
                                                          (_%__kont2050120502%_)
                                                          (_%__kont2050320504%_
                                                           _%tl1707317278%_
                                                           _%hd1707217275%_))))
                                                  (_%__kont2050320504%_
                                                   _%tl1707317278%_
                                                   _%hd1707217275%_))
                                              (_%__kont2050320504%_
                                               _%tl1707317278%_
                                               _%hd1707217275%_)))
                                      (_%__kont2050320504%_
                                       _%tl1707317278%_
                                       _%hd1707217275%_))))
                              (let ()
                                (declare (not safe))
                                (_%g1706617203%_))))))))
                 (_%generate16371%_
                  (lambda (_%e16433%_ _%d16435%_)
                    (let* ((_%__stx2057420575%_ _%e16433%_)
                           (_%g1644416502%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2057420575%_))))
                      (let ((_%__kont2057720578%_
                             (lambda (_%L17013%_)
                               (let* ((_%g1702617034%_
                                       (lambda (_%g1702717030%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1702717030%_)))
                                      (_%g1702517053%_
                                       (lambda (_%g1702717038%_)
                                         ((lambda (_%L17041%_)
                                            (cons (gx#datum->syntax '#f 'list)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quasiquote)
                            '()))
                (cons _%L17041%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1702717038%_))))
                                 (_%g1702517053%_
                                  (_%generate16371%_
                                   _%L17013%_
                                   (fx1+ _%d16435%_))))))
                            (_%__kont2057920580%_
                             (lambda (_%L16942%_)
                               (if (fxzero? _%d16435%_)
                                   _%L16942%_
                                   (let* ((_%g1695516963%_
                                           (lambda (_%g1695616959%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1695616959%_)))
                                          (_%g1695416982%_
                                           (lambda (_%g1695616967%_)
                                             ((lambda (_%L16970%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote) '()))
                    (cons _%L16970%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1695616967%_))))
                                     (_%g1695416982%_
                                      (_%generate16371%_
                                       _%L16942%_
                                       (fx1- _%d16435%_)))))))
                            (_%__kont2058120582%_
                             (lambda (_%L16871%_)
                               (if (fxzero? _%d16435%_)
                                   (cons (gx#datum->syntax '#f 'foldr)
                                         (cons (gx#datum->syntax '#f 'cons)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons '() '()))
                                                     (cons _%L16871%_ '()))))
                                   (let* ((_%g1688416892%_
                                           (lambda (_%g1688516888%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1688516888%_)))
                                          (_%g1688316911%_
                                           (lambda (_%g1688516896%_)
                                             ((lambda (_%L16899%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote-splicing) '()))
                    (cons _%L16899%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1688516896%_))))
                                     (_%g1688316911%_
                                      (_%generate16371%_
                                       _%L16871%_
                                       (fx1- _%d16435%_)))))))
                            (_%__kont2058320584%_
                             (lambda (_%L16796%_ _%L16798%_)
                               (let* ((_%g1681316821%_
                                       (lambda (_%g1681416817%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1681416817%_)))
                                      (_%g1681216840%_
                                       (lambda (_%g1681416825%_)
                                         ((lambda (_%L16828%_)
                                            (cons (gx#datum->syntax '#f 'foldr)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'cons)
                                                        (cons _%L16828%_
                                                              (cons _%L16798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1681416825%_))))
                                 (_%g1681216840%_
                                  (_%generate16371%_ _%L16796%_ _%d16435%_)))))
                            (_%__kont2058520586%_
                             (lambda (_%L16682%_ _%L16684%_)
                               (let* ((_%g1669516710%_
                                       (lambda (_%g1669616706%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1669616706%_)))
                                      (_%g1669416755%_
                                       (lambda (_%g1669616714%_)
                                         (if (gx#stx-pair? _%g1669616714%_)
                                             (let ((_%e1669916717%_
                                                    (gx#syntax-e
                                                     _%g1669616714%_)))
                                               (let ((_%hd1670016721%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1669916717%_)))
                                                     (_%tl1670116724%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1669916717%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl1670116724%_)
                                                     (let ((_%e1670216727%_
                                                            (gx#syntax-e
                                                             _%tl1670116724%_)))
                                                       (let ((_%hd1670316731%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e1670216727%_)))
                     (_%tl1670416734%_
                      (let () (declare (not safe)) (##cdr _%e1670216727%_))))
                 (if (gx#stx-null? _%tl1670416734%_)
                     ((lambda (_%L16737%_ _%L16739%_)
                        (cons (gx#datum->syntax '#f 'cons)
                              (cons _%L16739%_ (cons _%L16737%_ '()))))
                      _%hd1670316731%_
                      _%hd1670016721%_)
                     (_%g1669516710%_ _%g1669616714%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1669516710%_
                                                      _%g1669616714%_))))
                                             (_%g1669516710%_
                                              _%g1669616714%_)))))
                                 (_%g1669416755%_
                                  (list (_%generate16371%_
                                         _%L16684%_
                                         _%d16435%_)
                                        (_%generate16371%_
                                         _%L16682%_
                                         _%d16435%_))))))
                            (_%__kont2058720588%_
                             (lambda (_%L16612%_)
                               (let* ((_%g1662616634%_
                                       (lambda (_%g1662716630%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1662716630%_)))
                                      (_%g1662516653%_
                                       (lambda (_%g1662716638%_)
                                         ((lambda (_%L16641%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'list->vector)
                                                  (cons _%L16641%_ '())))
                                          _%g1662716638%_))))
                                 (_%g1662516653%_
                                  (_%generate16371%_
                                   (foldr (lambda (_%g1665616659%_
                                                   _%g1665716662%_)
                                            (cons _%g1665616659%_
                                                  _%g1665716662%_))
                                          '()
                                          _%L16612%_)
                                   _%d16435%_)))))
                            (_%__kont2059120592%_
                             (lambda (_%L16530%_)
                               (let* ((_%g1654016548%_
                                       (lambda (_%g1654116544%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1654116544%_)))
                                      (_%g1653916567%_
                                       (lambda (_%g1654116552%_)
                                         ((lambda (_%L16555%_)
                                            (cons (gx#datum->syntax '#f 'box)
                                                  (cons _%L16555%_ '())))
                                          _%g1654116552%_))))
                                 (_%g1653916567%_
                                  (_%generate16371%_ _%L16530%_ _%d16435%_)))))
                            (_%__kont2059320594%_
                             (lambda (_%L16509%_)
                               (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L16509%_ '())))))
                        (let* ((_%g1644216571%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2057420575%_)
                                      (let ((_%e1649516526%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2057420575%_))))
                                        (_%__kont2059120592%_ _%e1649516526%_))
                                      (_%__kont2059320594%_
                                       _%__stx2057420575%_))))
                               (_%__match2069320694%_
                                (lambda (_%e1648416578%_
                                         _%__splice2058920590%_
                                         _%target1648516582%_
                                         _%tl1648716585%_)
                                  (letrec ((_%loop1648816588%_
                                            (lambda (_%hd1648616592%_
                                                     _%e1649216595%_)
                                              (if (gx#stx-pair?
                                                   _%hd1648616592%_)
                                                  (let ((_%e1648916598%_
                                                         (gx#syntax-e
                                                          _%hd1648616592%_)))
                                                    (let ((_%lp-tl1649116605%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1648916598%_)))
                                                          (_%lp-hd1649016602%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1648916598%_))))
                                                      (_%loop1648816588%_
                                                       _%lp-tl1649116605%_
                                                       (cons _%lp-hd1649016602%_
                                                             _%e1649216595%_))))
                                                  (let ((_%e1649316608%_
                                                         (reverse _%e1649216595%_)))
                                                    (_%__kont2058720588%_
                                                     _%e1649316608%_))))))
                                    (_%loop1648816588%_
                                     _%target1648516582%_
                                     '()))))
                               (_%g1644116665%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2057420575%_)
                                      (let ((_%e1648416578%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2057420575%_))))
                                        (if (gx#stx-pair/null? _%e1648416578%_)
                                            (let ((_%__splice2058920590%_
                                                   (gx#syntax-split-splice
                                                    _%e1648416578%_
                                                    '0)))
                                              (let ((_%tl1648716585%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2058920590%_
                                                        '1)))
                                                    (_%target1648516582%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2058920590%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1648716585%_)
                                                    (_%__match2069320694%_
                                                     _%e1648416578%_
                                                     _%__splice2058920590%_
                                                     _%target1648516582%_
                                                     _%tl1648716585%_)
                                                    (_%__kont2059320594%_
                                                     _%__stx2057420575%_))))
                                            (_%__kont2059320594%_
                                             _%__stx2057420575%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1644216571%_))))))
                          (if (gx#stx-pair? _%__stx2057420575%_)
                              (let ((_%e1644716993%_
                                     (gx#syntax-e _%__stx2057420575%_)))
                                (let ((_%tl1644917000%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1644716993%_)))
                                      (_%hd1644816997%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1644716993%_))))
                                  (if (gx#identifier? _%hd1644816997%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21005_|
                                           _%hd1644816997%_)
                                          (if (gx#stx-pair? _%tl1644917000%_)
                                              (let ((_%e1645017003%_
                                                     (gx#syntax-e
                                                      _%tl1644917000%_)))
                                                (let ((_%tl1645217010%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1645017003%_)))
                                                      (_%hd1645117007%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1645017003%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1645217010%_)
                                                      (_%__kont2057720578%_
                                                       _%hd1645117007%_)
                                                      (_%__kont2058520586%_
                                                       _%tl1644917000%_
                                                       _%hd1644816997%_))))
                                              (_%__kont2058520586%_
                                               _%tl1644917000%_
                                               _%hd1644816997%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21006_|
                                               _%hd1644816997%_)
                                              (if (gx#stx-pair?
                                                   _%tl1644917000%_)
                                                  (let ((_%e1645716932%_
                                                         (gx#syntax-e
                                                          _%tl1644917000%_)))
                                                    (let ((_%tl1645916939%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1645716932%_)))
                                                          (_%hd1645816936%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1645716932%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1645916939%_)
                                                          (_%__kont2057920580%_
                                                           _%hd1645816936%_)
                                                          (_%__kont2058520586%_
                                                           _%tl1644917000%_
                                                           _%hd1644816997%_))))
                                                  (_%__kont2058520586%_
                                                   _%tl1644917000%_
                                                   _%hd1644816997%_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21007_|
                                                   _%hd1644816997%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1644917000%_)
                                                      (let ((_%e1646416861%_
                                                             (gx#syntax-e
                                                              _%tl1644917000%_)))
                                                        (let ((_%tl1646616868%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1646416861%_)))
                      (_%hd1646516865%_
                       (let () (declare (not safe)) (##car _%e1646416861%_))))
                  (if (gx#stx-null? _%tl1646616868%_)
                      (_%__kont2058120582%_ _%hd1646516865%_)
                      (_%__kont2058520586%_
                       _%tl1644917000%_
                       _%hd1644816997%_))))
              (_%__kont2058520586%_ _%tl1644917000%_ _%hd1644816997%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2058520586%_
                                                   _%tl1644917000%_
                                                   _%hd1644816997%_))))
                                      (if (gx#stx-pair? _%hd1644816997%_)
                                          (let ((_%e1647216776%_
                                                 (gx#syntax-e
                                                  _%hd1644816997%_)))
                                            (let ((_%tl1647416783%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1647216776%_)))
                                                  (_%hd1647316780%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1647216776%_))))
                                              (if (gx#identifier?
                                                   _%hd1647316780%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-2[1]#_g21008_|
                                                       _%hd1647316780%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1647416783%_)
                                                          (let ((_%e1647516786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1647416783%_)))
                    (let ((_%tl1647716793%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1647516786%_)))
                          (_%hd1647616790%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1647516786%_))))
                      (if (gx#stx-null? _%tl1647716793%_)
                          (if (fxzero? _%d16435%_)
                              (let ((_%L16796%_ _%tl1644917000%_)
                                    (_%L16798%_ _%hd1647616790%_))
                                (_%__kont2058320584%_ _%L16796%_ _%L16798%_))
                              (_%__kont2058520586%_
                               _%tl1644917000%_
                               _%hd1644816997%_))
                          (_%__kont2058520586%_
                           _%tl1644917000%_
                           _%hd1644816997%_))))
                  (_%__kont2058520586%_ _%tl1644917000%_ _%hd1644816997%_))
              (_%__kont2058520586%_ _%tl1644917000%_ _%hd1644816997%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2058520586%_
                                                   _%tl1644917000%_
                                                   _%hd1644816997%_))))
                                          (_%__kont2058520586%_
                                           _%tl1644917000%_
                                           _%hd1644816997%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g1644116665%_)))))))))
          (let* ((_%g1637316387%_
                  (lambda (_%g1637416383%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1637416383%_)))
                 (_%g1637216429%_
                  (lambda (_%g1637416391%_)
                    (if (gx#stx-pair? _%g1637416391%_)
                        (let ((_%e1637616394%_ (gx#syntax-e _%g1637416391%_)))
                          (let ((_%hd1637716398%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1637616394%_)))
                                (_%tl1637816401%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1637616394%_))))
                            (if (gx#stx-pair? _%tl1637816401%_)
                                (let ((_%e1637916404%_
                                       (gx#syntax-e _%tl1637816401%_)))
                                  (let ((_%hd1638016408%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1637916404%_)))
                                        (_%tl1638116411%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1637916404%_))))
                                    (if (gx#stx-null? _%tl1638116411%_)
                                        ((lambda (_%L16414%_)
                                           (if (_%simple-quote?16369%_
                                                _%L16414%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L16414%_ '()))
                                               (_%generate16371%_
                                                _%L16414%_
                                                '0)))
                                         _%hd1638016408%_)
                                        (_%g1637316387%_ _%g1637416391%_))))
                                (_%g1637316387%_ _%g1637416391%_))))
                        (_%g1637316387%_ _%g1637416391%_)))))
            (_%g1637216429%_ _%stx16366%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay|
      (lambda (_%$stx17301%_)
        (let* ((_%__stx2070020701%_ _%$stx17301%_)
               (_%g1730617327%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2070020701%_))))
          (let ((_%__kont2070320704%_
                 (lambda (_%L17395%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _%L17395%_ '()))))
                (_%__kont2070520706%_
                 (lambda (_%L17354%_)
                   (cons (gx#datum->syntax '#f 'make-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%L17354%_ '())))
                               '())))))
            (let ((_%__match2072120722%_
                   (lambda (_%e1730917375%_
                            _%hd1731017379%_
                            _%tl1731117382%_
                            _%e1731217385%_
                            _%hd1731317389%_
                            _%tl1731417392%_)
                     (let ((_%L17395%_ _%hd1731317389%_))
                       (if (gx#stx-datum? _%L17395%_)
                           (_%__kont2070320704%_ _%L17395%_)
                           (_%__kont2070520706%_ _%hd1731317389%_))))))
              (if (gx#stx-pair? _%__stx2070020701%_)
                  (let ((_%e1730917375%_ (gx#syntax-e _%__stx2070020701%_)))
                    (let ((_%tl1731117382%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1730917375%_)))
                          (_%hd1731017379%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1730917375%_))))
                      (if (gx#stx-pair? _%tl1731117382%_)
                          (let ((_%e1731217385%_
                                 (gx#syntax-e _%tl1731117382%_)))
                            (let ((_%tl1731417392%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1731217385%_)))
                                  (_%hd1731317389%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1731217385%_))))
                              (if (gx#stx-null? _%tl1731417392%_)
                                  (_%__match2072120722%_
                                   _%e1730917375%_
                                   _%hd1731017379%_
                                   _%tl1731117382%_
                                   _%e1731217385%_
                                   _%hd1731317389%_
                                   _%tl1731417392%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g1730617327%_)))))
                          (let () (declare (not safe)) (_%g1730617327%_)))))
                  (let () (declare (not safe)) (_%g1730617327%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#cut|
      (lambda (_%stx17412%_)
        (letrec ((_%generate17415%_
                  (lambda (_%rest17534%_)
                    (let _%lp17537%_ ((_%rest17540%_ _%rest17534%_)
                                      (_%hd17542%_ '())
                                      (_%body17543%_ '()))
                      (let* ((_%__stx2075820759%_ _%rest17540%_)
                             (_%g1754617558%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx2075820759%_))))
                        (let ((_%__kont2076120762%_
                               (lambda (_%L17586%_ _%L17588%_)
                                 (let* ((_%__stx2073820739%_ _%L17588%_)
                                        (_%g1760517612%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx2073820739%_))))
                                   (let ((_%__kont2074120742%_
                                          (lambda ()
                                            (let ((_%arg17648%_ (gx#genident)))
                                              (_%lp17537%_
                                               _%L17586%_
                                               (cons _%arg17648%_ _%hd17542%_)
                                               (cons _%arg17648%_
                                                     _%body17543%_)))))
                                         (_%__kont2074320744%_
                                          (lambda ()
                                            (if (gx#stx-null? _%L17586%_)
                                                (let ((_%tail17634%_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail17634%_
                         _%hd17542%_)
                  (foldl cons (list _%tail17634%_) _%body17543%_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; cut ellipsis <...> not in tail position"
                                                 _%stx17412%_
                                                 _%L17588%_))))
                                         (_%__kont2074520746%_
                                          (lambda ()
                                            (_%lp17537%_
                                             _%L17586%_
                                             _%hd17542%_
                                             (cons _%L17588%_
                                                   _%body17543%_)))))
                                     (if (gx#identifier? _%__stx2073820739%_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core/sugar~Sugar-2[1]#_g21009_|
                                              _%__stx2073820739%_)
                                             (_%__kont2074120742%_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core/sugar~Sugar-2[1]#_g21010_|
                                                  _%__stx2073820739%_)
                                                 (_%__kont2074320744%_)
                                                 (_%__kont2074520746%_)))
                                         (_%__kont2074520746%_))))))
                              (_%__kont2076320764%_
                               (lambda ()
                                 (values (reverse _%hd17542%_)
                                         (reverse _%body17543%_)
                                         '#f))))
                          (if (gx#stx-pair? _%__stx2075820759%_)
                              (let ((_%e1755017576%_
                                     (gx#syntax-e _%__stx2075820759%_)))
                                (let ((_%tl1755217583%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1755017576%_)))
                                      (_%hd1755117580%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1755017576%_))))
                                  (_%__kont2076120762%_
                                   _%tl1755217583%_
                                   _%hd1755117580%_)))
                              (_%__kont2076320764%_))))))))
          (let* ((_%g1741817429%_
                  (lambda (_%g1741917425%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1741917425%_)))
                 (_%g1741717530%_
                  (lambda (_%g1741917433%_)
                    (if (gx#stx-pair? _%g1741917433%_)
                        (let ((_%e1742117436%_ (gx#syntax-e _%g1741917433%_)))
                          (let ((_%hd1742217440%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1742117436%_)))
                                (_%tl1742317443%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1742117436%_))))
                            ((lambda (_%L17446%_)
                               (if (and (gx#stx-list? _%L17446%_)
                                        (not (gx#stx-null? _%L17446%_)))
                                   (let ((_g21011_
                                          (_%generate17415%_ _%L17446%_)))
                                     (begin
                                       (let ((_g21012_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21011_)
                                                    (##vector-length _g21011_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21012_ 3)))
                                             (error "Context expects 3 values"
                                                    _g21012_)))
                                       (let ((_%hd17459%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21011_ 0)))
                                             (_%body17461%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21011_ 1)))
                                             (_%tail?17462%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21011_ 2))))
                                         (let* ((_%g1746417472%_
                                                 (lambda (_%g1746517468%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g1746517468%_)))
                                                (_%g1746317526%_
                                                 (lambda (_%g1746517476%_)
                                                   ((lambda (_%L17479%_)
                                                      (let* ((_%g1749217500%_
                                                              (lambda (_%g1749317496%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g1749317496%_)))
                     (_%g1749117522%_
                      (lambda (_%g1749317504%_)
                        ((lambda (_%L17507%_)
                           (if _%tail?17462%_
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%L17479%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'apply)
                                                       _%L17507%_)
                                                 '())))
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%L17479%_ (cons _%L17507%_ '())))))
                         _%g1749317504%_))))
                (_%g1749117522%_ _%body17461%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g1746517476%_))))
                                           (_%g1746317526%_ _%hd17459%_)))))
                                   (_%g1741817429%_ _%g1741917433%_)))
                             _%tl1742317443%_)))
                        (_%g1741817429%_ _%g1741917433%_)))))
            (_%g1741717530%_ _%stx17412%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<>|
      (lambda (_%$stx17660%_)
        (let ((_%g1766317670%_
               (lambda (_%g1766417666%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1766417666%_))))
          (_%g1766317670%_ _%$stx17660%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<...>|
      (lambda (_%$stx17674%_)
        (let ((_%g1767717684%_
               (lambda (_%g1767817680%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1767817680%_))))
          (_%g1767717684%_ _%$stx17674%_))))))

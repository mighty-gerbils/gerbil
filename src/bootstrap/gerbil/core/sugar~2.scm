(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-2[1]#_g21040_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21041_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21042_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21070_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21071_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21072_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21079_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21080_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21081_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21082_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21083_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21084_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21085_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21086_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21087_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21088_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21089_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21090_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-2[:0:]#lambda|
      (lambda (_%stx5393%_)
        (letrec ((_%simple-lambda?5396%_
                  (lambda (_%hd8780%_)
                    (gx#stx-andmap gx#identifier? _%hd8780%_)))
                 (_%opt-lambda?5398%_
                  (lambda (_%hd8632%_)
                    (let _%lp8635%_ ((_%rest8638%_ _%hd8632%_)
                                     (_%opt?8640%_ '#f))
                      (let* ((_%__stx1915819159%_ _%rest8638%_)
                             (_%g86438655%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1915819159%_))))
                        (let ((_%__kont1916119162%_
                               (lambda (_%g86458687%_ _%g86468689%_)
                                 (let* ((_%__stx1913419135%_ _%g86468689%_)
                                        (_%g87058719%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1913419135%_))))
                                   (let ((_%__kont1913719138%_
                                          (lambda (_%g87078757%_)
                                            (_%lp8635%_ _%g86458687%_ '#t)))
                                         (_%__kont1913919140%_
                                          (lambda ()
                                            (if (gx#identifier? _%g86468689%_)
                                                (if (not _%opt?8640%_)
                                                    (_%lp8635%_
                                                     _%g86458687%_
                                                     '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((_%__match1915519156%_
                                            (lambda (_%e87088737%_
                                                     _%hd87098741%_
                                                     _%tl87108744%_
                                                     _%e87118747%_
                                                     _%hd87128751%_
                                                     _%tl87138754%_)
                                              (let ((_%g87078757%_
                                                     _%hd87098741%_))
                                                (if (gx#identifier?
                                                     _%g87078757%_)
                                                    (_%__kont1913719138%_
                                                     _%g87078757%_)
                                                    (_%__kont1913919140%_))))))
                                       (if (gx#stx-pair? _%__stx1913419135%_)
                                           (let ((_%e87088737%_
                                                  (gx#syntax-e
                                                   _%__stx1913419135%_)))
                                             (let ((_%tl87108744%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e87088737%_)))
                                                   (_%hd87098741%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e87088737%_))))
                                               (if (gx#stx-pair?
                                                    _%tl87108744%_)
                                                   (let ((_%e87118747%_
                                                          (gx#syntax-e
                                                           _%tl87108744%_)))
                                                     (let ((_%tl87138754%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e87118747%_)))
                                                           (_%hd87128751%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e87118747%_))))
                                                       (if (gx#stx-null?
                                                            _%tl87138754%_)
                                                           (_%__match1915519156%_
                                                            _%e87088737%_
                                                            _%hd87098741%_
                                                            _%tl87108744%_
                                                            _%e87118747%_
                                                            _%hd87128751%_
                                                            _%tl87138754%_)
                                                           (_%__kont1913919140%_))))
                                                   (_%__kont1913919140%_))))
                                           (_%__kont1913919140%_)))))))
                              (_%__kont1916319164%_
                               (lambda ()
                                 (if _%opt?8640%_
                                     (let ((_%$e8666%_
                                            (gx#stx-null? _%rest8638%_)))
                                       (if _%$e8666%_
                                           _%$e8666%_
                                           (gx#identifier? _%rest8638%_)))
                                     '#f))))
                          (if (gx#stx-pair? _%__stx1915819159%_)
                              (let ((_%e86478677%_
                                     (gx#syntax-e _%__stx1915819159%_)))
                                (let ((_%tl86498684%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e86478677%_)))
                                      (_%hd86488681%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e86478677%_))))
                                  (_%__kont1916119162%_
                                   _%tl86498684%_
                                   _%hd86488681%_)))
                              (_%__kont1916319164%_)))))))
                 (_%opt-lambda-split5399%_
                  (lambda (_%hd8484%_)
                    (let _%lp8487%_ ((_%rest8490%_ _%hd8484%_)
                                     (_%pre8492%_ '())
                                     (_%opt8493%_ '()))
                      (let* ((_%__stx1919819199%_ _%rest8490%_)
                             (_%g84968508%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1919819199%_))))
                        (let ((_%__kont1920119202%_
                               (lambda (_%g84988536%_ _%g84998538%_)
                                 (let* ((_%__stx1917419175%_ _%g84998538%_)
                                        (_%g85548569%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1917419175%_))))
                                   (let ((_%__kont1917719178%_
                                          (lambda (_%g85568607%_ _%g85578609%_)
                                            (_%lp8487%_
                                             _%g84988536%_
                                             _%pre8492%_
                                             (cons (cons _%g85578609%_
                                                         _%g85568607%_)
                                                   _%opt8493%_))))
                                         (_%__kont1917919180%_
                                          (lambda ()
                                            (_%lp8487%_
                                             _%g84988536%_
                                             (cons _%g84998538%_ _%pre8492%_)
                                             _%opt8493%_))))
                                     (if (gx#stx-pair? _%__stx1917419175%_)
                                         (let ((_%e85588587%_
                                                (gx#syntax-e
                                                 _%__stx1917419175%_)))
                                           (let ((_%tl85608594%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e85588587%_)))
                                                 (_%hd85598591%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e85588587%_))))
                                             (if (gx#stx-pair? _%tl85608594%_)
                                                 (let ((_%e85618597%_
                                                        (gx#syntax-e
                                                         _%tl85608594%_)))
                                                   (let ((_%tl85638604%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e85618597%_)))
                                                         (_%hd85628601%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e85618597%_))))
                                                     (if (gx#stx-null?
                                                          _%tl85638604%_)
                                                         (_%__kont1917719178%_
                                                          _%hd85628601%_
                                                          _%hd85598591%_)
                                                         (_%__kont1917919180%_))))
                                                 (_%__kont1917919180%_))))
                                         (_%__kont1917919180%_))))))
                              (_%__kont1920319204%_
                               (lambda ()
                                 (values (reverse _%pre8492%_)
                                         (reverse _%opt8493%_)
                                         _%rest8490%_))))
                          (if (gx#stx-pair? _%__stx1919819199%_)
                              (let ((_%e85008526%_
                                     (gx#syntax-e _%__stx1919819199%_)))
                                (let ((_%tl85028533%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e85008526%_)))
                                      (_%hd85018530%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e85008526%_))))
                                  (_%__kont1920119202%_
                                   _%tl85028533%_
                                   _%hd85018530%_)))
                              (_%__kont1920319204%_)))))))
                 (_%kw-lambda?5400%_
                  (lambda (_%hd8152%_)
                    (let _%lp8155%_ ((_%rest8158%_ _%hd8152%_)
                                     (_%opt?8160%_ '#f)
                                     (_%key?8161%_ '#f))
                      (let* ((_%__stx1926219263%_ _%rest8158%_)
                             (_%g81668196%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1926219263%_))))
                        (let ((_%__kont1926519266%_
                               (lambda (_%g81688391%_
                                        _%g81698393%_
                                        _%g81708394%_)
                                 (let* ((_%__stx1923819239%_ _%g81698393%_)
                                        (_%g84098423%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1923819239%_))))
                                   (let ((_%__kont1924119242%_
                                          (lambda (_%g84118461%_)
                                            (if (gx#identifier? _%g84118461%_)
                                                (_%lp8155%_
                                                 _%g81688391%_
                                                 _%opt?8160%_
                                                 '#t)
                                                '#f)))
                                         (_%__kont1924319244%_
                                          (lambda ()
                                            (if (gx#identifier? _%g81698393%_)
                                                (_%lp8155%_
                                                 _%g81688391%_
                                                 _%opt?8160%_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1923819239%_)
                                         (let ((_%e84128441%_
                                                (gx#syntax-e
                                                 _%__stx1923819239%_)))
                                           (let ((_%tl84148448%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e84128441%_)))
                                                 (_%hd84138445%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e84128441%_))))
                                             (if (gx#stx-pair? _%tl84148448%_)
                                                 (let ((_%e84158451%_
                                                        (gx#syntax-e
                                                         _%tl84148448%_)))
                                                   (let ((_%tl84178458%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e84158451%_)))
                                                         (_%hd84168455%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e84158451%_))))
                                                     (if (gx#stx-null?
                                                          _%tl84178458%_)
                                                         (_%__kont1924119242%_
                                                          _%hd84138445%_)
                                                         (_%__kont1924319244%_))))
                                                 (_%__kont1924319244%_))))
                                         (_%__kont1924319244%_))))))
                              (_%__kont1926719268%_
                               (lambda (_%g81778348%_ _%g81788350%_)
                                 (if (gx#identifier? _%g81788350%_)
                                     (_%lp8155%_
                                      _%g81778348%_
                                      _%opt?8160%_
                                      '#t)
                                     '#f)))
                              (_%__kont1926919270%_
                               (lambda (_%g81868228%_ _%g81878230%_)
                                 (let* ((_%__stx1921419215%_ _%g81878230%_)
                                        (_%g82468260%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1921419215%_))))
                                   (let ((_%__kont1921719218%_
                                          (lambda (_%g82488298%_)
                                            (if (gx#identifier? _%g82488298%_)
                                                (_%lp8155%_
                                                 _%g81868228%_
                                                 '#t
                                                 _%key?8161%_)
                                                '#f)))
                                         (_%__kont1921919220%_
                                          (lambda ()
                                            (if (gx#identifier? _%g81878230%_)
                                                (if (not _%opt?8160%_)
                                                    (_%lp8155%_
                                                     _%g81868228%_
                                                     '#f
                                                     _%key?8161%_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1921419215%_)
                                         (let ((_%e82498278%_
                                                (gx#syntax-e
                                                 _%__stx1921419215%_)))
                                           (let ((_%tl82518285%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e82498278%_)))
                                                 (_%hd82508282%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e82498278%_))))
                                             (if (gx#stx-pair? _%tl82518285%_)
                                                 (let ((_%e82528288%_
                                                        (gx#syntax-e
                                                         _%tl82518285%_)))
                                                   (let ((_%tl82548295%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e82528288%_)))
                                                         (_%hd82538292%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e82528288%_))))
                                                     (if (gx#stx-null?
                                                          _%tl82548295%_)
                                                         (_%__kont1921719218%_
                                                          _%hd82508282%_)
                                                         (_%__kont1921919220%_))))
                                                 (_%__kont1921919220%_))))
                                         (_%__kont1921919220%_))))))
                              (_%__kont1927119272%_
                               (lambda ()
                                 (if _%key?8161%_
                                     (let ((_%$e8207%_
                                            (gx#stx-null? _%rest8158%_)))
                                       (if _%$e8207%_
                                           _%$e8207%_
                                           (gx#identifier? _%rest8158%_)))
                                     '#f))))
                          (let ((_%__match1928519286%_
                                 (lambda (_%e81718371%_
                                          _%hd81728375%_
                                          _%tl81738378%_
                                          _%e81748381%_
                                          _%hd81758385%_
                                          _%tl81768388%_)
                                   (let ((_%g81688391%_ _%tl81768388%_)
                                         (_%g81698393%_ _%hd81758385%_)
                                         (_%g81708394%_ _%hd81728375%_))
                                     (if (gx#stx-keyword? _%g81708394%_)
                                         (_%__kont1926519266%_
                                          _%g81688391%_
                                          _%g81698393%_
                                          _%g81708394%_)
                                         (if (gx#stx-datum? _%hd81728375%_)
                                             (let ((_%e81828334%_
                                                    (gx#stx-e _%hd81728375%_)))
                                               (if (equal? _%e81828334%_
                                                           '#!key)
                                                   (_%__kont1926719268%_
                                                    _%tl81768388%_
                                                    _%hd81758385%_)
                                                   (_%__kont1926919270%_
                                                    _%tl81738378%_
                                                    _%hd81728375%_)))
                                             (_%__kont1926919270%_
                                              _%tl81738378%_
                                              _%hd81728375%_)))))))
                            (if (gx#stx-pair? _%__stx1926219263%_)
                                (let ((_%e81718371%_
                                       (gx#syntax-e _%__stx1926219263%_)))
                                  (let ((_%tl81738378%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e81718371%_)))
                                        (_%hd81728375%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e81718371%_))))
                                    (if (gx#stx-pair? _%tl81738378%_)
                                        (let ((_%e81748381%_
                                               (gx#syntax-e _%tl81738378%_)))
                                          (let ((_%tl81768388%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e81748381%_)))
                                                (_%hd81758385%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e81748381%_))))
                                            (_%__match1928519286%_
                                             _%e81718371%_
                                             _%hd81728375%_
                                             _%tl81738378%_
                                             _%e81748381%_
                                             _%hd81758385%_
                                             _%tl81768388%_)))
                                        (if (gx#stx-datum? _%hd81728375%_)
                                            (let ((_%e81828334%_
                                                   (gx#stx-e _%hd81728375%_)))
                                              (_%__kont1926919270%_
                                               _%tl81738378%_
                                               _%hd81728375%_))
                                            (_%__kont1926919270%_
                                             _%tl81738378%_
                                             _%hd81728375%_)))))
                                (_%__kont1927119272%_))))))))
                 (_%kw-lambda-split5401%_
                  (lambda (_%hd7885%_)
                    (let _%lp7888%_ ((_%rest7891%_ _%hd7885%_)
                                     (_%kwvar7893%_ '#f)
                                     (_%kwargs7894%_ '())
                                     (_%args7895%_ '()))
                      (let* ((_%__stx1933619337%_ _%rest7891%_)
                             (_%g79007930%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1933619337%_))))
                        (let ((_%__kont1933919340%_
                               (lambda (_%g79028049%_
                                        _%g79038051%_
                                        _%g79048052%_)
                                 (let ((_%key8066%_ (gx#stx-e _%g79048052%_)))
                                   (if (find (lambda (_%kwarg8069%_)
                                               (eq? _%key8066%_
                                                    (car _%kwarg8069%_)))
                                             _%kwargs7894%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad syntax; duplicate keyword argument"
                                        _%stx5393%_
                                        _%hd7885%_
                                        _%key8066%_)
                                       (let* ((_%__stx1931219313%_
                                               _%g79038051%_)
                                              (_%g80738088%_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx1931219313%_))))
                                         (let ((_%__kont1931519316%_
                                                (lambda (_%g80758126%_
                                                         _%g80768128%_)
                                                  (_%lp7888%_
                                                   _%g79028049%_
                                                   _%kwvar7893%_
                                                   (cons (list _%key8066%_
                                                               _%g80768128%_
                                                               _%g80758126%_)
                                                         _%kwargs7894%_)
                                                   _%args7895%_)))
                                               (_%__kont1931719318%_
                                                (lambda ()
                                                  (_%lp7888%_
                                                   _%g79028049%_
                                                   _%kwvar7893%_
                                                   (cons (list _%key8066%_
                                                               _%g79038051%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'error)
                             (cons '"Missing required keyword argument"
                                   (cons _%g79048052%_ '()))))
                 _%kwargs7894%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%args7895%_))))
                                           (if (gx#stx-pair?
                                                _%__stx1931219313%_)
                                               (let ((_%e80778106%_
                                                      (gx#syntax-e
                                                       _%__stx1931219313%_)))
                                                 (let ((_%tl80798113%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e80778106%_)))
                                                       (_%hd80788110%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e80778106%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl80798113%_)
                                                       (let ((_%e80808116%_
                                                              (gx#syntax-e
                                                               _%tl80798113%_)))
                                                         (let ((_%tl80828123%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e80808116%_)))
                       (_%hd80818120%_
                        (let () (declare (not safe)) (##car _%e80808116%_))))
                   (if (gx#stx-null? _%tl80828123%_)
                       (_%__kont1931519316%_ _%hd80818120%_ _%hd80788110%_)
                       (_%__kont1931719318%_))))
               (_%__kont1931719318%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont1931719318%_))))))))
                              (_%__kont1934119342%_
                               (lambda (_%g79118006%_ _%g79128008%_)
                                 (if _%kwvar7893%_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"bad syntax; duplicate #!key argument"
                                      _%stx5393%_
                                      _%hd7885%_
                                      _%g79128008%_)
                                     (_%lp7888%_
                                      _%g79118006%_
                                      _%g79128008%_
                                      _%kwargs7894%_
                                      _%args7895%_))))
                              (_%__kont1934319344%_
                               (lambda (_%g79207958%_ _%g79217960%_)
                                 (_%lp7888%_
                                  _%g79207958%_
                                  _%kwvar7893%_
                                  _%kwargs7894%_
                                  (cons _%g79217960%_ _%args7895%_))))
                              (_%__kont1934519346%_
                               (lambda ()
                                 (values _%kwvar7893%_
                                         (reverse _%kwargs7894%_)
                                         (foldl cons
                                                _%rest7891%_
                                                _%args7895%_)))))
                          (let ((_%__match1935919360%_
                                 (lambda (_%e79058029%_
                                          _%hd79068033%_
                                          _%tl79078036%_
                                          _%e79088039%_
                                          _%hd79098043%_
                                          _%tl79108046%_)
                                   (let ((_%g79028049%_ _%tl79108046%_)
                                         (_%g79038051%_ _%hd79098043%_)
                                         (_%g79048052%_ _%hd79068033%_))
                                     (if (gx#stx-keyword? _%g79048052%_)
                                         (_%__kont1933919340%_
                                          _%g79028049%_
                                          _%g79038051%_
                                          _%g79048052%_)
                                         (if (gx#stx-datum? _%hd79068033%_)
                                             (let ((_%e79167992%_
                                                    (gx#stx-e _%hd79068033%_)))
                                               (if (equal? _%e79167992%_
                                                           '#!key)
                                                   (_%__kont1934119342%_
                                                    _%tl79108046%_
                                                    _%hd79098043%_)
                                                   (_%__kont1934319344%_
                                                    _%tl79078036%_
                                                    _%hd79068033%_)))
                                             (_%__kont1934319344%_
                                              _%tl79078036%_
                                              _%hd79068033%_)))))))
                            (if (gx#stx-pair? _%__stx1933619337%_)
                                (let ((_%e79058029%_
                                       (gx#syntax-e _%__stx1933619337%_)))
                                  (let ((_%tl79078036%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e79058029%_)))
                                        (_%hd79068033%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e79058029%_))))
                                    (if (gx#stx-pair? _%tl79078036%_)
                                        (let ((_%e79088039%_
                                               (gx#syntax-e _%tl79078036%_)))
                                          (let ((_%tl79108046%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e79088039%_)))
                                                (_%hd79098043%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e79088039%_))))
                                            (_%__match1935919360%_
                                             _%e79058029%_
                                             _%hd79068033%_
                                             _%tl79078036%_
                                             _%e79088039%_
                                             _%hd79098043%_
                                             _%tl79108046%_)))
                                        (if (gx#stx-datum? _%hd79068033%_)
                                            (let ((_%e79167992%_
                                                   (gx#stx-e _%hd79068033%_)))
                                              (_%__kont1934319344%_
                                               _%tl79078036%_
                                               _%hd79068033%_))
                                            (_%__kont1934319344%_
                                             _%tl79078036%_
                                             _%hd79068033%_)))))
                                (_%__kont1934519346%_))))))))
                 (_%check-duplicate-bindings5402%_
                  (lambda (_%hd7577%_)
                    (let _%lp7580%_ ((_%rest7583%_ _%hd7577%_)
                                     (_%ids7585%_ '()))
                      (let* ((_%__stx1941019411%_ _%rest7583%_)
                             (_%g75887600%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1941019411%_))))
                        (let ((_%__kont1941319414%_
                               (lambda (_%g75907628%_ _%g75917630%_)
                                 (if (gx#identifier? _%g75917630%_)
                                     (_%lp7580%_
                                      _%g75907628%_
                                      (cons _%g75917630%_ _%ids7585%_))
                                     (if (gx#stx-pair? _%g75917630%_)
                                         (let* ((_%g76497663%_
                                                 (lambda (_%g76507659%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g76507659%_)))
                                                (_%g76487705%_
                                                 (lambda (_%g76507667%_)
                                                   (if (gx#stx-pair?
                                                        _%g76507667%_)
                                                       (let ((_%e76527670%_
                                                              (gx#syntax-e
                                                               _%g76507667%_)))
                                                         (let ((_%hd76537674%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e76527670%_)))
                       (_%tl76547677%_
                        (let () (declare (not safe)) (##cdr _%e76527670%_))))
                   (if (gx#stx-pair? _%tl76547677%_)
                       (let ((_%e76557680%_ (gx#syntax-e _%tl76547677%_)))
                         (let ((_%hd76567684%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e76557680%_)))
                               (_%tl76577687%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e76557680%_))))
                           (if (gx#stx-null? _%tl76577687%_)
                               ((lambda (_%g76517690%_)
                                  (_%lp7580%_
                                   _%g75907628%_
                                   (cons _%g76517690%_ _%ids7585%_)))
                                _%hd76537674%_)
                               (_%g76497663%_ _%g76507667%_))))
                       (_%g76497663%_ _%g76507667%_))))
               (_%g76497663%_ _%g76507667%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g76487705%_ _%g75917630%_))
                                         (if (gx#stx-keyword? _%g75917630%_)
                                             (let* ((_%g77117723%_
                                                     (lambda (_%g77127719%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g77127719%_)))
                                                    (_%g77107826%_
                                                     (lambda (_%g77127727%_)
                                                       (if (gx#stx-pair?
                                                            _%g77127727%_)
                                                           (let ((_%e77157730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g77127727%_)))
                     (let ((_%hd77167734%_
                            (let ()
                              (declare (not safe))
                              (##car _%e77157730%_)))
                           (_%tl77177737%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e77157730%_))))
                       ((lambda (_%g77137740%_ _%g77147742%_)
                          (let* ((_%__stx1938619387%_ _%g77147742%_)
                                 (_%g77557769%_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx1938619387%_))))
                            (let ((_%__kont1938919390%_
                                   (lambda (_%g77577807%_)
                                     (_%lp7580%_
                                      _%g77137740%_
                                      (cons _%g77577807%_ _%ids7585%_))))
                                  (_%__kont1939119392%_
                                   (lambda ()
                                     (_%lp7580%_
                                      _%g77137740%_
                                      (cons _%g77147742%_ _%ids7585%_)))))
                              (if (gx#stx-pair? _%__stx1938619387%_)
                                  (let ((_%e77587787%_
                                         (gx#syntax-e _%__stx1938619387%_)))
                                    (let ((_%tl77607794%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e77587787%_)))
                                          (_%hd77597791%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e77587787%_))))
                                      (if (gx#stx-pair? _%tl77607794%_)
                                          (let ((_%e77617797%_
                                                 (gx#syntax-e _%tl77607794%_)))
                                            (let ((_%tl77637804%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e77617797%_)))
                                                  (_%hd77627801%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e77617797%_))))
                                              (if (gx#stx-null? _%tl77637804%_)
                                                  (_%__kont1938919390%_
                                                   _%hd77597791%_)
                                                  (_%__kont1939119392%_))))
                                          (_%__kont1939119392%_))))
                                  (_%__kont1939119392%_)))))
                        _%tl77177737%_
                        _%hd77167734%_)))
                   (_%g77117723%_ _%g77127727%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g77107826%_ _%g75907628%_))
                                             (if (eq? (gx#stx-e _%g75917630%_)
                                                      '#!key)
                                                 (let* ((_%g78327844%_
                                                         (lambda (_%g78337840%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g78337840%_)))
                                                        (_%g78317875%_
                                                         (lambda (_%g78337848%_)
                                                           (if (gx#stx-pair?
                                                                _%g78337848%_)
                                                               (let ((_%e78367851%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%g78337848%_)))
                         (let ((_%hd78377855%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e78367851%_)))
                               (_%tl78387858%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e78367851%_))))
                           ((lambda (_%g78347861%_ _%g78357863%_)
                              (_%lp7580%_
                               _%g78347861%_
                               (cons _%g78357863%_ _%ids7585%_)))
                            _%tl78387858%_
                            _%hd78377855%_)))
                       (_%g78327844%_ _%g78337848%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g78317875%_
                                                    _%g75907628%_))
                                                 (error '"BUG: check-duplicate-bindings"
                                                        _%stx5393%_
                                                        _%rest7583%_)))))))
                              (_%__kont1941519416%_
                               (lambda ()
                                 (gx#check-duplicate-identifiers
                                  (if (gx#stx-null? _%rest7583%_)
                                      _%ids7585%_
                                      (cons _%rest7583%_ _%ids7585%_))
                                  _%stx5393%_))))
                          (if (gx#stx-pair? _%__stx1941019411%_)
                              (let ((_%e75927618%_
                                     (gx#syntax-e _%__stx1941019411%_)))
                                (let ((_%tl75947625%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e75927618%_)))
                                      (_%hd75937622%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e75927618%_))))
                                  (_%__kont1941319414%_
                                   _%tl75947625%_
                                   _%hd75937622%_)))
                              (_%__kont1941519416%_)))))))
                 (_%generate-opt-primary5403%_
                  (lambda (_%pre7373%_ _%opt7375%_ _%tail7376%_ _%body7377%_)
                    (let* ((_%g73797420%_
                            (lambda (_%g73807416%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g73807416%_)))
                           (_%g73787573%_
                            (lambda (_%g73807424%_)
                              (if (gx#stx-pair? _%g73807424%_)
                                  (let ((_%e73857427%_
                                         (gx#syntax-e _%g73807424%_)))
                                    (let ((_%hd73867431%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e73857427%_)))
                                          (_%tl73877434%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e73857427%_))))
                                      (if (gx#stx-pair/null? _%hd73867431%_)
                                          (let ((_g21005_
                                                 (gx#syntax-split-splice
                                                  _%hd73867431%_
                                                  '0)))
                                            (begin
                                              (let ((_g21006_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g21005_)
                                                           (##values-length
                                                            _g21005_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g21006_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g21006_)))
                                              (let ((_%target73887437%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g21005_
                                                        0)))
                                                    (_%tl73907440%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g21005_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl73907440%_)
                                                    (letrec ((_%loop73917443%_
                                                              (lambda (_%hd73897447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%pre73957450%_)
                        (if (gx#stx-pair? _%hd73897447%_)
                            (let ((_%e73927452%_ (gx#syntax-e _%hd73897447%_)))
                              (let ((_%lp-hd73937456%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e73927452%_)))
                                    (_%lp-tl73947459%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e73927452%_))))
                                (_%loop73917443%_
                                 _%lp-tl73947459%_
                                 (cons _%lp-hd73937456%_ _%pre73957450%_))))
                            (let ((_%pre73967462%_ (reverse _%pre73957450%_)))
                              (if (gx#stx-pair? _%tl73877434%_)
                                  (let ((_%e73977465%_
                                         (gx#syntax-e _%tl73877434%_)))
                                    (let ((_%hd73987469%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e73977465%_)))
                                          (_%tl73997472%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e73977465%_))))
                                      (if (gx#stx-pair/null? _%hd73987469%_)
                                          (let ((_g21007_
                                                 (gx#syntax-split-splice
                                                  _%hd73987469%_
                                                  '0)))
                                            (begin
                                              (let ((_g21008_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g21007_)
                                                           (##values-length
                                                            _g21007_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g21008_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g21008_)))
                                              (let ((_%target74007475%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g21007_
                                                        0)))
                                                    (_%tl74027478%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g21007_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl74027478%_)
                                                    (letrec ((_%loop74037481%_
                                                              (lambda (_%hd74017485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%opt74077488%_)
                        (if (gx#stx-pair? _%hd74017485%_)
                            (let ((_%e74047490%_ (gx#syntax-e _%hd74017485%_)))
                              (let ((_%lp-hd74057494%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e74047490%_)))
                                    (_%lp-tl74067497%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e74047490%_))))
                                (_%loop74037481%_
                                 _%lp-tl74067497%_
                                 (cons _%lp-hd74057494%_ _%opt74077488%_))))
                            (let ((_%opt74087500%_ (reverse _%opt74077488%_)))
                              (if (gx#stx-pair? _%tl73997472%_)
                                  (let ((_%e74097503%_
                                         (gx#syntax-e _%tl73997472%_)))
                                    (let ((_%hd74107507%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e74097503%_)))
                                          (_%tl74117510%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e74097503%_))))
                                      (if (gx#stx-pair? _%tl74117510%_)
                                          (let ((_%e74127513%_
                                                 (gx#syntax-e _%tl74117510%_)))
                                            (let ((_%hd74137517%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e74127513%_)))
                                                  (_%tl74147520%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e74127513%_))))
                                              (if (gx#stx-null? _%tl74147520%_)
                                                  ((lambda (_%g73817523%_
                                                            _%g73827525%_
                                                            _%g73837526%_
                                                            _%g73847527%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda%)
                                                           (cons (foldr (lambda (_%g75567561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _%g75577564%_)
                                  (cons _%g75567561%_ _%g75577564%_))
                                (foldr (lambda (_%g75587567%_ _%g75597570%_)
                                         (cons _%g75587567%_ _%g75597570%_))
                                       _%g73827525%_
                                       _%g73837526%_)
                                _%g73847527%_)
                         _%g73817523%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%hd74137517%_
                                                   _%hd74107507%_
                                                   _%opt74087500%_
                                                   _%pre73967462%_)
                                                  (_%g73797420%_
                                                   _%g73807424%_))))
                                          (_%g73797420%_ _%g73807424%_))))
                                  (_%g73797420%_ _%g73807424%_)))))))
              (_%loop74037481%_ _%target74007475%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g73797420%_
                                                     _%g73807424%_)))))
                                          (_%g73797420%_ _%g73807424%_))))
                                  (_%g73797420%_ _%g73807424%_)))))))
              (_%loop73917443%_ _%target73887437%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g73797420%_
                                                     _%g73807424%_)))))
                                          (_%g73797420%_ _%g73807424%_))))
                                  (_%g73797420%_ _%g73807424%_)))))
                      (_%g73787573%_
                       (list _%pre7373%_
                             (map car _%opt7375%_)
                             _%tail7376%_
                             _%body7377%_)))))
                 (_%generate-opt-dispatch5404%_
                  (lambda (_%primary7367%_
                           _%pre7369%_
                           _%opt7370%_
                           _%tail7371%_)
                    (cons (list _%pre7369%_
                                (_%generate-opt-clause5406%_
                                 _%primary7367%_
                                 _%pre7369%_
                                 _%opt7370%_))
                          (_%generate-opt-dispatch*5405%_
                           _%primary7367%_
                           _%pre7369%_
                           _%opt7370%_
                           _%tail7371%_))))
                 (_%generate-opt-dispatch*5405%_
                  (lambda (_%primary6924%_
                           _%pre6926%_
                           _%opt6927%_
                           _%tail6928%_)
                    (let _%recur6930%_ ((_%opt-rest6933%_ _%opt6927%_)
                                        (_%right6935%_ '()))
                      (if (pair? _%opt-rest6933%_)
                          (let* ((_%hd6939%_ (caar _%opt-rest6933%_))
                                 (_%rest6942%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%opt-rest6933%_)))
                                 (_%right*6945%_
                                  (cons _%hd6939%_ _%right6935%_))
                                 (_%g69486965%_
                                  (lambda (_%g69496961%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g69496961%_)))
                                 (_%g69477145%_
                                  (lambda (_%g69496969%_)
                                    (if (gx#stx-pair/null? _%g69496969%_)
                                        (let ((_g21009_
                                               (gx#syntax-split-splice
                                                _%g69496969%_
                                                '0)))
                                          (begin
                                            (let ((_g21010_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g21009_)
                                                         (##values-length
                                                          _g21009_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g21010_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g21010_)))
                                            (let ((_%target69516972%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21009_
                                                      0)))
                                                  (_%tl69536975%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21009_
                                                      1))))
                                              (if (gx#stx-null? _%tl69536975%_)
                                                  (letrec ((_%loop69546978%_
                                                            (lambda (_%hd69526982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%pre-bind69586985%_)
                      (if (gx#stx-pair? _%hd69526982%_)
                          (let ((_%e69556987%_ (gx#syntax-e _%hd69526982%_)))
                            (let ((_%lp-hd69566991%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e69556987%_)))
                                  (_%lp-tl69576994%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e69556987%_))))
                              (_%loop69546978%_
                               _%lp-tl69576994%_
                               (cons _%lp-hd69566991%_ _%pre-bind69586985%_))))
                          (let ((_%pre-bind69596997%_
                                 (reverse _%pre-bind69586985%_)))
                            ((lambda (_%g69507000%_)
                               (let* ((_%g70227039%_
                                       (lambda (_%g70237035%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g70237035%_)))
                                      (_%g70217141%_
                                       (lambda (_%g70237043%_)
                                         (if (gx#stx-pair/null? _%g70237043%_)
                                             (let ((_g21011_
                                                    (gx#syntax-split-splice
                                                     _%g70237043%_
                                                     '0)))
                                               (begin
                                                 (let ((_g21012_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g21011_)
                                                              (##values-length
                                                               _g21011_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g21012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g21012_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target70257046%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g21011_
                                                           0)))
                                                       (_%tl70277049%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g21011_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl70277049%_)
                                                       (letrec ((_%loop70287052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd70267056%_ _%opt-bind70327059%_)
                           (if (gx#stx-pair? _%hd70267056%_)
                               (let ((_%e70297061%_
                                      (gx#syntax-e _%hd70267056%_)))
                                 (let ((_%lp-hd70307065%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e70297061%_)))
                                       (_%lp-tl70317068%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e70297061%_))))
                                   (_%loop70287052%_
                                    _%lp-tl70317068%_
                                    (cons _%lp-hd70307065%_
                                          _%opt-bind70327059%_))))
                               (let ((_%opt-bind70337071%_
                                      (reverse _%opt-bind70327059%_)))
                                 ((lambda (_%g70247074%_)
                                    (let* ((_%g70917099%_
                                            (lambda (_%g70927095%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g70927095%_)))
                                           (_%g70907137%_
                                            (lambda (_%g70927103%_)
                                              ((lambda (_%g70937106%_)
                                                 (cons (list (foldr (lambda (_%g71207125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g71217128%_)
                              (cons _%g71207125%_ _%g71217128%_))
                            (foldr (lambda (_%g71227131%_ _%g71237134%_)
                                     (cons _%g71227131%_ _%g71237134%_))
                                   (cons _%g70937106%_ '())
                                   _%g70247074%_)
                            _%g69507000%_)
                     (_%generate-opt-clause5406%_
                      _%primary6924%_
                      (foldr cons (reverse _%right*6945%_) _%pre6926%_)
                      _%rest6942%_))
               (_%recur6930%_ _%rest6942%_ _%right*6945%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g70927103%_))))
                                      (_%g70907137%_ _%hd6939%_)))
                                  _%opt-bind70337071%_))))))
                 (_%loop70287052%_ _%target70257046%_ '()))
               (_%g70227039%_ _%g70237043%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g70227039%_ _%g70237043%_)))))
                                 (_%g70217141%_ (reverse _%right6935%_))))
                             _%pre-bind69596997%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop69546978%_
                                                     _%target69516972%_
                                                     '()))
                                                  (_%g69486965%_
                                                   _%g69496969%_)))))
                                        (_%g69486965%_ _%g69496969%_)))))
                            (_%g69477145%_ _%pre6926%_))
                          (if (gx#stx-null? _%tail6928%_)
                              '()
                              (let* ((_%g71537194%_
                                      (lambda (_%g71547190%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g71547190%_)))
                                     (_%g71527363%_
                                      (lambda (_%g71547198%_)
                                        (if (gx#stx-pair? _%g71547198%_)
                                            (let ((_%e71597201%_
                                                   (gx#syntax-e
                                                    _%g71547198%_)))
                                              (let ((_%hd71607205%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71597201%_)))
                                                    (_%tl71617208%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71597201%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd71607205%_)
                                                    (let ((_g21013_
                                                           (gx#syntax-split-splice
                                                            _%hd71607205%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g21014_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g21013_)
                             (##values-length _g21013_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g21014_ 2)))
                      (error "Context expects 2 values" _g21014_)))
                (let ((_%target71627211%_
                       (let () (declare (not safe)) (##values-ref _g21013_ 0)))
                      (_%tl71647214%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g21013_ 1))))
                  (if (gx#stx-null? _%tl71647214%_)
                      (letrec ((_%loop71657217%_
                                (lambda (_%hd71637221%_ _%pre71697224%_)
                                  (if (gx#stx-pair? _%hd71637221%_)
                                      (let ((_%e71667226%_
                                             (gx#syntax-e _%hd71637221%_)))
                                        (let ((_%lp-hd71677230%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e71667226%_)))
                                              (_%lp-tl71687233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e71667226%_))))
                                          (_%loop71657217%_
                                           _%lp-tl71687233%_
                                           (cons _%lp-hd71677230%_
                                                 _%pre71697224%_))))
                                      (let ((_%pre71707236%_
                                             (reverse _%pre71697224%_)))
                                        (if (gx#stx-pair? _%tl71617208%_)
                                            (let ((_%e71717239%_
                                                   (gx#syntax-e
                                                    _%tl71617208%_)))
                                              (let ((_%hd71727243%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71717239%_)))
                                                    (_%tl71737246%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71717239%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd71727243%_)
                                                    (let ((_g21015_
                                                           (gx#syntax-split-splice
                                                            _%hd71727243%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g21016_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g21015_)
                             (##values-length _g21015_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g21016_ 2)))
                      (error "Context expects 2 values" _g21016_)))
                (let ((_%target71747249%_
                       (let () (declare (not safe)) (##values-ref _g21015_ 0)))
                      (_%tl71767252%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g21015_ 1))))
                  (if (gx#stx-null? _%tl71767252%_)
                      (letrec ((_%loop71777255%_
                                (lambda (_%hd71757259%_ _%opt71817262%_)
                                  (if (gx#stx-pair? _%hd71757259%_)
                                      (let ((_%e71787264%_
                                             (gx#syntax-e _%hd71757259%_)))
                                        (let ((_%lp-hd71797268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e71787264%_)))
                                              (_%lp-tl71807271%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e71787264%_))))
                                          (_%loop71777255%_
                                           _%lp-tl71807271%_
                                           (cons _%lp-hd71797268%_
                                                 _%opt71817262%_))))
                                      (let ((_%opt71827274%_
                                             (reverse _%opt71817262%_)))
                                        (if (gx#stx-pair? _%tl71737246%_)
                                            (let ((_%e71837277%_
                                                   (gx#syntax-e
                                                    _%tl71737246%_)))
                                              (let ((_%hd71847281%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71837277%_)))
                                                    (_%tl71857284%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71837277%_))))
                                                (if (gx#stx-pair?
                                                     _%tl71857284%_)
                                                    (let ((_%e71867287%_
                                                           (gx#syntax-e
                                                            _%tl71857284%_)))
                                                      (let ((_%hd71877291%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e71867287%_)))
                    (_%tl71887294%_
                     (let () (declare (not safe)) (##cdr _%e71867287%_))))
                (if (gx#stx-null? _%tl71887294%_)
                    ((lambda (_%g71557297%_
                              _%g71567299%_
                              _%g71577300%_
                              _%g71587301%_)
                       (list (list (foldr (lambda (_%g73307335%_ _%g73317338%_)
                                            (cons _%g73307335%_ _%g73317338%_))
                                          (foldr (lambda (_%g73327341%_
                                                          _%g73337344%_)
                                                   (cons _%g73327341%_
                                                         _%g73337344%_))
                                                 _%g71567299%_
                                                 _%g71577300%_)
                                          _%g71587301%_)
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'apply)
                                          (cons _%g71557297%_
                                                (foldr (lambda (_%g73467351%_
                                                                _%g73477354%_)
                                                         (cons _%g73467351%_
                                                               _%g73477354%_))
                                                       (foldr (lambda (_%g73487357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g73497360%_)
                        (cons _%g73487357%_ _%g73497360%_))
                      (cons _%g71567299%_ '())
                      _%g71577300%_)
               _%g71587301%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (gx#stx-source _%stx5393%_)))))
                     _%hd71877291%_
                     _%hd71847281%_
                     _%opt71827274%_
                     _%pre71707236%_)
                    (_%g71537194%_ _%g71547198%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g71537194%_
                                                     _%g71547198%_))))
                                            (_%g71537194%_ _%g71547198%_)))))))
                        (_%loop71777255%_ _%target71747249%_ '()))
                      (_%g71537194%_ _%g71547198%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g71537194%_
                                                     _%g71547198%_))))
                                            (_%g71537194%_ _%g71547198%_)))))))
                        (_%loop71657217%_ _%target71627211%_ '()))
                      (_%g71537194%_ _%g71547198%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g71537194%_
                                                     _%g71547198%_))))
                                            (_%g71537194%_ _%g71547198%_)))))
                                (_%g71527363%_
                                 (list _%pre6926%_
                                       (reverse _%right6935%_)
                                       _%tail6928%_
                                       _%primary6924%_))))))))
                 (_%generate-opt-clause5406%_
                  (lambda (_%primary6626%_ _%pre6628%_ _%opt6629%_)
                    (let _%recur6631%_ ((_%opt-rest6634%_ _%opt6629%_)
                                        (_%right6636%_ '()))
                      (if (pair? _%opt-rest6634%_)
                          (let* ((_%hd6638%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%opt-rest6634%_)))
                                 (_%rest6641%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%opt-rest6634%_)))
                                 (_%g66446652%_
                                  (lambda (_%g66456648%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g66456648%_)))
                                 (_%g66436741%_
                                  (lambda (_%g66456656%_)
                                    ((lambda (_%g66466659%_)
                                       (let* ((_%g66756683%_
                                               (lambda (_%g66766679%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g66766679%_)))
                                              (_%g66746737%_
                                               (lambda (_%g66766687%_)
                                                 ((lambda (_%g66776690%_)
                                                    (let* ((_%g67036711%_
                                                            (lambda (_%g67046707%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g67046707%_)))
                                                           (_%g67026733%_
                                                            (lambda (_%g67046715%_)
                                                              ((lambda (_%g67056718%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons (cons (cons (cons _%g66466659%_ '())
                                                 (cons _%g66776690%_ '()))
                                           '())
                                     (cons _%g67056718%_ '()))))
                       _%g67046715%_))))
              (_%g67026733%_
               (_%recur6631%_
                _%rest6641%_
                (cons _%g66466659%_ _%right6636%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g66766687%_))))
                                         (_%g66746737%_ (cdr _%hd6638%_))))
                                     _%g66456656%_))))
                            (_%g66436741%_ (car _%hd6638%_)))
                          (let* ((_%g67456782%_
                                  (lambda (_%g67466778%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g67466778%_)))
                                 (_%g67446920%_
                                  (lambda (_%g67466786%_)
                                    (if (gx#stx-pair? _%g67466786%_)
                                        (let ((_%e67506789%_
                                               (gx#syntax-e _%g67466786%_)))
                                          (let ((_%hd67516793%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67506789%_)))
                                                (_%tl67526796%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67506789%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd67516793%_)
                                                (let ((_g21017_
                                                       (gx#syntax-split-splice
                                                        _%hd67516793%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g21018_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g21017_)
                         (##values-length _g21017_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g21018_ 2)))
                  (error "Context expects 2 values" _g21018_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target67536799%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21017_
                                                              0)))
                                                          (_%tl67556802%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21017_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl67556802%_)
                                                          (letrec ((_%loop67566805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd67546809%_ _%pre67606812%_)
                              (if (gx#stx-pair? _%hd67546809%_)
                                  (let ((_%e67576814%_
                                         (gx#syntax-e _%hd67546809%_)))
                                    (let ((_%lp-hd67586818%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e67576814%_)))
                                          (_%lp-tl67596821%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e67576814%_))))
                                      (_%loop67566805%_
                                       _%lp-tl67596821%_
                                       (cons _%lp-hd67586818%_
                                             _%pre67606812%_))))
                                  (let ((_%pre67616824%_
                                         (reverse _%pre67606812%_)))
                                    (if (gx#stx-pair? _%tl67526796%_)
                                        (let ((_%e67626827%_
                                               (gx#syntax-e _%tl67526796%_)))
                                          (let ((_%hd67636831%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67626827%_)))
                                                (_%tl67646834%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67626827%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd67636831%_)
                                                (let ((_g21019_
                                                       (gx#syntax-split-splice
                                                        _%hd67636831%_
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
                                                    (let ((_%target67656837%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21019_
                                                              0)))
                                                          (_%tl67676840%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21019_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl67676840%_)
                                                          (letrec ((_%loop67686843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd67666847%_ _%opt67726850%_)
                              (if (gx#stx-pair? _%hd67666847%_)
                                  (let ((_%e67696852%_
                                         (gx#syntax-e _%hd67666847%_)))
                                    (let ((_%lp-hd67706856%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e67696852%_)))
                                          (_%lp-tl67716859%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e67696852%_))))
                                      (_%loop67686843%_
                                       _%lp-tl67716859%_
                                       (cons _%lp-hd67706856%_
                                             _%opt67726850%_))))
                                  (let ((_%opt67736862%_
                                         (reverse _%opt67726850%_)))
                                    (if (gx#stx-pair? _%tl67646834%_)
                                        (let ((_%e67746865%_
                                               (gx#syntax-e _%tl67646834%_)))
                                          (let ((_%hd67756869%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67746865%_)))
                                                (_%tl67766872%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67746865%_))))
                                            (if (gx#stx-null? _%tl67766872%_)
                                                ((lambda (_%g67476875%_
                                                          _%g67486877%_
                                                          _%g67496878%_)
                                                   (gx#stx-wrap-source
                                                    (cons _%g67476875%_
                                                          (foldr (lambda (_%g69036908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g69046911%_)
                           (cons _%g69036908%_ _%g69046911%_))
                         (foldr (lambda (_%g69056914%_ _%g69066917%_)
                                  (cons _%g69056914%_ _%g69066917%_))
                                '()
                                _%g67486877%_)
                         _%g67496878%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _%stx5393%_)))
                                                 _%hd67756869%_
                                                 _%opt67736862%_
                                                 _%pre67616824%_)
                                                (_%g67456782%_
                                                 _%g67466786%_))))
                                        (_%g67456782%_ _%g67466786%_)))))))
                    (_%loop67686843%_ _%target67656837%_ '()))
                  (_%g67456782%_ _%g67466786%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g67456782%_
                                                 _%g67466786%_))))
                                        (_%g67456782%_ _%g67466786%_)))))))
                    (_%loop67566805%_ _%target67536799%_ '()))
                  (_%g67456782%_ _%g67466786%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g67456782%_
                                                 _%g67466786%_))))
                                        (_%g67456782%_ _%g67466786%_)))))
                            (_%g67446920%_
                             (list _%pre6628%_
                                   (reverse _%right6636%_)
                                   _%primary6626%_)))))))
                 (_%generate-kw-primary5407%_
                  (lambda (_%key6006%_
                           _%kwargs6008%_
                           _%args6009%_
                           _%body6010%_)
                    (letrec ((_%make-body6012%_
                              (lambda (_%kwargs6495%_ _%kwvals6497%_)
                                (if (pair? _%kwargs6495%_)
                                    (let* ((_%kwarg6499%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%kwargs6495%_)))
                                           (_%var6502%_ (cadr _%kwarg6499%_))
                                           (_%default6505%_
                                            (caddr _%kwarg6499%_))
                                           (_%kwval6508%_ (car _%kwvals6497%_))
                                           (_%rest-kwargs6511%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%kwargs6495%_)))
                                           (_%rest-kwvals6514%_
                                            (cdr _%kwvals6497%_))
                                           (_%g65196542%_
                                            (lambda (_%g65206538%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g65206538%_)))
                                           (_%g65186622%_
                                            (lambda (_%g65206546%_)
                                              (if (gx#stx-pair? _%g65206546%_)
                                                  (let ((_%e65256549%_
                                                         (gx#syntax-e
                                                          _%g65206546%_)))
                                                    (let ((_%hd65266553%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e65256549%_)))
                                                          (_%tl65276556%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e65256549%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl65276556%_)
                                                          (let ((_%e65286559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl65276556%_)))
                    (let ((_%hd65296563%_
                           (let () (declare (not safe)) (##car _%e65286559%_)))
                          (_%tl65306566%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e65286559%_))))
                      (if (gx#stx-pair? _%tl65306566%_)
                          (let ((_%e65316569%_ (gx#syntax-e _%tl65306566%_)))
                            (let ((_%hd65326573%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e65316569%_)))
                                  (_%tl65336576%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e65316569%_))))
                              (if (gx#stx-pair? _%tl65336576%_)
                                  (let ((_%e65346579%_
                                         (gx#syntax-e _%tl65336576%_)))
                                    (let ((_%hd65356583%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e65346579%_)))
                                          (_%tl65366586%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e65346579%_))))
                                      (if (gx#stx-null? _%tl65366586%_)
                                          ((lambda (_%g65216589%_
                                                    _%g65226591%_
                                                    _%g65236592%_
                                                    _%g65246593%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'let-values)
                                                   (cons (cons (cons (cons _%g65246593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'eq?)
                                                     (cons _%g65236592%_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'absent-value)
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%g65226591%_
                                                     (cons _%g65236592%_
                                                           '()))))
                                   '()))
                       '())
                 (cons _%g65216589%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd65356583%_
                                           _%hd65326573%_
                                           _%hd65296563%_
                                           _%hd65266553%_)
                                          (_%g65196542%_ _%g65206546%_))))
                                  (_%g65196542%_ _%g65206546%_))))
                          (_%g65196542%_ _%g65206546%_))))
                  (_%g65196542%_ _%g65206546%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g65196542%_
                                                   _%g65206546%_)))))
                                      (_%g65186622%_
                                       (list _%var6502%_
                                             _%kwval6508%_
                                             _%default6505%_
                                             (_%make-body6012%_
                                              _%rest-kwargs6511%_
                                              _%rest-kwvals6514%_))))
                                    (cons 'begin _%body6010%_))))
                             (_%make-main6014%_
                              (lambda ()
                                (let* ((_%g63056313%_
                                        (lambda (_%g63066309%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g63066309%_)))
                                       (_%g63046487%_
                                        (lambda (_%g63066317%_)
                                          ((lambda (_%g63076320%_)
                                             (let* ((_%g63326349%_
                                                     (lambda (_%g63336345%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g63336345%_)))
                                                    (_%g63316483%_
                                                     (lambda (_%g63336353%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g63336353%_)
                                                           (let ((_g21021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g63336353%_ '0)))
                     (begin
                       (let ((_g21022_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g21021_)
                                    (##values-length _g21021_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g21022_ 2)))
                             (error "Context expects 2 values" _g21022_)))
                       (let ((_%target63356356%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g21021_ 0)))
                             (_%tl63376359%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g21021_ 1))))
                         (if (gx#stx-null? _%tl63376359%_)
                             (letrec ((_%loop63386362%_
                                       (lambda (_%hd63366366%_
                                                _%kwval63426369%_)
                                         (if (gx#stx-pair? _%hd63366366%_)
                                             (let ((_%e63396371%_
                                                    (gx#syntax-e
                                                     _%hd63366366%_)))
                                               (let ((_%lp-hd63406375%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e63396371%_)))
                                                     (_%lp-tl63416378%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e63396371%_))))
                                                 (_%loop63386362%_
                                                  _%lp-tl63416378%_
                                                  (cons _%lp-hd63406375%_
                                                        _%kwval63426369%_))))
                                             (let ((_%kwval63436381%_
                                                    (reverse _%kwval63426369%_)))
                                               ((lambda (_%g63346384%_)
                                                  (let* ((_%g64016409%_
                                                          (lambda (_%g64026405%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g64026405%_)))
                                                         (_%g64006479%_
                                                          (lambda (_%g64026413%_)
                                                            ((lambda (_%g64036416%_)
                                                               (let* ((_%g64296437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g64306433%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g64306433%_)))
                              (_%g64286467%_
                               (lambda (_%g64306441%_)
                                 ((lambda (_%g64316444%_)
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (cons _%g63076320%_
                                                       (foldr (lambda (_%g64586461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g64596464%_)
                        (cons _%g64586461%_ _%g64596464%_))
                      _%g64036416%_
                      _%g63346384%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g64316444%_ '())))
                                     (gx#stx-source _%stx5393%_)))
                                  _%g64306441%_))))
                         (_%g64286467%_
                          (_%make-body6012%_
                           _%kwargs6008%_
                           (foldr (lambda (_%g64706473%_ _%g64716476%_)
                                    (cons _%g64706473%_ _%g64716476%_))
                                  '()
                                  _%g63346384%_)))))
                     _%g64026413%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g64006479%_
                                                     _%args6009%_)))
                                                _%kwval63436381%_))))))
                               (_%loop63386362%_ _%target63356356%_ '()))
                             (_%g63326349%_ _%g63336353%_)))))
                   (_%g63326349%_ _%g63336353%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g63316483%_
                                                (gx#gentemps
                                                 (map cadr _%kwargs6008%_)))))
                                           _%g63066317%_))))
                                  (_%g63046487%_
                                   (let ((_%$e6491%_ _%key6006%_))
                                     (if _%$e6491%_
                                         _%$e6491%_
                                         (gx#syntax-local-introduce
                                          '@@keywords)))))))
                             (_%make-dispatch6015%_
                              (lambda (_%main6115%_)
                                (let* ((_%g61186126%_
                                        (lambda (_%g61196122%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g61196122%_)))
                                       (_%g61176295%_
                                        (lambda (_%g61196130%_)
                                          ((lambda (_%g61206133%_)
                                             (let* ((_%g61456162%_
                                                     (lambda (_%g61466158%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g61466158%_)))
                                                    (_%g61446256%_
                                                     (lambda (_%g61466166%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g61466166%_)
                                                           (let ((_g21023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g61466166%_ '0)))
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
                             (error "Context expects 2 values" _g21024_)))
                       (let ((_%target61486169%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g21023_ 0)))
                             (_%tl61506172%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g21023_ 1))))
                         (if (gx#stx-null? _%tl61506172%_)
                             (letrec ((_%loop61516175%_
                                       (lambda (_%hd61496179%_
                                                _%get-kw61556182%_)
                                         (if (gx#stx-pair? _%hd61496179%_)
                                             (let ((_%e61526184%_
                                                    (gx#syntax-e
                                                     _%hd61496179%_)))
                                               (let ((_%lp-hd61536188%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e61526184%_)))
                                                     (_%lp-tl61546191%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e61526184%_))))
                                                 (_%loop61516175%_
                                                  _%lp-tl61546191%_
                                                  (cons _%lp-hd61536188%_
                                                        _%get-kw61556182%_))))
                                             (let ((_%get-kw61566194%_
                                                    (reverse _%get-kw61556182%_)))
                                               ((lambda (_%g61476197%_)
                                                  (let* ((_%g62146222%_
                                                          (lambda (_%g62156218%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g62156218%_)))
                                                         (_%g62136252%_
                                                          (lambda (_%g62156226%_)
                                                            ((lambda (_%g62166229%_)
                                                               (gx#stx-wrap-source
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'lambda)
                              (cons (cons _%g61206133%_
                                          (gx#datum->syntax '#f 'args))
                                    (cons (cons (gx#datum->syntax '#f 'apply)
                                                (cons _%g62166229%_
                                                      (cons _%g61206133%_
                                                            (foldr (lambda (_%g62436246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g62446249%_)
                             (cons _%g62436246%_ _%g62446249%_))
                           (cons (gx#datum->syntax '#f 'args) '())
                           _%g61476197%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (gx#stx-source _%stx5393%_)))
                     _%g62156226%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g62136252%_
                                                     _%main6115%_)))
                                                _%get-kw61566194%_))))))
                               (_%loop61516175%_ _%target61486169%_ '()))
                             (_%g61456162%_ _%g61466166%_)))))
                   (_%g61456162%_ _%g61466166%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g61446256%_
                                                (map (lambda (_%kwarg6260%_)
                                                       (let* ((_%g62636271%_
                                                               (lambda (_%g62646267%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g62646267%_)))
                      (_%g62626291%_
                       (lambda (_%g62646275%_)
                         ((lambda (_%g62656278%_)
                            (cons (gx#datum->syntax '#f 'symbolic-table-ref)
                                  (cons _%g61206133%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%g62656278%_ '()))
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'absent-value)
                                                    '())))))
                          _%g62646275%_))))
                 (_%g62626291%_ (car _%kwarg6260%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%kwargs6008%_))))
                                           _%g61196130%_))))
                                  (_%g61176295%_
                                   (let ((_%$e6299%_ _%key6006%_))
                                     (if _%$e6299%_
                                         _%$e6299%_
                                         (gx#syntax-local-introduce
                                          '@@keywords))))))))
                      (let* ((_%g60176025%_
                              (lambda (_%g60186021%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g60186021%_)))
                             (_%g60166111%_
                              (lambda (_%g60186029%_)
                                ((lambda (_%g60196032%_)
                                   (let* ((_%g60456053%_
                                           (lambda (_%g60466049%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g60466049%_)))
                                          (_%g60446107%_
                                           (lambda (_%g60466057%_)
                                             ((lambda (_%g60476060%_)
                                                (let* ((_%g60736081%_
                                                        (lambda (_%g60746077%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g60746077%_)))
                                                       (_%g60726103%_
                                                        (lambda (_%g60746085%_)
                                                          ((lambda (_%g60756088%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons (cons (cons (cons _%g60196032%_ '())
                                             (cons _%g60756088%_ '()))
                                       '())
                                 (cons _%g60476060%_ '()))))
                   _%g60746085%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g60726103%_
                                                   (_%make-main6014%_))))
                                              _%g60466057%_))))
                                     (_%g60446107%_
                                      (_%make-dispatch6015%_ _%g60196032%_))))
                                 _%g60186029%_))))
                        (_%g60166111%_ (gx#genident 'kw-lambda-main))))))
                 (_%generate-kw-dispatch5408%_
                  (lambda (_%primary5919%_ _%kwargs5921%_ _%strict?5922%_)
                    (let* ((_%g59245943%_
                            (lambda (_%g59255939%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g59255939%_)))
                           (_%g59236002%_
                            (lambda (_%g59255947%_)
                              (if (gx#stx-pair? _%g59255947%_)
                                  (let ((_%e59295950%_
                                         (gx#syntax-e _%g59255947%_)))
                                    (let ((_%hd59305954%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e59295950%_)))
                                          (_%tl59315957%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e59295950%_))))
                                      (if (gx#stx-pair? _%tl59315957%_)
                                          (let ((_%e59325960%_
                                                 (gx#syntax-e _%tl59315957%_)))
                                            (let ((_%hd59335964%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e59325960%_)))
                                                  (_%tl59345967%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e59325960%_))))
                                              (if (gx#stx-pair? _%tl59345967%_)
                                                  (let ((_%e59355970%_
                                                         (gx#syntax-e
                                                          _%tl59345967%_)))
                                                    (let ((_%hd59365974%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e59355970%_)))
                                                          (_%tl59375977%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e59355970%_))))
                                                      (if (gx#stx-null?
                                                           _%tl59375977%_)
                                                          ((lambda (_%g59265980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g59275982%_
                            _%g59285983%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%g59265980%_
                                 (cons (cons (gx#datum->syntax '#f 'apply)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'keyword-dispatch)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g59285983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%g59275982%_ (cons _%g59265980%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _%hd59365974%_
                   _%hd59335964%_
                   _%hd59305954%_)
                  (_%g59245943%_ _%g59255947%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g59245943%_
                                                   _%g59255947%_))))
                                          (_%g59245943%_ _%g59255947%_))))
                                  (_%g59245943%_ _%g59255947%_)))))
                      (_%g59236002%_
                       (list (if _%strict?5922%_
                                 (_%generate-kw-table5409%_
                                  (map car _%kwargs5921%_))
                                 '#f)
                             _%primary5919%_
                             (gx#genident 'args))))))
                 (_%generate-kw-table5409%_
                  (lambda (_%kws5893%_)
                    (let _%rehash5896%_ ((_%pht5899%_
                                          (let ((__tmp21029
                                                 (length _%kws5893%_)))
                                            (declare (not safe))
                                            (##make-vector __tmp21029 '#f))))
                      (let _%lp5902%_ ((_%rest5905%_ _%kws5893%_))
                        (if (pair? _%rest5905%_)
                            (let* ((_%key5908%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest5905%_)))
                                   (_%rest5911%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest5905%_)))
                                   (_%pos5914%_
                                    (let ((__tmp21026
                                           (keyword-hash _%key5908%_))
                                          (__tmp21025
                                           (vector-length _%pht5899%_)))
                                      (declare (not safe))
                                      (##fxmodulo __tmp21026 __tmp21025))))
                              (if (vector-ref _%pht5899%_ _%pos5914%_)
                                  (if (let ((__tmp21027
                                             (vector-length _%pht5899%_)))
                                        (declare (not safe))
                                        (##fx< __tmp21027 '8192))
                                      (_%rehash5896%_
                                       (make-vector
                                        (quotient
                                         (let ((__tmp21028
                                                (vector-length _%pht5899%_)))
                                           (declare (not safe))
                                           (##fx* '3 __tmp21028))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _%kws5893%_))
                                  (begin
                                    (vector-set!
                                     _%pht5899%_
                                     _%pos5914%_
                                     _%key5908%_)
                                    (_%lp5902%_ _%rest5911%_))))
                            _%pht5899%_))))))
          (let* ((_%__stx1942619427%_ _%stx5393%_)
                 (_%g54135444%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1942619427%_))))
            (let ((_%__kont1942919430%_
                   (lambda (_%g54155874%_ _%g54165876%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%g54165876%_ _%g54155874%_))))
                  (_%__kont1943119432%_
                   (lambda (_%g54235648%_ _%g54245650%_)
                     (let ((_g21030_ (_%opt-lambda-split5399%_ _%g54245650%_)))
                       (begin
                         (let ((_g21031_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g21030_)
                                      (##values-length _g21030_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g21031_ 3)))
                               (error "Context expects 3 values" _g21031_)))
                         (let ((_%pre5663%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g21030_ 0)))
                               (_%opt5665%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g21030_ 1)))
                               (_%tail5666%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g21030_ 2))))
                           (let* ((_%g56685676%_
                                   (lambda (_%g56695672%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g56695672%_)))
                                  (_%g56675843%_
                                   (lambda (_%g56695680%_)
                                     ((lambda (_%g56705683%_)
                                        (let* ((_%g56965704%_
                                                (lambda (_%g56975700%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g56975700%_)))
                                               (_%g56955839%_
                                                (lambda (_%g56975708%_)
                                                  ((lambda (_%g56985711%_)
                                                     (let* ((_%g57245741%_
                                                             (lambda (_%g57255737%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g57255737%_)))
                                                            (_%g57235835%_
                                                             (lambda (_%g57255745%_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g57255745%_)
                           (let ((_g21032_
                                  (gx#syntax-split-splice _%g57255745%_ '0)))
                             (begin
                               (let ((_g21033_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g21032_)
                                            (##values-length _g21032_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g21033_ 2)))
                                     (error "Context expects 2 values"
                                            _g21033_)))
                               (let ((_%target57275748%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g21032_ 0)))
                                     (_%tl57295751%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g21032_ 1))))
                                 (if (gx#stx-null? _%tl57295751%_)
                                     (letrec ((_%loop57305754%_
                                               (lambda (_%hd57285758%_
                                                        _%clause57345761%_)
                                                 (if (gx#stx-pair?
                                                      _%hd57285758%_)
                                                     (let ((_%e57315763%_
                                                            (gx#syntax-e
                                                             _%hd57285758%_)))
                                                       (let ((_%lp-hd57325767%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e57315763%_)))
                     (_%lp-tl57335770%_
                      (let () (declare (not safe)) (##cdr _%e57315763%_))))
                 (_%loop57305754%_
                  _%lp-tl57335770%_
                  (cons _%lp-hd57325767%_ _%clause57345761%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause57355773%_
                                                            (reverse _%clause57345761%_)))
                                                       ((lambda (_%g57265776%_)
                                                          (let* ((_%g57935801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g57945797%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g57945797%_)))
                         (_%g57925823%_
                          (lambda (_%g57945805%_)
                            ((lambda (_%g57955808%_)
                               (cons (gx#datum->syntax '#f 'let-values)
                                     (cons (cons (cons (cons _%g56705683%_ '())
                                                       (cons _%g56985711%_
                                                             '()))
                                                 '())
                                           (cons _%g57955808%_ '()))))
                             _%g57945805%_))))
                    (_%g57925823%_
                     (gx#stx-wrap-source
                      (cons (gx#datum->syntax '#f 'case-lambda)
                            (foldr (lambda (_%g58265829%_ _%g58275832%_)
                                     (cons _%g58265829%_ _%g58275832%_))
                                   '()
                                   _%g57265776%_))
                      (gx#stx-source _%stx5393%_)))))
                _%clause57355773%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop57305754%_
                                        _%target57275748%_
                                        '()))
                                     (_%g57245741%_ _%g57255745%_)))))
                           (_%g57245741%_ _%g57255745%_)))))
               (_%g57235835%_
                (_%generate-opt-dispatch5404%_
                 _%g56705683%_
                 _%pre5663%_
                 _%opt5665%_
                 _%tail5666%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g56975708%_))))
                                          (_%g56955839%_
                                           (gx#stx-wrap-source
                                            (_%generate-opt-primary5403%_
                                             _%pre5663%_
                                             _%opt5665%_
                                             _%tail5666%_
                                             _%g54235648%_)
                                            (gx#stx-source _%stx5393%_)))))
                                      _%g56695680%_))))
                             (_%g56675843%_ (gx#genident 'opt-lambda))))))))
                  (_%__kont1943319434%_
                   (lambda (_%g54315471%_ _%g54325473%_)
                     (let* ((_%g54895496%_
                             (lambda (_%g54905492%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g54905492%_)))
                            (_%g54885617%_
                             (lambda (_%g54905500%_)
                               ((lambda ()
                                  (let ((_g21034_
                                         (_%kw-lambda-split5401%_
                                          _%g54325473%_)))
                                    (begin
                                      (let ((_g21035_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g21034_)
                                                   (##values-length _g21034_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g21035_ 3)))
                                            (error "Context expects 3 values"
                                                   _g21035_)))
                                      (let ((_%key5509%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g21034_ 0)))
                                            (_%kwargs5511%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g21034_ 1)))
                                            (_%args5512%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g21034_ 2))))
                                        (let* ((_%g55145522%_
                                                (lambda (_%g55155518%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g55155518%_)))
                                               (_%g55135613%_
                                                (lambda (_%g55155526%_)
                                                  ((lambda (_%g55165529%_)
                                                     (let* ((_%g55475555%_
                                                             (lambda (_%g55485551%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g55485551%_)))
                                                            (_%g55465609%_
                                                             (lambda (_%g55485559%_)
                                                               ((lambda (_%g55495562%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g55755583%_
                                  (lambda (_%g55765579%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g55765579%_)))
                                 (_%g55745605%_
                                  (lambda (_%g55765587%_)
                                    ((lambda (_%g55775590%_)
                                       (cons (gx#datum->syntax '#f 'let-values)
                                             (cons (cons (cons (cons _%g55165529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _%g55495562%_ '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%g55775590%_ '()))))
                                     _%g55765587%_))))
                            (_%g55745605%_
                             (gx#stx-wrap-source
                              (_%generate-kw-dispatch5408%_
                               _%g55165529%_
                               _%kwargs5511%_
                               (not _%key5509%_))
                              (gx#stx-source _%stx5393%_)))))
                        _%g55485559%_))))
               (_%g55465609%_
                (gx#stx-wrap-source
                 (_%generate-kw-primary5407%_
                  _%key5509%_
                  _%kwargs5511%_
                  _%args5512%_
                  _%g54315471%_)
                 (gx#stx-source _%stx5393%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g55155526%_))))
                                          (_%g55135613%_
                                           (gx#genident 'kw-lambda)))))))))))
                       (_%g54885617%_
                        (_%check-duplicate-bindings5402%_ _%g54325473%_))))))
              (let* ((_%__match1947119472%_
                      (lambda (_%e54335451%_
                               _%hd54345455%_
                               _%tl54355458%_
                               _%e54365461%_
                               _%hd54375465%_
                               _%tl54385468%_)
                        (let ((_%g54315471%_ _%tl54385468%_)
                              (_%g54325473%_ _%hd54375465%_))
                          (if (_%kw-lambda?5400%_ _%g54325473%_)
                              (_%__kont1943319434%_
                               _%g54315471%_
                               _%g54325473%_)
                              (let () (declare (not safe)) (_%g54135444%_))))))
                     (_%__match1945919460%_
                      (lambda (_%e54255628%_
                               _%hd54265632%_
                               _%tl54275635%_
                               _%e54285638%_
                               _%hd54295642%_
                               _%tl54305645%_)
                        (let ((_%g54235648%_ _%tl54305645%_)
                              (_%g54245650%_ _%hd54295642%_))
                          (if (_%opt-lambda?5398%_ _%g54245650%_)
                              (_%__kont1943119432%_
                               _%g54235648%_
                               _%g54245650%_)
                              (_%__match1947119472%_
                               _%e54255628%_
                               _%hd54265632%_
                               _%tl54275635%_
                               _%e54285638%_
                               _%hd54295642%_
                               _%tl54305645%_)))))
                     (_%__match1944719448%_
                      (lambda (_%e54175854%_
                               _%hd54185858%_
                               _%tl54195861%_
                               _%e54205864%_
                               _%hd54215868%_
                               _%tl54225871%_)
                        (let ((_%g54155874%_ _%tl54225871%_)
                              (_%g54165876%_ _%hd54215868%_))
                          (if (_%simple-lambda?5396%_ _%g54165876%_)
                              (_%__kont1942919430%_
                               _%g54155874%_
                               _%g54165876%_)
                              (_%__match1945919460%_
                               _%e54175854%_
                               _%hd54185858%_
                               _%tl54195861%_
                               _%e54205864%_
                               _%hd54215868%_
                               _%tl54225871%_))))))
                (if (gx#stx-pair? _%__stx1942619427%_)
                    (let ((_%e54175854%_ (gx#syntax-e _%__stx1942619427%_)))
                      (let ((_%tl54195861%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e54175854%_)))
                            (_%hd54185858%_
                             (let ()
                               (declare (not safe))
                               (##car _%e54175854%_))))
                        (if (gx#stx-pair? _%tl54195861%_)
                            (let ((_%e54205864%_ (gx#syntax-e _%tl54195861%_)))
                              (let ((_%tl54225871%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e54205864%_)))
                                    (_%hd54215868%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e54205864%_))))
                                (_%__match1944719448%_
                                 _%e54175854%_
                                 _%hd54185858%_
                                 _%tl54195861%_
                                 _%e54205864%_
                                 _%hd54215868%_
                                 _%tl54225871%_)))
                            (let () (declare (not safe)) (_%g54135444%_)))))
                    (let () (declare (not safe)) (_%g54135444%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def|
      (lambda (_%$stx8796%_)
        (let* ((_%__stx1947419475%_ _%$stx8796%_)
               (_%g88028866%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1947419475%_))))
          (let ((_%__kont1947719478%_
                 (lambda (_%g88049092%_
                          _%g88059094%_
                          _%g88069095%_
                          _%g88079096%_)
                   (cons (gx#datum->syntax '#f 'def)
                         (cons (cons _%g88079096%_ _%g88069095%_)
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%g88059094%_
                                                 (foldr (lambda (_%g91189121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g91199124%_)
                  (cons _%g91189121%_ _%g91199124%_))
                '()
                _%g88049092%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1948119482%_
                 (lambda (_%g88298986%_ _%g88308988%_ _%g88318989%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g88318989%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%g88308988%_
                                                 (foldr (lambda (_%g90089011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g90099014%_)
                  (cons _%g90089011%_ _%g90099014%_))
                '()
                _%g88298986%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1948519486%_
                 (lambda (_%g88508903%_ _%g88518905%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g88518905%_ '())
                               (cons _%g88508903%_ '()))))))
            (let* ((_%__match1956519566%_
                    (lambda (_%e88528873%_
                             _%hd88538877%_
                             _%tl88548880%_
                             _%e88558883%_
                             _%hd88568887%_
                             _%tl88578890%_
                             _%e88588893%_
                             _%hd88598897%_
                             _%tl88608900%_)
                      (let ((_%g88508903%_ _%hd88598897%_)
                            (_%g88518905%_ _%hd88568887%_))
                        (if (gx#identifier? _%g88518905%_)
                            (_%__kont1948519486%_ _%g88508903%_ _%g88518905%_)
                            (let () (declare (not safe)) (_%g88028866%_))))))
                   (_%__match1955719558%_
                    (lambda (_%e88528873%_
                             _%hd88538877%_
                             _%tl88548880%_
                             _%e88558883%_
                             _%hd88568887%_
                             _%tl88578890%_)
                      (if (gx#stx-pair? _%tl88578890%_)
                          (let ((_%e88588893%_ (gx#syntax-e _%tl88578890%_)))
                            (let ((_%tl88608900%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e88588893%_)))
                                  (_%hd88598897%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e88588893%_))))
                              (if (gx#stx-null? _%tl88608900%_)
                                  (_%__match1956519566%_
                                   _%e88528873%_
                                   _%hd88538877%_
                                   _%tl88548880%_
                                   _%e88558883%_
                                   _%hd88568887%_
                                   _%tl88578890%_
                                   _%e88588893%_
                                   _%hd88598897%_
                                   _%tl88608900%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g88028866%_)))))
                          (let () (declare (not safe)) (_%g88028866%_)))))
                   (_%__match1954519546%_
                    (lambda (_%e88328928%_
                             _%hd88338932%_
                             _%tl88348935%_
                             _%e88358938%_
                             _%hd88368942%_
                             _%tl88378945%_
                             _%e88388948%_
                             _%hd88398952%_
                             _%tl88408955%_
                             _%__splice1948319484%_
                             _%target88418958%_
                             _%tl88438961%_)
                      (letrec ((_%loop88448964%_
                                (lambda (_%hd88428968%_ _%body88488971%_)
                                  (if (gx#stx-pair? _%hd88428968%_)
                                      (let ((_%e88458973%_
                                             (gx#syntax-e _%hd88428968%_)))
                                        (let ((_%lp-tl88478980%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88458973%_)))
                                              (_%lp-hd88468977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88458973%_))))
                                          (_%loop88448964%_
                                           _%lp-tl88478980%_
                                           (cons _%lp-hd88468977%_
                                                 _%body88488971%_))))
                                      (let ((_%body88498983%_
                                             (reverse _%body88488971%_)))
                                        (let ((_%g88298986%_ _%body88498983%_)
                                              (_%g88308988%_ _%tl88408955%_)
                                              (_%g88318989%_ _%hd88398952%_))
                                          (if (gx#identifier? _%g88318989%_)
                                              (_%__kont1948119482%_
                                               _%g88298986%_
                                               _%g88308988%_
                                               _%g88318989%_)
                                              (_%__match1955719558%_
                                               _%e88328928%_
                                               _%hd88338932%_
                                               _%tl88348935%_
                                               _%e88358938%_
                                               _%hd88368942%_
                                               _%tl88378945%_))))))))
                        (_%loop88448964%_ _%target88418958%_ '()))))
                   (_%__match1951919520%_
                    (lambda (_%e88089024%_
                             _%hd88099028%_
                             _%tl88109031%_
                             _%e88119034%_
                             _%hd88129038%_
                             _%tl88139041%_
                             _%e88149044%_
                             _%hd88159048%_
                             _%tl88169051%_
                             _%e88179054%_
                             _%hd88189058%_
                             _%tl88199061%_
                             _%__splice1947919480%_
                             _%target88209064%_
                             _%tl88229067%_)
                      (letrec ((_%loop88239070%_
                                (lambda (_%hd88219074%_ _%body88279077%_)
                                  (if (gx#stx-pair? _%hd88219074%_)
                                      (let ((_%e88249079%_
                                             (gx#syntax-e _%hd88219074%_)))
                                        (let ((_%lp-tl88269086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88249079%_)))
                                              (_%lp-hd88259083%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88249079%_))))
                                          (_%loop88239070%_
                                           _%lp-tl88269086%_
                                           (cons _%lp-hd88259083%_
                                                 _%body88279077%_))))
                                      (let ((_%body88289089%_
                                             (reverse _%body88279077%_)))
                                        (_%__kont1947719478%_
                                         _%body88289089%_
                                         _%tl88169051%_
                                         _%tl88199061%_
                                         _%hd88189058%_))))))
                        (_%loop88239070%_ _%target88209064%_ '())))))
              (if (gx#stx-pair? _%__stx1947419475%_)
                  (let ((_%e88089024%_ (gx#syntax-e _%__stx1947419475%_)))
                    (let ((_%tl88109031%_
                           (let () (declare (not safe)) (##cdr _%e88089024%_)))
                          (_%hd88099028%_
                           (let ()
                             (declare (not safe))
                             (##car _%e88089024%_))))
                      (if (gx#stx-pair? _%tl88109031%_)
                          (let ((_%e88119034%_ (gx#syntax-e _%tl88109031%_)))
                            (let ((_%tl88139041%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e88119034%_)))
                                  (_%hd88129038%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e88119034%_))))
                              (if (gx#stx-pair? _%hd88129038%_)
                                  (let ((_%e88149044%_
                                         (gx#syntax-e _%hd88129038%_)))
                                    (let ((_%tl88169051%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e88149044%_)))
                                          (_%hd88159048%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e88149044%_))))
                                      (if (gx#stx-pair? _%hd88159048%_)
                                          (let ((_%e88179054%_
                                                 (gx#syntax-e _%hd88159048%_)))
                                            (let ((_%tl88199061%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e88179054%_)))
                                                  (_%hd88189058%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e88179054%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl88139041%_)
                                                  (let ((_%__splice1947919480%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl88139041%_
                                                          '0)))
                                                    (let ((_%tl88229067%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1947919480%_
                                                              '1)))
                                                          (_%target88209064%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1947919480%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl88229067%_)
                                                          (_%__match1951919520%_
                                                           _%e88089024%_
                                                           _%hd88099028%_
                                                           _%tl88109031%_
                                                           _%e88119034%_
                                                           _%hd88129038%_
                                                           _%tl88139041%_
                                                           _%e88149044%_
                                                           _%hd88159048%_
                                                           _%tl88169051%_
                                                           _%e88179054%_
                                                           _%hd88189058%_
                                                           _%tl88199061%_
                                                           _%__splice1947919480%_
                                                           _%target88209064%_
                                                           _%tl88229067%_)
                                                          (if (gx#stx-pair?
                                                               _%tl88139041%_)
                                                              (let ((_%e88588893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl88139041%_)))
                        (let ((_%tl88608900%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e88588893%_)))
                              (_%hd88598897%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e88588893%_))))
                          (if (gx#stx-null? _%tl88608900%_)
                              (_%__match1956519566%_
                               _%e88089024%_
                               _%hd88099028%_
                               _%tl88109031%_
                               _%e88119034%_
                               _%hd88129038%_
                               _%tl88139041%_
                               _%e88588893%_
                               _%hd88598897%_
                               _%tl88608900%_)
                              (let () (declare (not safe)) (_%g88028866%_)))))
                      (let () (declare (not safe)) (_%g88028866%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl88139041%_)
                                                      (let ((_%e88588893%_
                                                             (gx#syntax-e
                                                              _%tl88139041%_)))
                                                        (let ((_%tl88608900%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e88588893%_)))
                      (_%hd88598897%_
                       (let () (declare (not safe)) (##car _%e88588893%_))))
                  (if (gx#stx-null? _%tl88608900%_)
                      (_%__match1956519566%_
                       _%e88089024%_
                       _%hd88099028%_
                       _%tl88109031%_
                       _%e88119034%_
                       _%hd88129038%_
                       _%tl88139041%_
                       _%e88588893%_
                       _%hd88598897%_
                       _%tl88608900%_)
                      (let () (declare (not safe)) (_%g88028866%_)))))
              (let () (declare (not safe)) (_%g88028866%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl88139041%_)
                                              (let ((_%__splice1948319484%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl88139041%_
                                                      '0)))
                                                (let ((_%tl88438961%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1948319484%_
                                                          '1)))
                                                      (_%target88418958%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1948319484%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl88438961%_)
                                                      (_%__match1954519546%_
                                                       _%e88089024%_
                                                       _%hd88099028%_
                                                       _%tl88109031%_
                                                       _%e88119034%_
                                                       _%hd88129038%_
                                                       _%tl88139041%_
                                                       _%e88149044%_
                                                       _%hd88159048%_
                                                       _%tl88169051%_
                                                       _%__splice1948319484%_
                                                       _%target88418958%_
                                                       _%tl88438961%_)
                                                      (if (gx#stx-pair?
                                                           _%tl88139041%_)
                                                          (let ((_%e88588893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl88139041%_)))
                    (let ((_%tl88608900%_
                           (let () (declare (not safe)) (##cdr _%e88588893%_)))
                          (_%hd88598897%_
                           (let ()
                             (declare (not safe))
                             (##car _%e88588893%_))))
                      (if (gx#stx-null? _%tl88608900%_)
                          (_%__match1956519566%_
                           _%e88089024%_
                           _%hd88099028%_
                           _%tl88109031%_
                           _%e88119034%_
                           _%hd88129038%_
                           _%tl88139041%_
                           _%e88588893%_
                           _%hd88598897%_
                           _%tl88608900%_)
                          (let () (declare (not safe)) (_%g88028866%_)))))
                  (let () (declare (not safe)) (_%g88028866%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _%tl88139041%_)
                                                  (let ((_%e88588893%_
                                                         (gx#syntax-e
                                                          _%tl88139041%_)))
                                                    (let ((_%tl88608900%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e88588893%_)))
                                                          (_%hd88598897%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e88588893%_))))
                                                      (if (gx#stx-null?
                                                           _%tl88608900%_)
                                                          (_%__match1956519566%_
                                                           _%e88089024%_
                                                           _%hd88099028%_
                                                           _%tl88109031%_
                                                           _%e88119034%_
                                                           _%hd88129038%_
                                                           _%tl88139041%_
                                                           _%e88588893%_
                                                           _%hd88598897%_
                                                           _%tl88608900%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g88028866%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88028866%_)))))))
                                  (if (gx#stx-pair? _%tl88139041%_)
                                      (let ((_%e88588893%_
                                             (gx#syntax-e _%tl88139041%_)))
                                        (let ((_%tl88608900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88588893%_)))
                                              (_%hd88598897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88588893%_))))
                                          (if (gx#stx-null? _%tl88608900%_)
                                              (_%__match1956519566%_
                                               _%e88089024%_
                                               _%hd88099028%_
                                               _%tl88109031%_
                                               _%e88119034%_
                                               _%hd88129038%_
                                               _%tl88139041%_
                                               _%e88588893%_
                                               _%hd88598897%_
                                               _%tl88608900%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g88028866%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g88028866%_))))))
                          (let () (declare (not safe)) (_%g88028866%_)))))
                  (let () (declare (not safe)) (_%g88028866%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def*|
      (lambda (_%$stx9133%_)
        (let* ((_%g91379161%_
                (lambda (_%g91389157%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g91389157%_)))
               (_%g91369244%_
                (lambda (_%g91389165%_)
                  (if (gx#stx-pair? _%g91389165%_)
                      (let ((_%e91419168%_ (gx#syntax-e _%g91389165%_)))
                        (let ((_%hd91429172%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e91419168%_)))
                              (_%tl91439175%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e91419168%_))))
                          (if (gx#stx-pair? _%tl91439175%_)
                              (let ((_%e91449178%_
                                     (gx#syntax-e _%tl91439175%_)))
                                (let ((_%hd91459182%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e91449178%_)))
                                      (_%tl91469185%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e91449178%_))))
                                  (if (gx#stx-pair/null? _%tl91469185%_)
                                      (let ((_g21036_
                                             (gx#syntax-split-splice
                                              _%tl91469185%_
                                              '0)))
                                        (begin
                                          (let ((_g21037_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21036_)
                                                       (##values-length
                                                        _g21036_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21037_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21037_)))
                                          (let ((_%target91479188%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21036_ 0)))
                                                (_%tl91499191%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21036_ 1))))
                                            (if (gx#stx-null? _%tl91499191%_)
                                                (letrec ((_%loop91509194%_
                                                          (lambda (_%hd91489198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clauses91549201%_)
                    (if (gx#stx-pair? _%hd91489198%_)
                        (let ((_%e91519203%_ (gx#syntax-e _%hd91489198%_)))
                          (let ((_%lp-hd91529207%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e91519203%_)))
                                (_%lp-tl91539210%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e91519203%_))))
                            (_%loop91509194%_
                             _%lp-tl91539210%_
                             (cons _%lp-hd91529207%_ _%clauses91549201%_))))
                        (let ((_%clauses91559213%_
                               (reverse _%clauses91549201%_)))
                          ((lambda (_%g91399216%_ _%g91409218%_)
                             (if (gx#identifier? _%g91409218%_)
                                 (cons (gx#datum->syntax '#f 'define-values)
                                       (cons (cons _%g91409218%_ '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'case-lambda)
                                                         (foldr (lambda (_%g92359238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g92369241%_)
                          (cons _%g92359238%_ _%g92369241%_))
                        '()
                        _%g91399216%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 (_%g91379161%_ _%g91389165%_)))
                           _%clauses91559213%_
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
          (_%g91369244%_ _%$stx9133%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#defvalues|
      (lambda (_%$stx9249%_)
        (let* ((_%g92539271%_
                (lambda (_%g92549267%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g92549267%_)))
               (_%g92529326%_
                (lambda (_%g92549275%_)
                  (if (gx#stx-pair? _%g92549275%_)
                      (let ((_%e92579278%_ (gx#syntax-e _%g92549275%_)))
                        (let ((_%hd92589282%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e92579278%_)))
                              (_%tl92599285%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e92579278%_))))
                          (if (gx#stx-pair? _%tl92599285%_)
                              (let ((_%e92609288%_
                                     (gx#syntax-e _%tl92599285%_)))
                                (let ((_%hd92619292%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e92609288%_)))
                                      (_%tl92629295%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e92609288%_))))
                                  (if (gx#stx-pair? _%tl92629295%_)
                                      (let ((_%e92639298%_
                                             (gx#syntax-e _%tl92629295%_)))
                                        (let ((_%hd92649302%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e92639298%_)))
                                              (_%tl92659305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e92639298%_))))
                                          (if (gx#stx-null? _%tl92659305%_)
                                              ((lambda (_%g92559308%_
                                                        _%g92569310%_)
                                                 (if (gx#identifier-list?
                                                      _%g92569310%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons _%g92569310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g92559308%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g92539271%_
                                                      _%g92549275%_)))
                                               _%hd92649302%_
                                               _%hd92619292%_)
                                              (_%g92539271%_ _%g92549275%_))))
                                      (_%g92539271%_ _%g92549275%_))))
                              (_%g92539271%_ _%g92549275%_))))
                      (_%g92539271%_ _%g92549275%_)))))
          (_%g92529326%_ _%$stx9249%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#case|
      (lambda (_%$stx9330%_)
        (let* ((_%g93349358%_
                (lambda (_%g93359354%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g93359354%_)))
               (_%g93339441%_
                (lambda (_%g93359362%_)
                  (if (gx#stx-pair? _%g93359362%_)
                      (let ((_%e93389365%_ (gx#syntax-e _%g93359362%_)))
                        (let ((_%hd93399369%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e93389365%_)))
                              (_%tl93409372%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e93389365%_))))
                          (if (gx#stx-pair? _%tl93409372%_)
                              (let ((_%e93419375%_
                                     (gx#syntax-e _%tl93409372%_)))
                                (let ((_%hd93429379%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e93419375%_)))
                                      (_%tl93439382%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e93419375%_))))
                                  (if (gx#stx-pair/null? _%tl93439382%_)
                                      (let ((_g21038_
                                             (gx#syntax-split-splice
                                              _%tl93439382%_
                                              '0)))
                                        (begin
                                          (let ((_g21039_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21038_)
                                                       (##values-length
                                                        _g21038_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21039_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21039_)))
                                          (let ((_%target93449385%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21038_ 0)))
                                                (_%tl93469388%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21038_ 1))))
                                            (if (gx#stx-null? _%tl93469388%_)
                                                (letrec ((_%loop93479391%_
                                                          (lambda (_%hd93459395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause93519398%_)
                    (if (gx#stx-pair? _%hd93459395%_)
                        (let ((_%e93489400%_ (gx#syntax-e _%hd93459395%_)))
                          (let ((_%lp-hd93499404%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e93489400%_)))
                                (_%lp-tl93509407%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e93489400%_))))
                            (_%loop93479391%_
                             _%lp-tl93509407%_
                             (cons _%lp-hd93499404%_ _%clause93519398%_))))
                        (let ((_%clause93529410%_
                               (reverse _%clause93519398%_)))
                          ((lambda (_%g93369413%_ _%g93379415%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (gx#datum->syntax '#f '$e)
                                               (cons _%g93379415%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '~case)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$e)
                                                           (foldr (lambda (_%g94329435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g94339438%_)
                            (cons _%g94329435%_ _%g94339438%_))
                          '()
                          _%g93369413%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%clause93529410%_
                           _%hd93429379%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop93479391%_
                                                   _%target93449385%_
                                                   '()))
                                                (_%g93349358%_
                                                 _%g93359362%_)))))
                                      (_%g93349358%_ _%g93359362%_))))
                              (_%g93349358%_ _%g93359362%_))))
                      (_%g93349358%_ _%g93359362%_)))))
          (_%g93339441%_ _%$stx9330%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case|
      (lambda (_%stx9446%_)
        (letrec ((_%parse-clauses9449%_
                  (lambda (_%e11906%_ _%clauses11908%_)
                    (let _%lp11910%_ ((_%rest11913%_ _%clauses11908%_)
                                      (_%datums11915%_ '())
                                      (_%dispatch11916%_ '())
                                      (_%default11917%_ '#f))
                      (let* ((_%__stx1966419665%_ _%rest11913%_)
                             (_%g1192011932%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1966419665%_))))
                        (let ((_%__kont1966719668%_
                               (lambda (_%g1192211964%_ _%g1192311966%_)
                                 (let* ((_%__stx1956819569%_ _%g1192311966%_)
                                        (_%g1198412057%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1956819569%_))))
                                   (let ((_%__kont1957119572%_
                                          (lambda (_%g1198612414%_)
                                            (if (gx#stx-null? _%g1192211964%_)
                                                (let* ((_%g1242912437%_
                                                        (lambda (_%g1243012433%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1243012433%_)))
                                                       (_%g1242812456%_
                                                        (lambda (_%g1243012441%_)
                                                          ((lambda (_%g1243112444%_)
                                                             (_%lp11910%_
                                                              '()
                                                              _%datums11915%_
                                                              _%dispatch11916%_
                                                              (cons _%g1198612414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g1243112444%_ '()))))
                   _%g1243012441%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1242812456%_ _%e11906%_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9446%_
                                                 _%g1192311966%_))))
                                         (_%__kont1957319574%_
                                          (lambda (_%g1199612354%_)
                                            (if (gx#stx-null? _%g1192211964%_)
                                                (_%lp11910%_
                                                 '()
                                                 _%datums11915%_
                                                 _%dispatch11916%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1236812371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1236912374%_)
                        (cons _%g1236812371%_ _%g1236912374%_))
                      '()
                      _%g1199612354%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9446%_
                                                 _%g1192311966%_))))
                                         (_%__kont1957719578%_
                                          (lambda (_%g1200912241%_
                                                   _%g1201012243%_)
                                            (if (null? (foldr (lambda (_%g1226112264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1226212267%_)
                        (cons _%g1226112264%_ _%g1226212267%_))
                      '()
                      _%g1201012243%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp11910%_
                                                 _%g1192211964%_
                                                 _%datums11915%_
                                                 _%dispatch11916%_
                                                 _%default11917%_)
                                                (let* ((_%g1227012278%_
                                                        (lambda (_%g1227112274%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1227112274%_)))
                                                       (_%g1226912305%_
                                                        (lambda (_%g1227112282%_)
                                                          ((lambda (_%g1227212285%_)
                                                             (_%lp11910%_
                                                              _%g1192211964%_
                                                              (cons (map gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (foldr (lambda (_%g1229612299%_
                                                 _%g1229712302%_)
                                          (cons _%g1229612299%_
                                                _%g1229712302%_))
                                        '()
                                        _%g1201012243%_))
                            _%datums11915%_)
                      (cons (cons _%g1200912241%_ (cons _%g1227212285%_ '()))
                            _%dispatch11916%_)
                      _%default11917%_))
                   _%g1227112282%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1226912305%_
                                                   _%e11906%_)))))
                                         (_%__kont1958119582%_
                                          (lambda (_%g1202912130%_
                                                   _%g1203012132%_)
                                            (if (null? (foldr (lambda (_%g1215112154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1215212157%_)
                        (cons _%g1215112154%_ _%g1215212157%_))
                      '()
                      _%g1203012132%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp11910%_
                                                 _%g1192211964%_
                                                 _%datums11915%_
                                                 _%dispatch11916%_
                                                 _%default11917%_)
                                                (_%lp11910%_
                                                 _%g1192211964%_
                                                 (cons (map gx#stx-e
                                                            (foldr (lambda (_%g1215912162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1216012165%_)
                             (cons _%g1215912162%_ _%g1216012165%_))
                           '()
                           _%g1203012132%_))
               _%datums11915%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (foldr (lambda (_%g1216712170%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1216812173%_)
                              (cons _%g1216712170%_ _%g1216812173%_))
                            '()
                            _%g1202912130%_))
               _%dispatch11916%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%default11917%_)))))
                                     (let* ((_%__match1966119662%_
                                             (lambda (_%e1203112064%_
                                                      _%hd1203212068%_
                                                      _%tl1203312071%_
                                                      _%__splice1958319584%_
                                                      _%target1203412074%_
                                                      _%tl1203612077%_)
                                               (letrec ((_%loop1203712080%_
                                                         (lambda (_%hd1203512084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1204112087%_)
                   (if (gx#stx-pair? _%hd1203512084%_)
                       (let ((_%e1203812089%_ (gx#syntax-e _%hd1203512084%_)))
                         (let ((_%lp-tl1204012096%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1203812089%_)))
                               (_%lp-hd1203912093%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1203812089%_))))
                           (_%loop1203712080%_
                            _%lp-tl1204012096%_
                            (cons _%lp-hd1203912093%_ _%datum1204112087%_))))
                       (let ((_%datum1204212099%_
                              (reverse _%datum1204112087%_)))
                         (if (gx#stx-pair/null? _%tl1203312071%_)
                             (let ((_%__splice1958519586%_
                                    (gx#syntax-split-splice->vector
                                     _%tl1203312071%_
                                     '0)))
                               (let ((_%tl1204512105%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1958519586%_
                                         '1)))
                                     (_%target1204312102%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1958519586%_
                                         '0))))
                                 (if (gx#stx-null? _%tl1204512105%_)
                                     (letrec ((_%loop1204612108%_
                                               (lambda (_%hd1204412112%_
                                                        _%body1205012115%_)
                                                 (if (gx#stx-pair?
                                                      _%hd1204412112%_)
                                                     (let ((_%e1204712117%_
                                                            (gx#syntax-e
                                                             _%hd1204412112%_)))
                                                       (let ((_%lp-tl1204912124%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e1204712117%_)))
                     (_%lp-hd1204812121%_
                      (let () (declare (not safe)) (##car _%e1204712117%_))))
                 (_%loop1204612108%_
                  _%lp-tl1204912124%_
                  (cons _%lp-hd1204812121%_ _%body1205012115%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%body1205112127%_
                                                            (reverse _%body1205012115%_)))
                                                       (_%__kont1958119582%_
                                                        _%body1205112127%_
                                                        _%datum1204212099%_))))))
                                       (_%loop1204612108%_
                                        _%target1204312102%_
                                        '()))
                                     (let ()
                                       (declare (not safe))
                                       (_%g1198412057%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g1198412057%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1203712080%_
                                                  _%target1203412074%_
                                                  '()))))
                                            (_%__match1964719648%_
                                             (lambda (_%e1201112183%_
                                                      _%hd1201212187%_
                                                      _%tl1201312190%_
                                                      _%__splice1957919580%_
                                                      _%target1201412193%_
                                                      _%tl1201612196%_)
                                               (letrec ((_%loop1201712199%_
                                                         (lambda (_%hd1201512203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1202112206%_)
                   (if (gx#stx-pair? _%hd1201512203%_)
                       (let ((_%e1201812208%_ (gx#syntax-e _%hd1201512203%_)))
                         (let ((_%lp-tl1202012215%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1201812208%_)))
                               (_%lp-hd1201912212%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1201812208%_))))
                           (_%loop1201712199%_
                            _%lp-tl1202012215%_
                            (cons _%lp-hd1201912212%_ _%datum1202112206%_))))
                       (let ((_%datum1202212218%_
                              (reverse _%datum1202112206%_)))
                         (if (gx#stx-pair? _%tl1201312190%_)
                             (let ((_%e1202312221%_
                                    (gx#syntax-e _%tl1201312190%_)))
                               (let ((_%tl1202512228%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1202312221%_)))
                                     (_%hd1202412225%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1202312221%_))))
                                 (if (gx#identifier? _%hd1202412225%_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core/sugar~Sugar-2[1]#_g21040_|
                                          _%hd1202412225%_)
                                         (if (gx#stx-pair? _%tl1202512228%_)
                                             (let ((_%e1202612231%_
                                                    (gx#syntax-e
                                                     _%tl1202512228%_)))
                                               (let ((_%tl1202812238%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1202612231%_)))
                                                     (_%hd1202712235%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1202612231%_))))
                                                 (if (gx#stx-null?
                                                      _%tl1202812238%_)
                                                     (_%__kont1957719578%_
                                                      _%hd1202712235%_
                                                      _%datum1202212218%_)
                                                     (_%__match1966119662%_
                                                      _%e1201112183%_
                                                      _%hd1201212187%_
                                                      _%tl1201312190%_
                                                      _%__splice1957919580%_
                                                      _%target1201412193%_
                                                      _%tl1201612196%_))))
                                             (_%__match1966119662%_
                                              _%e1201112183%_
                                              _%hd1201212187%_
                                              _%tl1201312190%_
                                              _%__splice1957919580%_
                                              _%target1201412193%_
                                              _%tl1201612196%_))
                                         (_%__match1966119662%_
                                          _%e1201112183%_
                                          _%hd1201212187%_
                                          _%tl1201312190%_
                                          _%__splice1957919580%_
                                          _%target1201412193%_
                                          _%tl1201612196%_))
                                     (_%__match1966119662%_
                                      _%e1201112183%_
                                      _%hd1201212187%_
                                      _%tl1201312190%_
                                      _%__splice1957919580%_
                                      _%target1201412193%_
                                      _%tl1201612196%_))))
                             (_%__match1966119662%_
                              _%e1201112183%_
                              _%hd1201212187%_
                              _%tl1201312190%_
                              _%__splice1957919580%_
                              _%target1201412193%_
                              _%tl1201612196%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1201712199%_
                                                  _%target1201412193%_
                                                  '()))))
                                            (_%__match1963319634%_
                                             (lambda (_%e1199712316%_
                                                      _%hd1199812320%_
                                                      _%tl1199912323%_
                                                      _%__splice1957519576%_
                                                      _%target1200012326%_
                                                      _%tl1200212329%_)
                                               (letrec ((_%loop1200312332%_
                                                         (lambda (_%hd1200112336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body1200712339%_)
                   (if (gx#stx-pair? _%hd1200112336%_)
                       (let ((_%e1200412341%_ (gx#syntax-e _%hd1200112336%_)))
                         (let ((_%lp-tl1200612348%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1200412341%_)))
                               (_%lp-hd1200512345%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1200412341%_))))
                           (_%loop1200312332%_
                            _%lp-tl1200612348%_
                            (cons _%lp-hd1200512345%_ _%body1200712339%_))))
                       (let ((_%body1200812351%_ (reverse _%body1200712339%_)))
                         (_%__kont1957319574%_ _%body1200812351%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1200312332%_
                                                  _%target1200012326%_
                                                  '())))))
                                       (if (gx#stx-pair? _%__stx1956819569%_)
                                           (let ((_%e1198712384%_
                                                  (gx#syntax-e
                                                   _%__stx1956819569%_)))
                                             (let ((_%tl1198912391%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e1198712384%_)))
                                                   (_%hd1198812388%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e1198712384%_))))
                                               (if (gx#identifier?
                                                    _%hd1198812388%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/sugar~Sugar-2[1]#_g21041_|
                                                        _%hd1198812388%_)
                                                       (if (gx#stx-pair?
                                                            _%tl1198912391%_)
                                                           (let ((_%e1199012394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl1198912391%_)))
                     (let ((_%tl1199212401%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1199012394%_)))
                           (_%hd1199112398%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1199012394%_))))
                       (if (gx#identifier? _%hd1199112398%_)
                           (if (gx#free-identifier=?
                                |gerbil/core/sugar~Sugar-2[1]#_g21042_|
                                _%hd1199112398%_)
                               (if (gx#stx-pair? _%tl1199212401%_)
                                   (let ((_%e1199312404%_
                                          (gx#syntax-e _%tl1199212401%_)))
                                     (let ((_%tl1199512411%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e1199312404%_)))
                                           (_%hd1199412408%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e1199312404%_))))
                                       (if (gx#stx-null? _%tl1199512411%_)
                                           (_%__kont1957119572%_
                                            _%hd1199412408%_)
                                           (if (gx#stx-pair/null?
                                                _%tl1198912391%_)
                                               (let ((_%__splice1957519576%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl1198912391%_
                                                       '0)))
                                                 (let ((_%tl1200212329%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1957519576%_
                                                           '1)))
                                                       (_%target1200012326%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1957519576%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1200212329%_)
                                                       (_%__match1963319634%_
                                                        _%e1198712384%_
                                                        _%hd1198812388%_
                                                        _%tl1198912391%_
                                                        _%__splice1957519576%_
                                                        _%target1200012326%_
                                                        _%tl1200212329%_)
                                                       (if (gx#stx-pair/null?
                                                            _%hd1198812388%_)
                                                           (let ((_%__splice1957919580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%hd1198812388%_
                           '0)))
                     (let ((_%tl1201612196%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1957919580%_ '1)))
                           (_%target1201412193%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1957919580%_ '0))))
                       (if (gx#stx-null? _%tl1201612196%_)
                           (_%__match1964719648%_
                            _%e1198712384%_
                            _%hd1198812388%_
                            _%tl1198912391%_
                            _%__splice1957919580%_
                            _%target1201412193%_
                            _%tl1201612196%_)
                           (let () (declare (not safe)) (_%g1198412057%_)))))
                   (let () (declare (not safe)) (_%g1198412057%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _%hd1198812388%_)
                                                   (let ((_%__splice1957919580%_
                                                          (gx#syntax-split-splice->vector
                                                           _%hd1198812388%_
                                                           '0)))
                                                     (let ((_%tl1201612196%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1957919580%_
                                                               '1)))
                                                           (_%target1201412193%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1957919580%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1201612196%_)
                                                           (_%__match1964719648%_
                                                            _%e1198712384%_
                                                            _%hd1198812388%_
                                                            _%tl1198912391%_
                                                            _%__splice1957919580%_
                                                            _%target1201412193%_
                                                            _%tl1201612196%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1198412057%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1198412057%_)))))))
                                   (if (gx#stx-pair/null? _%tl1198912391%_)
                                       (let ((_%__splice1957519576%_
                                              (gx#syntax-split-splice->vector
                                               _%tl1198912391%_
                                               '0)))
                                         (let ((_%tl1200212329%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1957519576%_
                                                   '1)))
                                               (_%target1200012326%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1957519576%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1200212329%_)
                                               (_%__match1963319634%_
                                                _%e1198712384%_
                                                _%hd1198812388%_
                                                _%tl1198912391%_
                                                _%__splice1957519576%_
                                                _%target1200012326%_
                                                _%tl1200212329%_)
                                               (if (gx#stx-pair/null?
                                                    _%hd1198812388%_)
                                                   (let ((_%__splice1957919580%_
                                                          (gx#syntax-split-splice->vector
                                                           _%hd1198812388%_
                                                           '0)))
                                                     (let ((_%tl1201612196%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1957919580%_
                                                               '1)))
                                                           (_%target1201412193%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1957919580%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1201612196%_)
                                                           (_%__match1964719648%_
                                                            _%e1198712384%_
                                                            _%hd1198812388%_
                                                            _%tl1198912391%_
                                                            _%__splice1957919580%_
                                                            _%target1201412193%_
                                                            _%tl1201612196%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1198412057%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1198412057%_))))))
                                       (if (gx#stx-pair/null? _%hd1198812388%_)
                                           (let ((_%__splice1957919580%_
                                                  (gx#syntax-split-splice->vector
                                                   _%hd1198812388%_
                                                   '0)))
                                             (let ((_%tl1201612196%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1957919580%_
                                                       '1)))
                                                   (_%target1201412193%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1957919580%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1201612196%_)
                                                   (_%__match1964719648%_
                                                    _%e1198712384%_
                                                    _%hd1198812388%_
                                                    _%tl1198912391%_
                                                    _%__splice1957919580%_
                                                    _%target1201412193%_
                                                    _%tl1201612196%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1198412057%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1198412057%_)))))
                               (if (gx#stx-pair/null? _%tl1198912391%_)
                                   (let ((_%__splice1957519576%_
                                          (gx#syntax-split-splice->vector
                                           _%tl1198912391%_
                                           '0)))
                                     (let ((_%tl1200212329%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1957519576%_
                                               '1)))
                                           (_%target1200012326%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1957519576%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1200212329%_)
                                           (_%__match1963319634%_
                                            _%e1198712384%_
                                            _%hd1198812388%_
                                            _%tl1198912391%_
                                            _%__splice1957519576%_
                                            _%target1200012326%_
                                            _%tl1200212329%_)
                                           (if (gx#stx-pair/null?
                                                _%hd1198812388%_)
                                               (let ((_%__splice1957919580%_
                                                      (gx#syntax-split-splice->vector
                                                       _%hd1198812388%_
                                                       '0)))
                                                 (let ((_%tl1201612196%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1957919580%_
                                                           '1)))
                                                       (_%target1201412193%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1957919580%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1201612196%_)
                                                       (_%__match1964719648%_
                                                        _%e1198712384%_
                                                        _%hd1198812388%_
                                                        _%tl1198912391%_
                                                        _%__splice1957919580%_
                                                        _%target1201412193%_
                                                        _%tl1201612196%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g1198412057%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1198412057%_))))))
                                   (if (gx#stx-pair/null? _%hd1198812388%_)
                                       (let ((_%__splice1957919580%_
                                              (gx#syntax-split-splice->vector
                                               _%hd1198812388%_
                                               '0)))
                                         (let ((_%tl1201612196%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1957919580%_
                                                   '1)))
                                               (_%target1201412193%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1957919580%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1201612196%_)
                                               (_%__match1964719648%_
                                                _%e1198712384%_
                                                _%hd1198812388%_
                                                _%tl1198912391%_
                                                _%__splice1957919580%_
                                                _%target1201412193%_
                                                _%tl1201612196%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1198412057%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g1198412057%_)))))
                           (if (gx#stx-pair/null? _%tl1198912391%_)
                               (let ((_%__splice1957519576%_
                                      (gx#syntax-split-splice->vector
                                       _%tl1198912391%_
                                       '0)))
                                 (let ((_%tl1200212329%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1957519576%_
                                           '1)))
                                       (_%target1200012326%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1957519576%_
                                           '0))))
                                   (if (gx#stx-null? _%tl1200212329%_)
                                       (_%__match1963319634%_
                                        _%e1198712384%_
                                        _%hd1198812388%_
                                        _%tl1198912391%_
                                        _%__splice1957519576%_
                                        _%target1200012326%_
                                        _%tl1200212329%_)
                                       (if (gx#stx-pair/null? _%hd1198812388%_)
                                           (let ((_%__splice1957919580%_
                                                  (gx#syntax-split-splice->vector
                                                   _%hd1198812388%_
                                                   '0)))
                                             (let ((_%tl1201612196%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1957919580%_
                                                       '1)))
                                                   (_%target1201412193%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1957919580%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1201612196%_)
                                                   (_%__match1964719648%_
                                                    _%e1198712384%_
                                                    _%hd1198812388%_
                                                    _%tl1198912391%_
                                                    _%__splice1957919580%_
                                                    _%target1201412193%_
                                                    _%tl1201612196%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1198412057%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1198412057%_))))))
                               (if (gx#stx-pair/null? _%hd1198812388%_)
                                   (let ((_%__splice1957919580%_
                                          (gx#syntax-split-splice->vector
                                           _%hd1198812388%_
                                           '0)))
                                     (let ((_%tl1201612196%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1957919580%_
                                               '1)))
                                           (_%target1201412193%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1957919580%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1201612196%_)
                                           (_%__match1964719648%_
                                            _%e1198712384%_
                                            _%hd1198812388%_
                                            _%tl1198912391%_
                                            _%__splice1957919580%_
                                            _%target1201412193%_
                                            _%tl1201612196%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1198412057%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1198412057%_)))))))
                   (if (gx#stx-pair/null? _%tl1198912391%_)
                       (let ((_%__splice1957519576%_
                              (gx#syntax-split-splice->vector
                               _%tl1198912391%_
                               '0)))
                         (let ((_%tl1200212329%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1957519576%_ '1)))
                               (_%target1200012326%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1957519576%_ '0))))
                           (if (gx#stx-null? _%tl1200212329%_)
                               (_%__match1963319634%_
                                _%e1198712384%_
                                _%hd1198812388%_
                                _%tl1198912391%_
                                _%__splice1957519576%_
                                _%target1200012326%_
                                _%tl1200212329%_)
                               (if (gx#stx-pair/null? _%hd1198812388%_)
                                   (let ((_%__splice1957919580%_
                                          (gx#syntax-split-splice->vector
                                           _%hd1198812388%_
                                           '0)))
                                     (let ((_%tl1201612196%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1957919580%_
                                               '1)))
                                           (_%target1201412193%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1957919580%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1201612196%_)
                                           (_%__match1964719648%_
                                            _%e1198712384%_
                                            _%hd1198812388%_
                                            _%tl1198912391%_
                                            _%__splice1957919580%_
                                            _%target1201412193%_
                                            _%tl1201612196%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1198412057%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1198412057%_))))))
                       (if (gx#stx-pair/null? _%hd1198812388%_)
                           (let ((_%__splice1957919580%_
                                  (gx#syntax-split-splice->vector
                                   _%hd1198812388%_
                                   '0)))
                             (let ((_%tl1201612196%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1957919580%_
                                       '1)))
                                   (_%target1201412193%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1957919580%_
                                       '0))))
                               (if (gx#stx-null? _%tl1201612196%_)
                                   (_%__match1964719648%_
                                    _%e1198712384%_
                                    _%hd1198812388%_
                                    _%tl1198912391%_
                                    _%__splice1957919580%_
                                    _%target1201412193%_
                                    _%tl1201612196%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g1198412057%_)))))
                           (let () (declare (not safe)) (_%g1198412057%_)))))
               (if (gx#stx-pair/null? _%hd1198812388%_)
                   (let ((_%__splice1957919580%_
                          (gx#syntax-split-splice->vector
                           _%hd1198812388%_
                           '0)))
                     (let ((_%tl1201612196%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1957919580%_ '1)))
                           (_%target1201412193%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1957919580%_ '0))))
                       (if (gx#stx-null? _%tl1201612196%_)
                           (_%__match1964719648%_
                            _%e1198712384%_
                            _%hd1198812388%_
                            _%tl1198912391%_
                            _%__splice1957919580%_
                            _%target1201412193%_
                            _%tl1201612196%_)
                           (let () (declare (not safe)) (_%g1198412057%_)))))
                   (let () (declare (not safe)) (_%g1198412057%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%hd1198812388%_)
                                                       (let ((_%__splice1957919580%_
                                                              (gx#syntax-split-splice->vector
                                                               _%hd1198812388%_
                                                               '0)))
                                                         (let ((_%tl1201612196%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice1957919580%_ '1)))
                       (_%target1201412193%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice1957919580%_ '0))))
                   (if (gx#stx-null? _%tl1201612196%_)
                       (_%__match1964719648%_
                        _%e1198712384%_
                        _%hd1198812388%_
                        _%tl1198912391%_
                        _%__splice1957919580%_
                        _%target1201412193%_
                        _%tl1201612196%_)
                       (let () (declare (not safe)) (_%g1198412057%_)))))
               (let () (declare (not safe)) (_%g1198412057%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_%g1198412057%_))))))))
                              (_%__kont1966919670%_
                               (lambda ()
                                 (_%check-duplicate-datums9451%_
                                  _%datums11915%_)
                                 (values (reverse _%datums11915%_)
                                         (reverse _%dispatch11916%_)
                                         (let ((_%$e11943%_ _%default11917%_))
                                           (if _%$e11943%_
                                               _%$e11943%_
                                               '#!void))))))
                          (let ((_%g1191911947%_
                                 (lambda ()
                                   (if (gx#stx-null? _%__stx1966419665%_)
                                       (_%__kont1966919670%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g1192011932%_))))))
                            (if (gx#stx-pair? _%__stx1966419665%_)
                                (let ((_%e1192411954%_
                                       (gx#syntax-e _%__stx1966419665%_)))
                                  (let ((_%tl1192611961%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1192411954%_)))
                                        (_%hd1192511958%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1192411954%_))))
                                    (_%__kont1966719668%_
                                     _%tl1192611961%_
                                     _%hd1192511958%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g1191911947%_)))))))))
                 (_%check-duplicate-datums9451%_
                  (lambda (_%datums11894%_)
                    (let ((_%ht11897%_ (make-hash-table)))
                      (for-each
                       (lambda (_%lst11900%_)
                         (for-each
                          (lambda (_%datum11903%_)
                            (if (hash-get _%ht11897%_ _%datum11903%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _%stx9446%_
                                 _%datum11903%_)
                                (hash-put! _%ht11897%_ _%datum11903%_ '#t)))
                          _%lst11900%_))
                       _%datums11894%_))))
                 (_%count-datums9452%_
                  (lambda (_%datums11887%_)
                    (foldl (lambda (_%lst11890%_ _%r11892%_)
                             (+ (length _%lst11890%_) _%r11892%_))
                           '0
                           _%datums11887%_)))
                 (_%symbolic-datums?9453%_
                  (lambda (_%datums11881%_)
                    (andmap (lambda (_%lst11884%_)
                              (andmap symbol? _%lst11884%_))
                            _%datums11881%_)))
                 (_%char-datums?9454%_
                  (lambda (_%datums11875%_)
                    (andmap (lambda (_%lst11878%_) (andmap char? _%lst11878%_))
                            _%datums11875%_)))
                 (_%fixnum-datums?9455%_
                  (lambda (_%datums11869%_)
                    (andmap (lambda (_%lst11872%_)
                              (andmap fixnum? _%lst11872%_))
                            _%datums11869%_)))
                 (_%eq-datums?9456%_
                  (lambda (_%datums11852%_)
                    (andmap (lambda (_%lst11855%_)
                              (andmap (lambda (_%x11858%_)
                                        (let ((_%$e11861%_
                                               (symbol? _%x11858%_)))
                                          (if _%$e11861%_
                                              _%$e11861%_
                                              (let ((_%$e11865%_
                                                     (keyword? _%x11858%_)))
                                                (if _%$e11865%_
                                                    _%$e11865%_
                                                    (immediate?
                                                     _%x11858%_))))))
                                      _%lst11855%_))
                            _%datums11852%_)))
                 (_%generate-simple-case9457%_
                  (lambda (_%e11618%_
                           _%datums11620%_
                           _%dispatch11621%_
                           _%default11622%_)
                    (let* ((_%g1162411632%_
                            (lambda (_%g1162511628%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1162511628%_)))
                           (_%g1162311848%_
                            (lambda (_%g1162511636%_)
                              ((lambda (_%g1162611639%_)
                                 (let _%recur11651%_ ((_%datums11654%_
                                                       _%datums11620%_)
                                                      (_%dispatch11656%_
                                                       _%dispatch11621%_))
                                   (let* ((_%__stx1968219683%_ _%datums11654%_)
                                          (_%g1165911680%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx1968219683%_))))
                                     (let ((_%__kont1968519686%_
                                            (lambda (_%g1166111736%_
                                                     _%g1166211738%_)
                                              (let* ((_%g1175811770%_
                                                      (lambda (_%g1175911766%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1175911766%_)))
                                                     (_%g1175711840%_
                                                      (lambda (_%g1175911774%_)
                                                        (if (gx#stx-pair?
                                                             _%g1175911774%_)
                                                            (let ((_%e1176211777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%g1175911774%_)))
                      (let ((_%hd1176311781%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1176211777%_)))
                            (_%tl1176411784%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1176211777%_))))
                        ((lambda (_%g1176011787%_ _%g1176111789%_)
                           (let* ((_%g1180111809%_
                                   (lambda (_%g1180211805%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g1180211805%_)))
                                  (_%g1180011836%_
                                   (lambda (_%g1180211813%_)
                                     ((lambda (_%g1180311816%_)
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'or)
                                                          (foldr (lambda (_%g1182711830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g1182811833%_)
                           (cons (cons (gx#datum->syntax '#f '~case-test)
                                       (cons _%g1182711830%_
                                             (cons _%g1162611639%_ '())))
                                 _%g1182811833%_))
                         '()
                         _%g1166211738%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g1176111789%_
                                                          (cons _%g1180311816%_
                                                                '())))))
                                      _%g1180211813%_))))
                             (_%g1180011836%_
                              (_%recur11651%_
                               _%g1166111736%_
                               _%g1176011787%_))))
                         _%tl1176411784%_
                         _%hd1176311781%_)))
                    (_%g1175811770%_ _%g1175911774%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1175711840%_
                                                 _%dispatch11656%_))))
                                           (_%__kont1968919690%_
                                            (lambda () _%default11622%_)))
                                       (let ((_%__match1970519706%_
                                              (lambda (_%e1166311698%_
                                                       _%hd1166411702%_
                                                       _%tl1166511705%_
                                                       _%__splice1968719688%_
                                                       _%target1166611708%_
                                                       _%tl1166811711%_)
                                                (letrec ((_%loop1166911714%_
                                                          (lambda (_%hd1166711718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%datum1167311721%_)
                    (if (gx#stx-pair? _%hd1166711718%_)
                        (let ((_%e1167011723%_ (gx#syntax-e _%hd1166711718%_)))
                          (let ((_%lp-tl1167211730%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1167011723%_)))
                                (_%lp-hd1167111727%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1167011723%_))))
                            (_%loop1166911714%_
                             _%lp-tl1167211730%_
                             (cons _%lp-hd1167111727%_ _%datum1167311721%_))))
                        (let ((_%datum1167411733%_
                               (reverse _%datum1167311721%_)))
                          (_%__kont1968519686%_
                           _%tl1166511705%_
                           _%datum1167411733%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1166911714%_
                                                   _%target1166611708%_
                                                   '())))))
                                         (if (gx#stx-pair? _%__stx1968219683%_)
                                             (let ((_%e1166311698%_
                                                    (gx#syntax-e
                                                     _%__stx1968219683%_)))
                                               (let ((_%tl1166511705%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1166311698%_)))
                                                     (_%hd1166411702%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1166311698%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%hd1166411702%_)
                                                     (let ((_%__splice1968719688%_
                                                            (gx#syntax-split-splice->vector
                                                             _%hd1166411702%_
                                                             '0)))
                                                       (let ((_%tl1166811711%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice1968719688%_ '1)))
                     (_%target1166611708%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice1968719688%_ '0))))
                 (if (gx#stx-null? _%tl1166811711%_)
                     (_%__match1970519706%_
                      _%e1166311698%_
                      _%hd1166411702%_
                      _%tl1166511705%_
                      _%__splice1968719688%_
                      _%target1166611708%_
                      _%tl1166811711%_)
                     (_%__kont1968919690%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont1968919690%_))))
                                             (_%__kont1968919690%_)))))))
                               _%g1162511636%_))))
                      (_%g1162311848%_ _%e11618%_))))
                 (_%datum-dispatch-index9458%_
                  (lambda (_%datums11492%_)
                    (let _%lp11495%_ ((_%rest11498%_ _%datums11492%_)
                                      (_%ix11500%_ '0)
                                      (_%r11501%_ '()))
                      (let* ((_%__stx1970819709%_ _%rest11498%_)
                             (_%g1150411525%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1970819709%_))))
                        (let ((_%__kont1971119712%_
                               (lambda (_%g1150611581%_ _%g1150711583%_)
                                 (_%lp11495%_
                                  _%g1150611581%_
                                  (fx1+ _%ix11500%_)
                                  (foldl (lambda (_%x11602%_ _%r11604%_)
                                           (cons (cons _%x11602%_ _%ix11500%_)
                                                 _%r11604%_))
                                         _%r11501%_
                                         (foldr (lambda (_%g1160511608%_
                                                         _%g1160611611%_)
                                                  (cons _%g1160511608%_
                                                        _%g1160611611%_))
                                                '()
                                                _%g1150711583%_)))))
                              (_%__kont1971519716%_ (lambda () _%r11501%_)))
                          (let ((_%__match1973119732%_
                                 (lambda (_%e1150811543%_
                                          _%hd1150911547%_
                                          _%tl1151011550%_
                                          _%__splice1971319714%_
                                          _%target1151111553%_
                                          _%tl1151311556%_)
                                   (letrec ((_%loop1151411559%_
                                             (lambda (_%hd1151211563%_
                                                      _%datum1151811566%_)
                                               (if (gx#stx-pair?
                                                    _%hd1151211563%_)
                                                   (let ((_%e1151511568%_
                                                          (gx#syntax-e
                                                           _%hd1151211563%_)))
                                                     (let ((_%lp-tl1151711575%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e1151511568%_)))
                                                           (_%lp-hd1151611572%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e1151511568%_))))
                                                       (_%loop1151411559%_
                                                        _%lp-tl1151711575%_
                                                        (cons _%lp-hd1151611572%_
                                                              _%datum1151811566%_))))
                                                   (let ((_%datum1151911578%_
                                                          (reverse _%datum1151811566%_)))
                                                     (_%__kont1971119712%_
                                                      _%tl1151011550%_
                                                      _%datum1151911578%_))))))
                                     (_%loop1151411559%_
                                      _%target1151111553%_
                                      '())))))
                            (if (gx#stx-pair? _%__stx1970819709%_)
                                (let ((_%e1150811543%_
                                       (gx#syntax-e _%__stx1970819709%_)))
                                  (let ((_%tl1151011550%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1150811543%_)))
                                        (_%hd1150911547%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1150811543%_))))
                                    (if (gx#stx-pair/null? _%hd1150911547%_)
                                        (let ((_%__splice1971319714%_
                                               (gx#syntax-split-splice->vector
                                                _%hd1150911547%_
                                                '0)))
                                          (let ((_%tl1151311556%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1971319714%_
                                                    '1)))
                                                (_%target1151111553%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1971319714%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1151311556%_)
                                                (_%__match1973119732%_
                                                 _%e1150811543%_
                                                 _%hd1150911547%_
                                                 _%tl1151011550%_
                                                 _%__splice1971319714%_
                                                 _%target1151111553%_
                                                 _%tl1151311556%_)
                                                (_%__kont1971519716%_))))
                                        (_%__kont1971519716%_))))
                                (_%__kont1971519716%_))))))))
                 (_%duplicate-indexes?9459%_
                  (lambda (_%xs11473%_)
                    (let ((_%ht11476%_ (make-hash-table-eq)))
                      (let _%lp11479%_ ((_%rest11482%_ _%xs11473%_))
                        (if (pair? _%rest11482%_)
                            (let* ((_%ix11485%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest11482%_)))
                                   (_%$e11488%_
                                    (hash-get _%ht11476%_ _%ix11485%_)))
                              (if _%$e11488%_
                                  _%$e11488%_
                                  (begin
                                    (hash-put! _%ht11476%_ _%ix11485%_ '#t)
                                    (_%lp11479%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest11482%_))))))
                            '#f)))))
                 (_%generate-hash-dispatch-table9460%_
                  (lambda (_%indexes11442%_ _%hash-e11444%_)
                    (let _%lp11446%_ ((_%len11449%_
                                       (* '2 (length _%indexes11442%_))))
                      (let* ((_%hs11455%_
                              (map (lambda (_%x11452%_)
                                     (_%hash-e11444%_ (car _%x11452%_)))
                                   _%indexes11442%_))
                             (_%xs11461%_
                              (map (lambda (_%h11458%_)
                                     (fxmodulo _%h11458%_ _%len11449%_))
                                   _%hs11455%_)))
                        (if (_%duplicate-indexes?9459%_ _%xs11461%_)
                            (if (< _%len11449%_ '131072)
                                (_%lp11446%_
                                 (quotient
                                  (let ()
                                    (declare (not safe))
                                    (##fx* _%len11449%_ '3))
                                  '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _%stx9446%_
                                 _%indexes11442%_))
                            (let ((_%tab11466%_
                                   (make-vector _%len11449%_ '#f)))
                              (for-each
                               (lambda (_%entry11469%_ _%x11471%_)
                                 (vector-set!
                                  _%tab11466%_
                                  _%x11471%_
                                  _%entry11469%_))
                               _%indexes11442%_
                               _%xs11461%_)
                              _%tab11466%_))))))
                 (_%generate-symbolic-dispatch9461%_
                  (lambda (_%e11047%_
                           _%datums11049%_
                           _%dispatch11050%_
                           _%default11051%_)
                    (let* ((_%indexes11053%_
                            (_%datum-dispatch-index9458%_ _%datums11049%_))
                           (_%tab11056%_
                            (_%generate-hash-dispatch-table9460%_
                             _%indexes11053%_
                             symbol-hash)))
                      (if (= (length _%dispatch11050%_) '1)
                          (let* ((_%tab11064%_
                                  (vector-map
                                   (lambda (_%x11061%_)
                                     (if _%x11061%_ (car _%x11061%_) '#f))
                                   _%tab11056%_))
                                 (_%g1106711105%_
                                  (lambda (_%g1106811101%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1106811101%_)))
                                 (_%g1106611236%_
                                  (lambda (_%g1106811109%_)
                                    (if (gx#stx-pair? _%g1106811109%_)
                                        (let ((_%e1107611112%_
                                               (gx#syntax-e _%g1106811109%_)))
                                          (let ((_%hd1107711116%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1107611112%_)))
                                                (_%tl1107811119%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1107611112%_))))
                                            (if (gx#stx-pair? _%tl1107811119%_)
                                                (let ((_%e1107911122%_
                                                       (gx#syntax-e
                                                        _%tl1107811119%_)))
                                                  (let ((_%hd1108011126%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1107911122%_)))
                                                        (_%tl1108111129%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1107911122%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1108111129%_)
                                                        (let ((_%e1108211132%_
                                                               (gx#syntax-e
                                                                _%tl1108111129%_)))
                                                          (let ((_%hd1108311136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1108211132%_)))
                        (_%tl1108411139%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1108211132%_))))
                    (if (gx#stx-pair? _%tl1108411139%_)
                        (let ((_%e1108511142%_ (gx#syntax-e _%tl1108411139%_)))
                          (let ((_%hd1108611146%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1108511142%_)))
                                (_%tl1108711149%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1108511142%_))))
                            (if (gx#stx-pair? _%hd1108611146%_)
                                (let ((_%e1108811152%_
                                       (gx#syntax-e _%hd1108611146%_)))
                                  (let ((_%hd1108911156%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1108811152%_)))
                                        (_%tl1109011159%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1108811152%_))))
                                    (if (gx#stx-null? _%tl1109011159%_)
                                        (if (gx#stx-pair? _%tl1108711149%_)
                                            (let ((_%e1109111162%_
                                                   (gx#syntax-e
                                                    _%tl1108711149%_)))
                                              (let ((_%hd1109211166%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1109111162%_)))
                                                    (_%tl1109311169%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1109111162%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1109311169%_)
                                                    (let ((_%e1109411172%_
                                                           (gx#syntax-e
                                                            _%tl1109311169%_)))
                                                      (let ((_%hd1109511176%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1109411172%_)))
                    (_%tl1109611179%_
                     (let () (declare (not safe)) (##cdr _%e1109411172%_))))
                (if (gx#stx-pair? _%tl1109611179%_)
                    (let ((_%e1109711182%_ (gx#syntax-e _%tl1109611179%_)))
                      (let ((_%hd1109811186%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1109711182%_)))
                            (_%tl1109911189%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1109711182%_))))
                        (if (gx#stx-null? _%tl1109911189%_)
                            ((lambda (_%g1106911192%_
                                      _%g1107011194%_
                                      _%g1107111195%_
                                      _%g1107211196%_
                                      _%g1107311197%_
                                      _%g1107411198%_
                                      _%g1107511199%_)
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g1107411198%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _%g1107111195%_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g1107311197%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%g1107011194%_ '()))
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
                           (cons _%g1107511199%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'let*)
                                 (cons (cons (cons (gx#datum->syntax '#f 'h)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##symbol-hash)
                                                               (cons _%g1107511199%_
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
                                   (cons _%g1106911192%_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'q)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##vector-ref)
                                   (cons _%g1107311197%_
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
                             (cons _%g1107511199%_ '())))
                 (cons _%g1107211196%_ (cons (cons _%g1107411198%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _%g1107411198%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                             _%hd1109811186%_
                             _%hd1109511176%_
                             _%hd1109211166%_
                             _%hd1108911156%_
                             _%hd1108311136%_
                             _%hd1108011126%_
                             _%hd1107711116%_)
                            (_%g1106711105%_ _%g1106811109%_))))
                    (_%g1106711105%_ _%g1106811109%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1106711105%_
                                                     _%g1106811109%_))))
                                            (_%g1106711105%_ _%g1106811109%_))
                                        (_%g1106711105%_ _%g1106811109%_))))
                                (_%g1106711105%_ _%g1106811109%_))))
                        (_%g1106711105%_ _%g1106811109%_))))
                (_%g1106711105%_ _%g1106811109%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1106711105%_
                                                 _%g1106811109%_))))
                                        (_%g1106711105%_ _%g1106811109%_)))))
                            (_%g1106611236%_
                             (list _%e11047%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch11050%_
                                   _%default11051%_
                                   _%tab11064%_
                                   (vector-length _%tab11064%_))))
                          (let* ((_%g1124011284%_
                                  (lambda (_%g1124111280%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1124111280%_)))
                                 (_%g1123911438%_
                                  (lambda (_%g1124111288%_)
                                    (if (gx#stx-pair? _%g1124111288%_)
                                        (let ((_%e1124911291%_
                                               (gx#syntax-e _%g1124111288%_)))
                                          (let ((_%hd1125011295%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1124911291%_)))
                                                (_%tl1125111298%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1124911291%_))))
                                            (if (gx#stx-pair? _%tl1125111298%_)
                                                (let ((_%e1125211301%_
                                                       (gx#syntax-e
                                                        _%tl1125111298%_)))
                                                  (let ((_%hd1125311305%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1125211301%_)))
                                                        (_%tl1125411308%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1125211301%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1125411308%_)
                                                        (let ((_%e1125511311%_
                                                               (gx#syntax-e
                                                                _%tl1125411308%_)))
                                                          (let ((_%hd1125611315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1125511311%_)))
                        (_%tl1125711318%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1125511311%_))))
                    (if (gx#stx-pair? _%tl1125711318%_)
                        (let ((_%e1125811321%_ (gx#syntax-e _%tl1125711318%_)))
                          (let ((_%hd1125911325%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1125811321%_)))
                                (_%tl1126011328%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1125811321%_))))
                            (if (gx#stx-pair/null? _%hd1125911325%_)
                                (let ((_g21043_
                                       (gx#syntax-split-splice
                                        _%hd1125911325%_
                                        '0)))
                                  (begin
                                    (let ((_g21044_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g21043_)
                                                 (##values-length _g21043_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21044_ 2)))
                                          (error "Context expects 2 values"
                                                 _g21044_)))
                                    (let ((_%target1126111331%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21043_ 0)))
                                          (_%tl1126311334%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21043_ 1))))
                                      (if (gx#stx-null? _%tl1126311334%_)
                                          (letrec ((_%loop1126411337%_
                                                    (lambda (_%hd1126211341%_
                                                             _%dispatch1126811344%_)
                                                      (if (gx#stx-pair?
                                                           _%hd1126211341%_)
                                                          (let ((_%e1126511346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd1126211341%_)))
                    (let ((_%lp-hd1126611350%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1126511346%_)))
                          (_%lp-tl1126711353%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1126511346%_))))
                      (_%loop1126411337%_
                       _%lp-tl1126711353%_
                       (cons _%lp-hd1126611350%_ _%dispatch1126811344%_))))
                  (let ((_%dispatch1126911356%_
                         (reverse _%dispatch1126811344%_)))
                    (if (gx#stx-pair? _%tl1126011328%_)
                        (let ((_%e1127011359%_ (gx#syntax-e _%tl1126011328%_)))
                          (let ((_%hd1127111363%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1127011359%_)))
                                (_%tl1127211366%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1127011359%_))))
                            (if (gx#stx-pair? _%tl1127211366%_)
                                (let ((_%e1127311369%_
                                       (gx#syntax-e _%tl1127211366%_)))
                                  (let ((_%hd1127411373%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1127311369%_)))
                                        (_%tl1127511376%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1127311369%_))))
                                    (if (gx#stx-pair? _%tl1127511376%_)
                                        (let ((_%e1127611379%_
                                               (gx#syntax-e _%tl1127511376%_)))
                                          (let ((_%hd1127711383%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1127611379%_)))
                                                (_%tl1127811386%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1127611379%_))))
                                            (if (gx#stx-null? _%tl1127811386%_)
                                                ((lambda (_%g1124211389%_
                                                          _%g1124311391%_
                                                          _%g1124411392%_
                                                          _%g1124511393%_
                                                          _%g1124611394%_
                                                          _%g1124711395%_
                                                          _%g1124811396%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _%g1124711395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons '()
                                                     (cons _%g1124411392%_
                                                           '())))
                                         '()))
                             (cons (cons _%g1124611394%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%g1124311391%_
                                                           '()))
                                               '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f 'symbol?)
                                               (cons _%g1124811396%_ '()))
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
                                           (cons _%g1124811396%_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'ix)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##fxmodulo)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'h)
                                                       (cons _%g1124211389%_
                                                             '())))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'q)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _%g1124611394%_
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
                           (cons _%g1124811396%_ '())))
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
                                                   (foldr (lambda (_%g1142911432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1143011435%_)
                    (cons _%g1142911432%_ _%g1143011435%_))
                  '()
                  _%g1124511393%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons (cons _%g1124711395%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%g1124711395%_ '())
                                                 '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%g1124711395%_ '())
                                                     '()))))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd1127711383%_
                                                 _%hd1127411373%_
                                                 _%hd1127111363%_
                                                 _%dispatch1126911356%_
                                                 _%hd1125611315%_
                                                 _%hd1125311305%_
                                                 _%hd1125011295%_)
                                                (_%g1124011284%_
                                                 _%g1124111288%_))))
                                        (_%g1124011284%_ _%g1124111288%_))))
                                (_%g1124011284%_ _%g1124111288%_))))
                        (_%g1124011284%_ _%g1124111288%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop1126411337%_
                                             _%target1126111331%_
                                             '()))
                                          (_%g1124011284%_ _%g1124111288%_)))))
                                (_%g1124011284%_ _%g1124111288%_))))
                        (_%g1124011284%_ _%g1124111288%_))))
                (_%g1124011284%_ _%g1124111288%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1124011284%_
                                                 _%g1124111288%_))))
                                        (_%g1124011284%_ _%g1124111288%_)))))
                            (_%g1123911438%_
                             (list _%e11047%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch11050%_
                                   _%default11051%_
                                   _%tab11056%_
                                   (vector-length _%tab11056%_))))))))
                 (_%max-char9462%_
                  (lambda (_%datums11036%_)
                    (foldl (lambda (_%lst11039%_ _%r11041%_)
                             (foldl (lambda (_%char11043%_ _%r11045%_)
                                      (max (char->integer _%char11043%_)
                                           _%r11045%_))
                                    _%r11041%_
                                    _%lst11039%_))
                           '0
                           _%datums11036%_)))
                 (_%generate-char-dispatch-table9463%_
                  (lambda (_%indexes11015%_)
                    (let* ((_%ixs11021%_
                            (map (lambda (_%x11018%_)
                                   (char->integer (car _%x11018%_)))
                                 _%indexes11015%_))
                           (_%len11024%_ (fx1+ (foldl max '0 _%ixs11021%_)))
                           (_%vec11027%_ (make-vector _%len11024%_ '#f)))
                      (for-each
                       (lambda (_%entry11032%_ _%x11034%_)
                         (vector-set!
                          _%vec11027%_
                          _%x11034%_
                          (cdr _%entry11032%_)))
                       _%indexes11015%_
                       _%ixs11021%_)
                      _%vec11027%_)))
                 (_%simple-char-range?9464%_
                  (lambda (_%tab10991%_)
                    (let ((_%end10994%_ (vector-length _%tab10991%_)))
                      (let _%lp10997%_ ((_%i11000%_ '0))
                        (let ((_%ix11003%_
                               (vector-ref _%tab10991%_ _%i11000%_)))
                          (if _%ix11003%_
                              (let _%lp211006%_ ((_%i11009%_
                                                  (fx1+ _%i11000%_)))
                                (if (fx< _%i11009%_ _%end10994%_)
                                    (let ((_%ix*11012%_
                                           (vector-ref
                                            _%tab10991%_
                                            _%i11009%_)))
                                      (if (eq? _%ix11003%_ _%ix*11012%_)
                                          (_%lp211006%_ (fx1+ _%i11009%_))
                                          '#f))
                                    '#t))
                              (_%lp10997%_ (fx1+ _%i11000%_))))))))
                 (_%char-range-start9465%_
                  (lambda (_%tab10982%_)
                    (let _%lp10985%_ ((_%i10988%_ '0))
                      (if (vector-ref _%tab10982%_ _%i10988%_)
                          _%i10988%_
                          (_%lp10985%_ (fx1+ _%i10988%_))))))
                 (_%generate-char-dispatch9466%_
                  (lambda (_%e10607%_
                           _%datums10609%_
                           _%dispatch10610%_
                           _%default10611%_)
                    (if (< (_%max-char9462%_ _%datums10609%_) '128)
                        (let* ((_%indexes10613%_
                                (_%datum-dispatch-index9458%_ _%datums10609%_))
                               (_%tab10616%_
                                (_%generate-char-dispatch-table9463%_
                                 _%indexes10613%_)))
                          (if (_%simple-char-range?9464%_ _%tab10616%_)
                              (let ((_%start10621%_
                                     (_%char-range-start9465%_ _%tab10616%_))
                                    (_%end10623%_
                                     (vector-length _%tab10616%_)))
                                (let* ((_%g1062510659%_
                                        (lambda (_%g1062610655%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g1062610655%_)))
                                       (_%g1062410776%_
                                        (lambda (_%g1062610663%_)
                                          (if (gx#stx-pair? _%g1062610663%_)
                                              (let ((_%e1063310666%_
                                                     (gx#syntax-e
                                                      _%g1062610663%_)))
                                                (let ((_%hd1063410670%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1063310666%_)))
                                                      (_%tl1063510673%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1063310666%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1063510673%_)
                                                      (let ((_%e1063610676%_
                                                             (gx#syntax-e
                                                              _%tl1063510673%_)))
                                                        (let ((_%hd1063710680%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1063610676%_)))
                      (_%tl1063810683%_
                       (let () (declare (not safe)) (##cdr _%e1063610676%_))))
                  (if (gx#stx-pair? _%tl1063810683%_)
                      (let ((_%e1063910686%_ (gx#syntax-e _%tl1063810683%_)))
                        (let ((_%hd1064010690%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1063910686%_)))
                              (_%tl1064110693%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1063910686%_))))
                          (if (gx#stx-pair? _%hd1064010690%_)
                              (let ((_%e1064210696%_
                                     (gx#syntax-e _%hd1064010690%_)))
                                (let ((_%hd1064310700%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1064210696%_)))
                                      (_%tl1064410703%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1064210696%_))))
                                  (if (gx#stx-null? _%tl1064410703%_)
                                      (if (gx#stx-pair? _%tl1064110693%_)
                                          (let ((_%e1064510706%_
                                                 (gx#syntax-e
                                                  _%tl1064110693%_)))
                                            (let ((_%hd1064610710%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1064510706%_)))
                                                  (_%tl1064710713%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1064510706%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1064710713%_)
                                                  (let ((_%e1064810716%_
                                                         (gx#syntax-e
                                                          _%tl1064710713%_)))
                                                    (let ((_%hd1064910720%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1064810716%_)))
                                                          (_%tl1065010723%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1064810716%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1065010723%_)
                                                          (let ((_%e1065110726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1065010723%_)))
                    (let ((_%hd1065210730%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1065110726%_)))
                          (_%tl1065310733%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1065110726%_))))
                      (if (gx#stx-null? _%tl1065310733%_)
                          ((lambda (_%g1062710736%_
                                    _%g1062810738%_
                                    _%g1062910739%_
                                    _%g1063010740%_
                                    _%g1063110741%_
                                    _%g1063210742%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons _%g1063110741%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g1062910739%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax '#f 'if)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'char?)
                         (cons _%g1063210742%_ '()))
                   (cons (cons (gx#datum->syntax '#f 'let)
                               (cons (cons (gx#datum->syntax '#f 'ix)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##char->integer)
                                                       (cons _%g1063210742%_
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
                                       (cons _%g1062810738%_ '())))
                           (cons (cons (gx#datum->syntax '#f '##fx<)
                                       (cons (gx#datum->syntax '#f 'ix)
                                             (cons _%g1062710736%_ '())))
                                 '())))
               (cons _%g1063010740%_ (cons (cons _%g1063110741%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (cons (cons _%g1063110741%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%hd1065210730%_
                           _%hd1064910720%_
                           _%hd1064610710%_
                           _%hd1064310700%_
                           _%hd1063710680%_
                           _%hd1063410670%_)
                          (_%g1062510659%_ _%g1062610663%_))))
                  (_%g1062510659%_ _%g1062610663%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1062510659%_
                                                   _%g1062610663%_))))
                                          (_%g1062510659%_ _%g1062610663%_))
                                      (_%g1062510659%_ _%g1062610663%_))))
                              (_%g1062510659%_ _%g1062610663%_))))
                      (_%g1062510659%_ _%g1062610663%_))))
              (_%g1062510659%_ _%g1062610663%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1062510659%_
                                               _%g1062610663%_)))))
                                  (_%g1062410776%_
                                   (list _%e10607%_
                                         (gx#genident 'default)
                                         _%dispatch10610%_
                                         _%default10611%_
                                         _%start10621%_
                                         _%end10623%_))))
                              (let* ((_%g1078010824%_
                                      (lambda (_%g1078110820%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g1078110820%_)))
                                     (_%g1077910978%_
                                      (lambda (_%g1078110828%_)
                                        (if (gx#stx-pair? _%g1078110828%_)
                                            (let ((_%e1078910831%_
                                                   (gx#syntax-e
                                                    _%g1078110828%_)))
                                              (let ((_%hd1079010835%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1078910831%_)))
                                                    (_%tl1079110838%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1078910831%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1079110838%_)
                                                    (let ((_%e1079210841%_
                                                           (gx#syntax-e
                                                            _%tl1079110838%_)))
                                                      (let ((_%hd1079310845%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1079210841%_)))
                    (_%tl1079410848%_
                     (let () (declare (not safe)) (##cdr _%e1079210841%_))))
                (if (gx#stx-pair? _%tl1079410848%_)
                    (let ((_%e1079510851%_ (gx#syntax-e _%tl1079410848%_)))
                      (let ((_%hd1079610855%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1079510851%_)))
                            (_%tl1079710858%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1079510851%_))))
                        (if (gx#stx-pair? _%tl1079710858%_)
                            (let ((_%e1079810861%_
                                   (gx#syntax-e _%tl1079710858%_)))
                              (let ((_%hd1079910865%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1079810861%_)))
                                    (_%tl1080010868%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1079810861%_))))
                                (if (gx#stx-pair/null? _%hd1079910865%_)
                                    (let ((_g21045_
                                           (gx#syntax-split-splice
                                            _%hd1079910865%_
                                            '0)))
                                      (begin
                                        (let ((_g21046_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g21045_)
                                                     (##values-length _g21045_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g21046_ 2)))
                                              (error "Context expects 2 values"
                                                     _g21046_)))
                                        (let ((_%target1080110871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g21045_ 0)))
                                              (_%tl1080310874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g21045_ 1))))
                                          (if (gx#stx-null? _%tl1080310874%_)
                                              (letrec ((_%loop1080410877%_
                                                        (lambda (_%hd1080210881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%dispatch1080810884%_)
                  (if (gx#stx-pair? _%hd1080210881%_)
                      (let ((_%e1080510886%_ (gx#syntax-e _%hd1080210881%_)))
                        (let ((_%lp-hd1080610890%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1080510886%_)))
                              (_%lp-tl1080710893%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1080510886%_))))
                          (_%loop1080410877%_
                           _%lp-tl1080710893%_
                           (cons _%lp-hd1080610890%_ _%dispatch1080810884%_))))
                      (let ((_%dispatch1080910896%_
                             (reverse _%dispatch1080810884%_)))
                        (if (gx#stx-pair? _%tl1080010868%_)
                            (let ((_%e1081010899%_
                                   (gx#syntax-e _%tl1080010868%_)))
                              (let ((_%hd1081110903%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1081010899%_)))
                                    (_%tl1081210906%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1081010899%_))))
                                (if (gx#stx-pair? _%tl1081210906%_)
                                    (let ((_%e1081310909%_
                                           (gx#syntax-e _%tl1081210906%_)))
                                      (let ((_%hd1081410913%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1081310909%_)))
                                            (_%tl1081510916%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1081310909%_))))
                                        (if (gx#stx-pair? _%tl1081510916%_)
                                            (let ((_%e1081610919%_
                                                   (gx#syntax-e
                                                    _%tl1081510916%_)))
                                              (let ((_%hd1081710923%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1081610919%_)))
                                                    (_%tl1081810926%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1081610919%_))))
                                                (if (gx#stx-null?
                                                     _%tl1081810926%_)
                                                    ((lambda (_%g1078210929%_
                                                              _%g1078310931%_
                                                              _%g1078410932%_
                                                              _%g1078510933%_
                                                              _%g1078610934%_
                                                              _%g1078710935%_
                                                              _%g1078810936%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons _%g1078710935%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons '()
                                                         (cons _%g1078410932%_
                                                               '())))
                                             '()))
                                 (cons (cons _%g1078610934%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _%g1078310931%_
                                                               '()))
                                                   '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'char?)
                                                   (cons _%g1078810936%_ '()))
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
                                         (cons _%g1078810936%_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f '##fx<)
                                               (cons (gx#datum->syntax '#f 'ix)
                                                     (cons _%g1078210929%_
                                                           '())))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'x)
                         (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                     (cons _%g1078610934%_
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
                                                       (foldr (lambda (_%g1096910972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1097010975%_)
                        (cons _%g1096910972%_ _%g1097010975%_))
                      '()
                      _%g1078510933%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%g1078710935%_ '())
                                                 '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%g1078710935%_ '())
                                                     '()))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _%g1078710935%_
                                                               '())
                                                         '()))))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd1081710923%_
                                                     _%hd1081410913%_
                                                     _%hd1081110903%_
                                                     _%dispatch1080910896%_
                                                     _%hd1079610855%_
                                                     _%hd1079310845%_
                                                     _%hd1079010835%_)
                                                    (_%g1078010824%_
                                                     _%g1078110828%_))))
                                            (_%g1078010824%_
                                             _%g1078110828%_))))
                                    (_%g1078010824%_ _%g1078110828%_))))
                            (_%g1078010824%_ _%g1078110828%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop1080410877%_
                                                 _%target1080110871%_
                                                 '()))
                                              (_%g1078010824%_
                                               _%g1078110828%_)))))
                                    (_%g1078010824%_ _%g1078110828%_))))
                            (_%g1078010824%_ _%g1078110828%_))))
                    (_%g1078010824%_ _%g1078110828%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1078010824%_
                                                     _%g1078110828%_))))
                                            (_%g1078010824%_
                                             _%g1078110828%_)))))
                                (_%g1077910978%_
                                 (list _%e10607%_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _%dispatch10610%_
                                       _%default10611%_
                                       _%tab10616%_
                                       (vector-length _%tab10616%_))))))
                        (_%generate-char-dispatch/hash9467%_
                         _%e10607%_
                         _%datums10609%_
                         _%dispatch10610%_
                         _%default10611%_))))
                 (_%generate-char-dispatch/hash9467%_
                  (lambda (_%e10387%_
                           _%datums10389%_
                           _%dispatch10390%_
                           _%default10391%_)
                    (let* ((_%indexes10393%_
                            (_%datum-dispatch-index9458%_ _%datums10389%_))
                           (_%tab10396%_
                            (_%generate-hash-dispatch-table9460%_
                             _%indexes10393%_
                             char->integer))
                           (_%g1040110445%_
                            (lambda (_%g1040210441%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1040210441%_)))
                           (_%g1040010603%_
                            (lambda (_%g1040210449%_)
                              (if (gx#stx-pair? _%g1040210449%_)
                                  (let ((_%e1041010452%_
                                         (gx#syntax-e _%g1040210449%_)))
                                    (let ((_%hd1041110456%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1041010452%_)))
                                          (_%tl1041210459%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1041010452%_))))
                                      (if (gx#stx-pair? _%tl1041210459%_)
                                          (let ((_%e1041310462%_
                                                 (gx#syntax-e
                                                  _%tl1041210459%_)))
                                            (let ((_%hd1041410466%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1041310462%_)))
                                                  (_%tl1041510469%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1041310462%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1041510469%_)
                                                  (let ((_%e1041610472%_
                                                         (gx#syntax-e
                                                          _%tl1041510469%_)))
                                                    (let ((_%hd1041710476%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1041610472%_)))
                                                          (_%tl1041810479%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1041610472%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1041810479%_)
                                                          (let ((_%e1041910482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1041810479%_)))
                    (let ((_%hd1042010486%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1041910482%_)))
                          (_%tl1042110489%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1041910482%_))))
                      (if (gx#stx-pair/null? _%hd1042010486%_)
                          (let ((_g21047_
                                 (gx#syntax-split-splice _%hd1042010486%_ '0)))
                            (begin
                              (let ((_g21048_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g21047_)
                                           (##values-length _g21047_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g21048_ 2)))
                                    (error "Context expects 2 values"
                                           _g21048_)))
                              (let ((_%target1042210492%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21047_ 0)))
                                    (_%tl1042410495%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21047_ 1))))
                                (if (gx#stx-null? _%tl1042410495%_)
                                    (letrec ((_%loop1042510498%_
                                              (lambda (_%hd1042310502%_
                                                       _%dispatch1042910505%_)
                                                (if (gx#stx-pair?
                                                     _%hd1042310502%_)
                                                    (let ((_%e1042610507%_
                                                           (gx#syntax-e
                                                            _%hd1042310502%_)))
                                                      (let ((_%lp-hd1042710511%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1042610507%_)))
                    (_%lp-tl1042810514%_
                     (let () (declare (not safe)) (##cdr _%e1042610507%_))))
                (_%loop1042510498%_
                 _%lp-tl1042810514%_
                 (cons _%lp-hd1042710511%_ _%dispatch1042910505%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch1043010517%_
                                                           (reverse _%dispatch1042910505%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl1042110489%_)
                                                          (let ((_%e1043110520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1042110489%_)))
                    (let ((_%hd1043210524%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1043110520%_)))
                          (_%tl1043310527%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1043110520%_))))
                      (if (gx#stx-pair? _%tl1043310527%_)
                          (let ((_%e1043410530%_
                                 (gx#syntax-e _%tl1043310527%_)))
                            (let ((_%hd1043510534%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1043410530%_)))
                                  (_%tl1043610537%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1043410530%_))))
                              (if (gx#stx-pair? _%tl1043610537%_)
                                  (let ((_%e1043710540%_
                                         (gx#syntax-e _%tl1043610537%_)))
                                    (let ((_%hd1043810544%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1043710540%_)))
                                          (_%tl1043910547%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1043710540%_))))
                                      (if (gx#stx-null? _%tl1043910547%_)
                                          ((lambda (_%g1040310550%_
                                                    _%g1040410552%_
                                                    _%g1040510553%_
                                                    _%g1040610554%_
                                                    _%g1040710555%_
                                                    _%g1040810556%_
                                                    _%g1040910557%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%g1040810556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%g1040510553%_ '())))
                                   '()))
                       (cons (cons _%g1040710555%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%g1040410552%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'char?)
                                         (cons _%g1040910557%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'h)
                         (cons (cons (gx#datum->syntax '#f '##char->integer)
                                     (cons _%g1040910557%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'ix)
                               (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                           (cons (gx#datum->syntax '#f 'h)
                                                 (cons _%g1040310550%_ '())))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'q)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##vector-ref)
                                                 (cons _%g1040710555%_
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
                     (cons _%g1040910557%_ '())))
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
                                             (foldr (lambda (_%g1059410597%_
                                                             _%g1059510600%_)
                                                      (cons _%g1059410597%_
                                                            _%g1059510600%_))
                                                    '()
                                                    _%g1040610554%_)))
                                 '())))
               (cons (cons _%g1040810556%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%g1040810556%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%g1040810556%_ '())
                                               '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd1043810544%_
                                           _%hd1043510534%_
                                           _%hd1043210524%_
                                           _%dispatch1043010517%_
                                           _%hd1041710476%_
                                           _%hd1041410466%_
                                           _%hd1041110456%_)
                                          (_%g1040110445%_ _%g1040210449%_))))
                                  (_%g1040110445%_ _%g1040210449%_))))
                          (_%g1040110445%_ _%g1040210449%_))))
                  (_%g1040110445%_ _%g1040210449%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop1042510498%_
                                       _%target1042210492%_
                                       '()))
                                    (_%g1040110445%_ _%g1040210449%_)))))
                          (_%g1040110445%_ _%g1040210449%_))))
                  (_%g1040110445%_ _%g1040210449%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1040110445%_
                                                   _%g1040210449%_))))
                                          (_%g1040110445%_ _%g1040210449%_))))
                                  (_%g1040110445%_ _%g1040210449%_)))))
                      (_%g1040010603%_
                       (list _%e10387%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch10390%_
                             _%default10391%_
                             _%tab10396%_
                             (vector-length _%tab10396%_))))))
                 (_%min-fixnum9468%_
                  (lambda (_%datums10380%_)
                    (foldl (lambda (_%lst10383%_ _%r10385%_)
                             (foldl min _%r10385%_ _%lst10383%_))
                           ##max-fixnum
                           _%datums10380%_)))
                 (_%max-fixnum9469%_
                  (lambda (_%datums10373%_)
                    (foldl (lambda (_%lst10376%_ _%r10378%_)
                             (foldl max _%r10378%_ _%lst10376%_))
                           ##min-fixnum
                           _%datums10373%_)))
                 (_%generate-fixnum-dispatch-table9470%_
                  (lambda (_%indexes10355%_)
                    (let* ((_%ixs10358%_ (map car _%indexes10355%_))
                           (_%len10361%_ (fx1+ (foldl max '0 _%ixs10358%_)))
                           (_%vec10364%_ (make-vector _%len10361%_ '#f)))
                      (for-each
                       (lambda (_%entry10369%_ _%x10371%_)
                         (vector-set!
                          _%vec10364%_
                          _%x10371%_
                          (cdr _%entry10369%_)))
                       _%indexes10355%_
                       _%ixs10358%_)
                      _%vec10364%_)))
                 (_%generate-fixnum-dispatch9471%_
                  (lambda (_%e10091%_
                           _%datums10093%_
                           _%dispatch10094%_
                           _%default10095%_)
                    (if (and (>= (_%min-fixnum9468%_ _%datums10093%_) '0)
                             (< (_%max-fixnum9469%_ _%datums10093%_) '1024))
                        (let* ((_%indexes10097%_
                                (_%datum-dispatch-index9458%_ _%datums10093%_))
                               (_%tab10100%_
                                (_%generate-fixnum-dispatch-table9470%_
                                 _%indexes10097%_))
                               (_%dense?10103%_
                                (andmap values (vector->list _%tab10100%_)))
                               (_%g1010810152%_
                                (lambda (_%g1010910148%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1010910148%_)))
                               (_%g1010710351%_
                                (lambda (_%g1010910156%_)
                                  (if (gx#stx-pair? _%g1010910156%_)
                                      (let ((_%e1011710159%_
                                             (gx#syntax-e _%g1010910156%_)))
                                        (let ((_%hd1011810163%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1011710159%_)))
                                              (_%tl1011910166%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1011710159%_))))
                                          (if (gx#stx-pair? _%tl1011910166%_)
                                              (let ((_%e1012010169%_
                                                     (gx#syntax-e
                                                      _%tl1011910166%_)))
                                                (let ((_%hd1012110173%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1012010169%_)))
                                                      (_%tl1012210176%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1012010169%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1012210176%_)
                                                      (let ((_%e1012310179%_
                                                             (gx#syntax-e
                                                              _%tl1012210176%_)))
                                                        (let ((_%hd1012410183%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1012310179%_)))
                      (_%tl1012510186%_
                       (let () (declare (not safe)) (##cdr _%e1012310179%_))))
                  (if (gx#stx-pair? _%tl1012510186%_)
                      (let ((_%e1012610189%_ (gx#syntax-e _%tl1012510186%_)))
                        (let ((_%hd1012710193%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1012610189%_)))
                              (_%tl1012810196%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1012610189%_))))
                          (if (gx#stx-pair/null? _%hd1012710193%_)
                              (let ((_g21049_
                                     (gx#syntax-split-splice
                                      _%hd1012710193%_
                                      '0)))
                                (begin
                                  (let ((_g21050_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g21049_)
                                               (##values-length _g21049_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g21050_ 2)))
                                        (error "Context expects 2 values"
                                               _g21050_)))
                                  (let ((_%target1012910199%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g21049_ 0)))
                                        (_%tl1013110202%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g21049_ 1))))
                                    (if (gx#stx-null? _%tl1013110202%_)
                                        (letrec ((_%loop1013210205%_
                                                  (lambda (_%hd1013010209%_
                                                           _%dispatch1013610212%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1013010209%_)
                                                        (let ((_%e1013310214%_
                                                               (gx#syntax-e
                                                                _%hd1013010209%_)))
                                                          (let ((_%lp-hd1013410218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1013310214%_)))
                        (_%lp-tl1013510221%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1013310214%_))))
                    (_%loop1013210205%_
                     _%lp-tl1013510221%_
                     (cons _%lp-hd1013410218%_ _%dispatch1013610212%_))))
                (let ((_%dispatch1013710224%_
                       (reverse _%dispatch1013610212%_)))
                  (if (gx#stx-pair? _%tl1012810196%_)
                      (let ((_%e1013810227%_ (gx#syntax-e _%tl1012810196%_)))
                        (let ((_%hd1013910231%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1013810227%_)))
                              (_%tl1014010234%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1013810227%_))))
                          (if (gx#stx-pair? _%tl1014010234%_)
                              (let ((_%e1014110237%_
                                     (gx#syntax-e _%tl1014010234%_)))
                                (let ((_%hd1014210241%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1014110237%_)))
                                      (_%tl1014310244%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1014110237%_))))
                                  (if (gx#stx-pair? _%tl1014310244%_)
                                      (let ((_%e1014410247%_
                                             (gx#syntax-e _%tl1014310244%_)))
                                        (let ((_%hd1014510251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1014410247%_)))
                                              (_%tl1014610254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1014410247%_))))
                                          (if (gx#stx-null? _%tl1014610254%_)
                                              ((lambda (_%g1011010257%_
                                                        _%g1011110259%_
                                                        _%g1011210260%_
                                                        _%g1011310261%_
                                                        _%g1011410262%_
                                                        _%g1011510263%_
                                                        _%g1011610264%_)
                                                 (let* ((_%g1030310311%_
                                                         (lambda (_%g1030410307%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g1030410307%_)))
                                                        (_%g1030210331%_
                                                         (lambda (_%g1030410315%_)
                                                           ((lambda (_%g1030510318%_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'let)
                            (cons (cons (cons _%g1011510263%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons '()
                                                                (cons _%g1011210260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons _%g1011410262%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g1011110259%_ '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fixnum?)
                                                          (cons _%g1011610264%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons (cons (gx#datum->syntax '#f 'and)
                                    (cons (cons (gx#datum->syntax '#f '##fx>=)
                                                (cons _%g1011610264%_
                                                      (cons '0 '())))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx<)
                                                      (cons _%g1011610264%_
                                                            (cons _%g1011010257%_
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
                          (cons _%g1011410262%_ (cons _%g1011610264%_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%g1030510318%_ '())))
                                    (cons (cons _%g1011510263%_ '()) '()))))
                  (cons (cons _%g1011510263%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))
                    _%g1030410315%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g1030210331%_
                                                    (if _%dense?10103%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'x)
                            (foldr (lambda (_%g1033410337%_ _%g1033510340%_)
                                     (cons _%g1033410337%_ _%g1033510340%_))
                                   '()
                                   _%g1011310261%_)))
                (cons (gx#datum->syntax '#f 'if)
                      (cons (gx#datum->syntax '#f 'x)
                            (cons (cons (gx#datum->syntax '#f '~case-dispatch)
                                        (cons (gx#datum->syntax '#f 'x)
                                              (foldr (lambda (_%g1034210345%_
                                                              _%g1034310348%_)
                                                       (cons _%g1034210345%_
                                                             _%g1034310348%_))
                                                     '()
                                                     _%g1011310261%_)))
                                  (cons (cons _%g1011510263%_ '()) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1014510251%_
                                               _%hd1014210241%_
                                               _%hd1013910231%_
                                               _%dispatch1013710224%_
                                               _%hd1012410183%_
                                               _%hd1012110173%_
                                               _%hd1011810163%_)
                                              (_%g1010810152%_
                                               _%g1010910156%_))))
                                      (_%g1010810152%_ _%g1010910156%_))))
                              (_%g1010810152%_ _%g1010910156%_))))
                      (_%g1010810152%_ _%g1010910156%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop1013210205%_
                                           _%target1012910199%_
                                           '()))
                                        (_%g1010810152%_ _%g1010910156%_)))))
                              (_%g1010810152%_ _%g1010910156%_))))
                      (_%g1010810152%_ _%g1010910156%_))))
              (_%g1010810152%_ _%g1010910156%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1010810152%_
                                               _%g1010910156%_))))
                                      (_%g1010810152%_ _%g1010910156%_)))))
                          (_%g1010710351%_
                           (list _%e10091%_
                                 (gx#genident 'default)
                                 (gx#genident 'table)
                                 _%dispatch10094%_
                                 _%default10095%_
                                 _%tab10100%_
                                 (vector-length _%tab10100%_))))
                        (_%generate-fixnum-dispatch/hash9472%_
                         _%e10091%_
                         _%datums10093%_
                         _%dispatch10094%_
                         _%default10095%_))))
                 (_%generate-fixnum-dispatch/hash9472%_
                  (lambda (_%e9871%_
                           _%datums9873%_
                           _%dispatch9874%_
                           _%default9875%_)
                    (let* ((_%indexes9877%_
                            (_%datum-dispatch-index9458%_ _%datums9873%_))
                           (_%tab9880%_
                            (_%generate-hash-dispatch-table9460%_
                             _%indexes9877%_
                             values))
                           (_%g98859929%_
                            (lambda (_%g98869925%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g98869925%_)))
                           (_%g988410087%_
                            (lambda (_%g98869933%_)
                              (if (gx#stx-pair? _%g98869933%_)
                                  (let ((_%e98949936%_
                                         (gx#syntax-e _%g98869933%_)))
                                    (let ((_%hd98959940%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e98949936%_)))
                                          (_%tl98969943%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e98949936%_))))
                                      (if (gx#stx-pair? _%tl98969943%_)
                                          (let ((_%e98979946%_
                                                 (gx#syntax-e _%tl98969943%_)))
                                            (let ((_%hd98989950%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e98979946%_)))
                                                  (_%tl98999953%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e98979946%_))))
                                              (if (gx#stx-pair? _%tl98999953%_)
                                                  (let ((_%e99009956%_
                                                         (gx#syntax-e
                                                          _%tl98999953%_)))
                                                    (let ((_%hd99019960%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e99009956%_)))
                                                          (_%tl99029963%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e99009956%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl99029963%_)
                                                          (let ((_%e99039966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl99029963%_)))
                    (let ((_%hd99049970%_
                           (let () (declare (not safe)) (##car _%e99039966%_)))
                          (_%tl99059973%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e99039966%_))))
                      (if (gx#stx-pair/null? _%hd99049970%_)
                          (let ((_g21051_
                                 (gx#syntax-split-splice _%hd99049970%_ '0)))
                            (begin
                              (let ((_g21052_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g21051_)
                                           (##values-length _g21051_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g21052_ 2)))
                                    (error "Context expects 2 values"
                                           _g21052_)))
                              (let ((_%target99069976%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21051_ 0)))
                                    (_%tl99089979%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21051_ 1))))
                                (if (gx#stx-null? _%tl99089979%_)
                                    (letrec ((_%loop99099982%_
                                              (lambda (_%hd99079986%_
                                                       _%dispatch99139989%_)
                                                (if (gx#stx-pair?
                                                     _%hd99079986%_)
                                                    (let ((_%e99109991%_
                                                           (gx#syntax-e
                                                            _%hd99079986%_)))
                                                      (let ((_%lp-hd99119995%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e99109991%_)))
                    (_%lp-tl99129998%_
                     (let () (declare (not safe)) (##cdr _%e99109991%_))))
                (_%loop99099982%_
                 _%lp-tl99129998%_
                 (cons _%lp-hd99119995%_ _%dispatch99139989%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch991410001%_
                                                           (reverse _%dispatch99139989%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl99059973%_)
                                                          (let ((_%e991510004%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl99059973%_)))
                    (let ((_%hd991610008%_
                           (let ()
                             (declare (not safe))
                             (##car _%e991510004%_)))
                          (_%tl991710011%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e991510004%_))))
                      (if (gx#stx-pair? _%tl991710011%_)
                          (let ((_%e991810014%_ (gx#syntax-e _%tl991710011%_)))
                            (let ((_%hd991910018%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e991810014%_)))
                                  (_%tl992010021%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e991810014%_))))
                              (if (gx#stx-pair? _%tl992010021%_)
                                  (let ((_%e992110024%_
                                         (gx#syntax-e _%tl992010021%_)))
                                    (let ((_%hd992210028%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e992110024%_)))
                                          (_%tl992310031%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e992110024%_))))
                                      (if (gx#stx-null? _%tl992310031%_)
                                          ((lambda (_%g988710034%_
                                                    _%g988810036%_
                                                    _%g988910037%_
                                                    _%g989010038%_
                                                    _%g989110039%_
                                                    _%g989210040%_
                                                    _%g989310041%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%g989210040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%g988910037%_ '())))
                                   '()))
                       (cons (cons _%g989110039%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%g988810036%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                         (cons _%g989310041%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ix)
                         (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                     (cons _%g989310041%_
                                           (cons _%g988710034%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'q)
                               (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                           (cons _%g989110039%_
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
                     (cons _%g989310041%_ '())))
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
                                             (foldr (lambda (_%g1007810081%_
                                                             _%g1007910084%_)
                                                      (cons _%g1007810081%_
                                                            _%g1007910084%_))
                                                    '()
                                                    _%g989010038%_)))
                                 '())))
               (cons (cons _%g989210040%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%g989210040%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%g989210040%_ '())
                                               '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd992210028%_
                                           _%hd991910018%_
                                           _%hd991610008%_
                                           _%dispatch991410001%_
                                           _%hd99019960%_
                                           _%hd98989950%_
                                           _%hd98959940%_)
                                          (_%g98859929%_ _%g98869933%_))))
                                  (_%g98859929%_ _%g98869933%_))))
                          (_%g98859929%_ _%g98869933%_))))
                  (_%g98859929%_ _%g98869933%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop99099982%_
                                       _%target99069976%_
                                       '()))
                                    (_%g98859929%_ _%g98869933%_)))))
                          (_%g98859929%_ _%g98869933%_))))
                  (_%g98859929%_ _%g98869933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g98859929%_
                                                   _%g98869933%_))))
                                          (_%g98859929%_ _%g98869933%_))))
                                  (_%g98859929%_ _%g98869933%_)))))
                      (_%g988410087%_
                       (list _%e9871%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch9874%_
                             _%default9875%_
                             _%tab9880%_
                             (vector-length _%tab9880%_))))))
                 (_%generate-generic-dispatch9473%_
                  (lambda (_%e9609%_
                           _%datums9611%_
                           _%dispatch9612%_
                           _%default9613%_)
                    (let ((_g21053_
                           (if (_%eq-datums?9456%_ _%datums9611%_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_%hash-e9615%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21053_ 0)))
                              (_%hashf9617%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21053_ 1)))
                              (_%eqf9618%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21053_ 2))))
                          (let* ((_%indexes9620%_
                                  (_%datum-dispatch-index9458%_
                                   _%datums9611%_))
                                 (_%tab9623%_
                                  (_%generate-hash-dispatch-table9460%_
                                   _%indexes9620%_
                                   _%hash-e9615%_))
                                 (_%g96289680%_
                                  (lambda (_%g96299676%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g96299676%_)))
                                 (_%g96279867%_
                                  (lambda (_%g96299684%_)
                                    (if (gx#stx-pair? _%g96299684%_)
                                        (let ((_%e96399687%_
                                               (gx#syntax-e _%g96299684%_)))
                                          (let ((_%hd96409691%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e96399687%_)))
                                                (_%tl96419694%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e96399687%_))))
                                            (if (gx#stx-pair? _%tl96419694%_)
                                                (let ((_%e96429697%_
                                                       (gx#syntax-e
                                                        _%tl96419694%_)))
                                                  (let ((_%hd96439701%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e96429697%_)))
                                                        (_%tl96449704%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e96429697%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl96449704%_)
                                                        (let ((_%e96459707%_
                                                               (gx#syntax-e
                                                                _%tl96449704%_)))
                                                          (let ((_%hd96469711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e96459707%_)))
                        (_%tl96479714%_
                         (let () (declare (not safe)) (##cdr _%e96459707%_))))
                    (if (gx#stx-pair? _%tl96479714%_)
                        (let ((_%e96489717%_ (gx#syntax-e _%tl96479714%_)))
                          (let ((_%hd96499721%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e96489717%_)))
                                (_%tl96509724%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e96489717%_))))
                            (if (gx#stx-pair/null? _%hd96499721%_)
                                (let ((_g21054_
                                       (gx#syntax-split-splice
                                        _%hd96499721%_
                                        '0)))
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
                                    (let ((_%target96519727%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21054_ 0)))
                                          (_%tl96539730%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21054_ 1))))
                                      (if (gx#stx-null? _%tl96539730%_)
                                          (letrec ((_%loop96549733%_
                                                    (lambda (_%hd96529737%_
                                                             _%dispatch96589740%_)
                                                      (if (gx#stx-pair?
                                                           _%hd96529737%_)
                                                          (let ((_%e96559742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd96529737%_)))
                    (let ((_%lp-hd96569746%_
                           (let () (declare (not safe)) (##car _%e96559742%_)))
                          (_%lp-tl96579749%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e96559742%_))))
                      (_%loop96549733%_
                       _%lp-tl96579749%_
                       (cons _%lp-hd96569746%_ _%dispatch96589740%_))))
                  (let ((_%dispatch96599752%_ (reverse _%dispatch96589740%_)))
                    (if (gx#stx-pair? _%tl96509724%_)
                        (let ((_%e96609755%_ (gx#syntax-e _%tl96509724%_)))
                          (let ((_%hd96619759%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e96609755%_)))
                                (_%tl96629762%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e96609755%_))))
                            (if (gx#stx-pair? _%tl96629762%_)
                                (let ((_%e96639765%_
                                       (gx#syntax-e _%tl96629762%_)))
                                  (let ((_%hd96649769%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e96639765%_)))
                                        (_%tl96659772%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e96639765%_))))
                                    (if (gx#stx-pair? _%tl96659772%_)
                                        (let ((_%e96669775%_
                                               (gx#syntax-e _%tl96659772%_)))
                                          (let ((_%hd96679779%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e96669775%_)))
                                                (_%tl96689782%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e96669775%_))))
                                            (if (gx#stx-pair? _%tl96689782%_)
                                                (let ((_%e96699785%_
                                                       (gx#syntax-e
                                                        _%tl96689782%_)))
                                                  (let ((_%hd96709789%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e96699785%_)))
                                                        (_%tl96719792%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e96699785%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl96719792%_)
                                                        (let ((_%e96729795%_
                                                               (gx#syntax-e
                                                                _%tl96719792%_)))
                                                          (let ((_%hd96739799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e96729795%_)))
                        (_%tl96749802%_
                         (let () (declare (not safe)) (##cdr _%e96729795%_))))
                    (if (gx#stx-null? _%tl96749802%_)
                        ((lambda (_%g96309805%_
                                  _%g96319807%_
                                  _%g96329808%_
                                  _%g96339809%_
                                  _%g96349810%_
                                  _%g96359811%_
                                  _%g96369812%_
                                  _%g96379813%_
                                  _%g96389814%_)
                           (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (cons _%g96379813%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%g96349810%_ '())))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _%g96369812%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _%g96339809%_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'h)
                             (cons (cons _%g96319807%_
                                         (cons _%g96389814%_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'ix)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##fxmodulo)
                                               (cons (gx#datum->syntax '#f 'h)
                                                     (cons _%g96329808%_ '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'q)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##vector-ref)
                                                     (cons _%g96369812%_
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
                                               (cons (cons _%g96309805%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##car)
                               (cons (gx#datum->syntax '#f 'q) '()))
                         (cons _%g96389814%_ '())))
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
                                                 (foldr (lambda (_%g98589861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g98599864%_)
                  (cons _%g98589861%_ _%g98599864%_))
                '()
                _%g96359811%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons _%g96379813%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%g96379813%_ '()) '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))
                         _%hd96739799%_
                         _%hd96709789%_
                         _%hd96679779%_
                         _%hd96649769%_
                         _%hd96619759%_
                         _%dispatch96599752%_
                         _%hd96469711%_
                         _%hd96439701%_
                         _%hd96409691%_)
                        (_%g96289680%_ _%g96299684%_))))
                (_%g96289680%_ _%g96299684%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g96289680%_
                                                 _%g96299684%_))))
                                        (_%g96289680%_ _%g96299684%_))))
                                (_%g96289680%_ _%g96299684%_))))
                        (_%g96289680%_ _%g96299684%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop96549733%_
                                             _%target96519727%_
                                             '()))
                                          (_%g96289680%_ _%g96299684%_)))))
                                (_%g96289680%_ _%g96299684%_))))
                        (_%g96289680%_ _%g96299684%_))))
                (_%g96289680%_ _%g96299684%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g96289680%_
                                                 _%g96299684%_))))
                                        (_%g96289680%_ _%g96299684%_)))))
                            (_%g96279867%_
                             (list _%e9609%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch9612%_
                                   _%default9613%_
                                   _%tab9623%_
                                   (vector-length _%tab9623%_)
                                   _%hashf9617%_
                                   _%eqf9618%_)))))))))
          (let* ((_%g94759499%_
                  (lambda (_%g94769495%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g94769495%_)))
                 (_%g94749605%_
                  (lambda (_%g94769503%_)
                    (if (gx#stx-pair? _%g94769503%_)
                        (let ((_%e94799506%_ (gx#syntax-e _%g94769503%_)))
                          (let ((_%hd94809510%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e94799506%_)))
                                (_%tl94819513%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e94799506%_))))
                            (if (gx#stx-pair? _%tl94819513%_)
                                (let ((_%e94829516%_
                                       (gx#syntax-e _%tl94819513%_)))
                                  (let ((_%hd94839520%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e94829516%_)))
                                        (_%tl94849523%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e94829516%_))))
                                    (if (gx#stx-pair/null? _%tl94849523%_)
                                        (let ((_g21056_
                                               (gx#syntax-split-splice
                                                _%tl94849523%_
                                                '0)))
                                          (begin
                                            (let ((_g21057_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g21056_)
                                                         (##values-length
                                                          _g21056_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g21057_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g21057_)))
                                            (let ((_%target94859526%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21056_
                                                      0)))
                                                  (_%tl94879529%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21056_
                                                      1))))
                                              (if (gx#stx-null? _%tl94879529%_)
                                                  (letrec ((_%loop94889532%_
                                                            (lambda (_%hd94869536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause94929539%_)
                      (if (gx#stx-pair? _%hd94869536%_)
                          (let ((_%e94899541%_ (gx#syntax-e _%hd94869536%_)))
                            (let ((_%lp-hd94909545%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e94899541%_)))
                                  (_%lp-tl94919548%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e94899541%_))))
                              (_%loop94889532%_
                               _%lp-tl94919548%_
                               (cons _%lp-hd94909545%_ _%clause94929539%_))))
                          (let ((_%clause94939551%_
                                 (reverse _%clause94929539%_)))
                            ((lambda (_%g94779554%_ _%g94789556%_)
                               (let ((_g21058_
                                      (_%parse-clauses9449%_
                                       _%g94789556%_
                                       (foldr (lambda (_%g95749577%_
                                                       _%g95759580%_)
                                                (cons _%g95749577%_
                                                      _%g95759580%_))
                                              '()
                                              _%g94779554%_))))
                                 (begin
                                   (let ((_g21059_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g21058_)
                                                (##values-length _g21058_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g21059_ 3)))
                                         (error "Context expects 3 values"
                                                _g21059_)))
                                   (let ((_%datums9583%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g21058_ 0)))
                                         (_%dispatch9585%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g21058_ 1)))
                                         (_%default9586%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g21058_ 2))))
                                     (let ((_%datum-count9588%_
                                            (_%count-datums9452%_
                                             _%datums9583%_)))
                                       (if (< _%datum-count9588%_ '6)
                                           (_%generate-simple-case9457%_
                                            _%g94789556%_
                                            _%datums9583%_
                                            _%dispatch9585%_
                                            _%default9586%_)
                                           (if (_%char-datums?9454%_
                                                _%datums9583%_)
                                               (_%generate-char-dispatch9466%_
                                                _%g94789556%_
                                                _%datums9583%_
                                                _%dispatch9585%_
                                                _%default9586%_)
                                               (if (_%fixnum-datums?9455%_
                                                    _%datums9583%_)
                                                   (_%generate-fixnum-dispatch9471%_
                                                    _%g94789556%_
                                                    _%datums9583%_
                                                    _%dispatch9585%_
                                                    _%default9586%_)
                                                   (if (< _%datum-count9588%_
                                                          '12)
                                                       (_%generate-simple-case9457%_
                                                        _%g94789556%_
                                                        _%datums9583%_
                                                        _%dispatch9585%_
                                                        _%default9586%_)
                                                       (if (_%symbolic-datums?9453%_
                                                            _%datums9583%_)
                                                           (_%generate-symbolic-dispatch9461%_
                                                            _%g94789556%_
                                                            _%datums9583%_
                                                            _%dispatch9585%_
                                                            _%default9586%_)
                                                           (_%generate-generic-dispatch9473%_
                                                            _%g94789556%_
                                                            _%datums9583%_
                                                            _%dispatch9585%_
                                                            _%default9586%_)))))))))))
                             _%clause94939551%_
                             _%hd94839520%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop94889532%_
                                                     _%target94859526%_
                                                     '()))
                                                  (_%g94759499%_
                                                   _%g94769503%_)))))
                                        (_%g94759499%_ _%g94769503%_))))
                                (_%g94759499%_ _%g94769503%_))))
                        (_%g94759499%_ _%g94769503%_)))))
            (_%g94749605%_ _%stx9446%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-test|
      (lambda (_%stx12483%_)
        (let* ((_%g1248612504%_
                (lambda (_%g1248712500%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1248712500%_)))
               (_%g1248512576%_
                (lambda (_%g1248712508%_)
                  (if (gx#stx-pair? _%g1248712508%_)
                      (let ((_%e1249012511%_ (gx#syntax-e _%g1248712508%_)))
                        (let ((_%hd1249112515%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1249012511%_)))
                              (_%tl1249212518%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1249012511%_))))
                          (if (gx#stx-pair? _%tl1249212518%_)
                              (let ((_%e1249312521%_
                                     (gx#syntax-e _%tl1249212518%_)))
                                (let ((_%hd1249412525%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1249312521%_)))
                                      (_%tl1249512528%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1249312521%_))))
                                  (if (gx#stx-pair? _%tl1249512528%_)
                                      (let ((_%e1249612531%_
                                             (gx#syntax-e _%tl1249512528%_)))
                                        (let ((_%hd1249712535%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1249612531%_)))
                                              (_%tl1249812538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1249612531%_))))
                                          (if (gx#stx-null? _%tl1249812538%_)
                                              ((lambda (_%g1248812541%_
                                                        _%g1248912543%_)
                                                 (let ((_%datum-e12559%_
                                                        (gx#stx-e
                                                         _%g1248912543%_)))
                                                   (if (or (symbol? _%datum-e12559%_)
                                                           (keyword?
                                                            _%datum-e12559%_)
                                                           (immediate?
                                                            _%datum-e12559%_))
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%g1248912543%_ '()))
                           (cons _%g1248812541%_ '())))
               (if (number? _%datum-e12559%_)
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g1248912543%_ '()))
                               (cons _%g1248812541%_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g1248912543%_ '()))
                               (cons _%g1248812541%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1249712535%_
                                               _%hd1249412525%_)
                                              (_%g1248612504%_
                                               _%g1248712508%_))))
                                      (_%g1248612504%_ _%g1248712508%_))))
                              (_%g1248612504%_ _%g1248712508%_))))
                      (_%g1248612504%_ _%g1248712508%_)))))
          (_%g1248512576%_ _%stx12483%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch|
      (lambda (_%$stx12580%_)
        (let* ((_%g1258412608%_
                (lambda (_%g1258512604%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1258512604%_)))
               (_%g1258312691%_
                (lambda (_%g1258512612%_)
                  (if (gx#stx-pair? _%g1258512612%_)
                      (let ((_%e1258812615%_ (gx#syntax-e _%g1258512612%_)))
                        (let ((_%hd1258912619%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1258812615%_)))
                              (_%tl1259012622%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1258812615%_))))
                          (if (gx#stx-pair? _%tl1259012622%_)
                              (let ((_%e1259112625%_
                                     (gx#syntax-e _%tl1259012622%_)))
                                (let ((_%hd1259212629%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1259112625%_)))
                                      (_%tl1259312632%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1259112625%_))))
                                  (if (gx#stx-pair/null? _%tl1259312632%_)
                                      (let ((_g21060_
                                             (gx#syntax-split-splice
                                              _%tl1259312632%_
                                              '0)))
                                        (begin
                                          (let ((_g21061_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21060_)
                                                       (##values-length
                                                        _g21060_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21061_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21061_)))
                                          (let ((_%target1259412635%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21060_ 0)))
                                                (_%tl1259612638%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21060_ 1))))
                                            (if (gx#stx-null? _%tl1259612638%_)
                                                (letrec ((_%loop1259712641%_
                                                          (lambda (_%hd1259512645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%K1260112648%_)
                    (if (gx#stx-pair? _%hd1259512645%_)
                        (let ((_%e1259812650%_ (gx#syntax-e _%hd1259512645%_)))
                          (let ((_%lp-hd1259912654%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1259812650%_)))
                                (_%lp-tl1260012657%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1259812650%_))))
                            (_%loop1259712641%_
                             _%lp-tl1260012657%_
                             (cons _%lp-hd1259912654%_ _%K1260112648%_))))
                        (let ((_%K1260212660%_ (reverse _%K1260112648%_)))
                          ((lambda (_%g1258612663%_ _%g1258712665%_)
                             (cons (gx#datum->syntax '#f '~case-dispatch*)
                                   (cons '0
                                         (cons _%g1258712665%_
                                               (foldr (lambda (_%g1268212685%_
                                                               _%g1268312688%_)
                                                        (cons _%g1268212685%_
                                                              _%g1268312688%_))
                                                      '()
                                                      _%g1258612663%_)))))
                           _%K1260212660%_
                           _%hd1259212629%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1259712641%_
                                                   _%target1259412635%_
                                                   '()))
                                                (_%g1258412608%_
                                                 _%g1258512612%_)))))
                                      (_%g1258412608%_ _%g1258512612%_))))
                              (_%g1258412608%_ _%g1258512612%_))))
                      (_%g1258412608%_ _%g1258512612%_)))))
          (_%g1258312691%_ _%$stx12580%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch*|
      (lambda (_%stx12696%_)
        (let* ((_%__stx1973419735%_ _%stx12696%_)
               (_%g1270312799%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1973419735%_))))
          (let ((_%__kont1973719738%_
                 (lambda (_%g1270513274%_ _%g1270613276%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons '#!void '()))))
                (_%__kont1973919740%_
                 (lambda (_%g1271613216%_ _%g1271713218%_ _%g1271813219%_)
                   _%g1271613216%_))
                (_%__kont1974119742%_
                 (lambda (_%g1273113113%_
                          _%g1273213115%_
                          _%g1273313116%_
                          _%g1273413117%_)
                   (let* ((_%g1313813146%_
                           (lambda (_%g1313913142%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1313913142%_)))
                          (_%g1313713165%_
                           (lambda (_%g1313913150%_)
                             ((lambda (_%g1314013153%_)
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons _%g1273313116%_
                                                        (cons _%g1314013153%_
                                                              '())))
                                            (cons _%g1273213115%_
                                                  (cons _%g1273113113%_
                                                        '())))))
                              _%g1313913150%_))))
                     (_%g1313713165%_ (gx#stx-e _%g1273413117%_)))))
                (_%__kont1974319744%_
                 (lambda (_%g1275012963%_
                          _%g1275112965%_
                          _%g1275212966%_
                          _%g1275312967%_
                          _%g1275412968%_)
                   (let* ((_%g1299213007%_
                           (lambda (_%g1299313003%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1299313003%_)))
                          (_%g1299113052%_
                           (lambda (_%g1299313011%_)
                             (if (gx#stx-pair? _%g1299313011%_)
                                 (let ((_%e1299613014%_
                                        (gx#syntax-e _%g1299313011%_)))
                                   (let ((_%hd1299713018%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e1299613014%_)))
                                         (_%tl1299813021%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e1299613014%_))))
                                     (if (gx#stx-pair? _%tl1299813021%_)
                                         (let ((_%e1299913024%_
                                                (gx#syntax-e
                                                 _%tl1299813021%_)))
                                           (let ((_%hd1300013028%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e1299913024%_)))
                                                 (_%tl1300113031%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e1299913024%_))))
                                             (if (gx#stx-null?
                                                  _%tl1300113031%_)
                                                 ((lambda (_%g1299413034%_
                                                           _%g1299513036%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons _%g1275312967%_
                                    (cons _%g1299513036%_ '())))
                        (cons _%g1275212966%_
                              (cons (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx=)
                                                      (cons _%g1275312967%_
                                                            (cons _%g1299413034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%g1275112965%_
                                                      (cons _%g1275012963%_
                                                            '()))))
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd1300013028%_
                                                  _%hd1299713018%_)
                                                 (_%g1299213007%_
                                                  _%g1299313011%_))))
                                         (_%g1299213007%_ _%g1299313011%_))))
                                 (_%g1299213007%_ _%g1299313011%_)))))
                     (_%g1299113052%_
                      (list (gx#stx-e _%g1275412968%_)
                            (fx1+ (gx#stx-e _%g1275412968%_)))))))
                (_%__kont1974519746%_
                 (lambda (_%g1277312864%_ _%g1277412866%_ _%g1277512867%_)
                   (cons (gx#datum->syntax '#f '~case-dispatch-bsearch)
                         (cons _%g1277512867%_
                               (cons _%g1277412866%_
                                     (foldr (lambda (_%g1288712890%_
                                                     _%g1288812893%_)
                                              (cons _%g1288712890%_
                                                    _%g1288812893%_))
                                            '()
                                            _%g1277312864%_)))))))
            (let ((_%__match1989119892%_
                   (lambda (_%e1277612806%_
                            _%hd1277712810%_
                            _%tl1277812813%_
                            _%e1277912816%_
                            _%hd1278012820%_
                            _%tl1278112823%_
                            _%e1278212826%_
                            _%hd1278312830%_
                            _%tl1278412833%_
                            _%__splice1974719748%_
                            _%target1278512836%_
                            _%tl1278712839%_)
                     (letrec ((_%loop1278812842%_
                               (lambda (_%hd1278612846%_ _%K1279212849%_)
                                 (if (gx#stx-pair? _%hd1278612846%_)
                                     (let ((_%e1278912851%_
                                            (gx#syntax-e _%hd1278612846%_)))
                                       (let ((_%lp-tl1279112858%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1278912851%_)))
                                             (_%lp-hd1279012855%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1278912851%_))))
                                         (_%loop1278812842%_
                                          _%lp-tl1279112858%_
                                          (cons _%lp-hd1279012855%_
                                                _%K1279212849%_))))
                                     (let ((_%K1279312861%_
                                            (reverse _%K1279212849%_)))
                                       (_%__kont1974519746%_
                                        _%K1279312861%_
                                        _%hd1278312830%_
                                        _%hd1278012820%_))))))
                       (_%loop1278812842%_ _%target1278512836%_ '())))))
              (if (gx#stx-pair? _%__stx1973419735%_)
                  (let ((_%e1270713244%_ (gx#syntax-e _%__stx1973419735%_)))
                    (let ((_%tl1270913251%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1270713244%_)))
                          (_%hd1270813248%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1270713244%_))))
                      (if (gx#stx-pair? _%tl1270913251%_)
                          (let ((_%e1271013254%_
                                 (gx#syntax-e _%tl1270913251%_)))
                            (let ((_%tl1271213261%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1271013254%_)))
                                  (_%hd1271113258%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1271013254%_))))
                              (if (gx#stx-pair? _%tl1271213261%_)
                                  (let ((_%e1271313264%_
                                         (gx#syntax-e _%tl1271213261%_)))
                                    (let ((_%tl1271513271%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1271313264%_)))
                                          (_%hd1271413268%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1271313264%_))))
                                      (if (gx#stx-null? _%tl1271513271%_)
                                          (_%__kont1973719738%_
                                           _%hd1271413268%_
                                           _%hd1271113258%_)
                                          (if (gx#stx-pair? _%tl1271513271%_)
                                              (let ((_%e1272813206%_
                                                     (gx#syntax-e
                                                      _%tl1271513271%_)))
                                                (let ((_%tl1273013213%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1272813206%_)))
                                                      (_%hd1272913210%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1272813206%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1273013213%_)
                                                      (_%__kont1973919740%_
                                                       _%hd1272913210%_
                                                       _%hd1271413268%_
                                                       _%hd1271113258%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1273013213%_)
                                                          (let ((_%e1274713103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1273013213%_)))
                    (let ((_%tl1274913110%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1274713103%_)))
                          (_%hd1274813107%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1274713103%_))))
                      (if (gx#stx-null? _%tl1274913110%_)
                          (_%__kont1974119742%_
                           _%hd1274813107%_
                           _%hd1272913210%_
                           _%hd1271413268%_
                           _%hd1271113258%_)
                          (if (gx#stx-pair? _%tl1274913110%_)
                              (let ((_%e1277012953%_
                                     (gx#syntax-e _%tl1274913110%_)))
                                (let ((_%tl1277212960%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1277012953%_)))
                                      (_%hd1277112957%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1277012953%_))))
                                  (if (gx#stx-null? _%tl1277212960%_)
                                      (_%__kont1974319744%_
                                       _%hd1277112957%_
                                       _%hd1274813107%_
                                       _%hd1272913210%_
                                       _%hd1271413268%_
                                       _%hd1271113258%_)
                                      (if (gx#stx-pair/null? _%tl1271513271%_)
                                          (let ((_%__splice1974719748%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1271513271%_
                                                  '0)))
                                            (let ((_%tl1278712839%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1974719748%_
                                                      '1)))
                                                  (_%target1278512836%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1974719748%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1278712839%_)
                                                  (_%__match1989119892%_
                                                   _%e1270713244%_
                                                   _%hd1270813248%_
                                                   _%tl1270913251%_
                                                   _%e1271013254%_
                                                   _%hd1271113258%_
                                                   _%tl1271213261%_
                                                   _%e1271313264%_
                                                   _%hd1271413268%_
                                                   _%tl1271513271%_
                                                   _%__splice1974719748%_
                                                   _%target1278512836%_
                                                   _%tl1278712839%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1270312799%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1270312799%_))))))
                              (if (gx#stx-pair/null? _%tl1271513271%_)
                                  (let ((_%__splice1974719748%_
                                         (gx#syntax-split-splice->vector
                                          _%tl1271513271%_
                                          '0)))
                                    (let ((_%tl1278712839%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1974719748%_
                                              '1)))
                                          (_%target1278512836%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1974719748%_
                                              '0))))
                                      (if (gx#stx-null? _%tl1278712839%_)
                                          (_%__match1989119892%_
                                           _%e1270713244%_
                                           _%hd1270813248%_
                                           _%tl1270913251%_
                                           _%e1271013254%_
                                           _%hd1271113258%_
                                           _%tl1271213261%_
                                           _%e1271313264%_
                                           _%hd1271413268%_
                                           _%tl1271513271%_
                                           _%__splice1974719748%_
                                           _%target1278512836%_
                                           _%tl1278712839%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g1270312799%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1270312799%_)))))))
                  (if (gx#stx-pair/null? _%tl1271513271%_)
                      (let ((_%__splice1974719748%_
                             (gx#syntax-split-splice->vector
                              _%tl1271513271%_
                              '0)))
                        (let ((_%tl1278712839%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1974719748%_ '1)))
                              (_%target1278512836%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1974719748%_ '0))))
                          (if (gx#stx-null? _%tl1278712839%_)
                              (_%__match1989119892%_
                               _%e1270713244%_
                               _%hd1270813248%_
                               _%tl1270913251%_
                               _%e1271013254%_
                               _%hd1271113258%_
                               _%tl1271213261%_
                               _%e1271313264%_
                               _%hd1271413268%_
                               _%tl1271513271%_
                               _%__splice1974719748%_
                               _%target1278512836%_
                               _%tl1278712839%_)
                              (let ()
                                (declare (not safe))
                                (_%g1270312799%_)))))
                      (let () (declare (not safe)) (_%g1270312799%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl1271513271%_)
                                                  (let ((_%__splice1974719748%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl1271513271%_
                                                          '0)))
                                                    (let ((_%tl1278712839%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1974719748%_
                                                              '1)))
                                                          (_%target1278512836%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1974719748%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl1278712839%_)
                                                          (_%__match1989119892%_
                                                           _%e1270713244%_
                                                           _%hd1270813248%_
                                                           _%tl1270913251%_
                                                           _%e1271013254%_
                                                           _%hd1271113258%_
                                                           _%tl1271213261%_
                                                           _%e1271313264%_
                                                           _%hd1271413268%_
                                                           _%tl1271513271%_
                                                           _%__splice1974719748%_
                                                           _%target1278512836%_
                                                           _%tl1278712839%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g1270312799%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1270312799%_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1270312799%_)))))
                          (let () (declare (not safe)) (_%g1270312799%_)))))
                  (let () (declare (not safe)) (_%g1270312799%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch-bsearch|
      (lambda (_%stx13296%_)
        (letrec ((_%split13299%_
                  (lambda (_%lst13654%_ _%mid13656%_)
                    (let _%lp13658%_ ((_%i13661%_ '0)
                                      (_%rest13663%_ _%lst13654%_)
                                      (_%left13664%_ '()))
                      (if (fx< _%i13661%_ _%mid13656%_)
                          (_%lp13658%_
                           (fx1+ _%i13661%_)
                           (cdr _%rest13663%_)
                           (cons (car _%rest13663%_) _%left13664%_))
                          (values (reverse _%left13664%_) _%rest13663%_))))))
          (let* ((_%g1330213330%_
                  (lambda (_%g1330313326%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1330313326%_)))
                 (_%g1330113650%_
                  (lambda (_%g1330313334%_)
                    (if (gx#stx-pair? _%g1330313334%_)
                        (let ((_%e1330713337%_ (gx#syntax-e _%g1330313334%_)))
                          (let ((_%hd1330813341%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1330713337%_)))
                                (_%tl1330913344%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1330713337%_))))
                            (if (gx#stx-pair? _%tl1330913344%_)
                                (let ((_%e1331013347%_
                                       (gx#syntax-e _%tl1330913344%_)))
                                  (let ((_%hd1331113351%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1331013347%_)))
                                        (_%tl1331213354%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1331013347%_))))
                                    (if (gx#stx-pair? _%tl1331213354%_)
                                        (let ((_%e1331313357%_
                                               (gx#syntax-e _%tl1331213354%_)))
                                          (let ((_%hd1331413361%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1331313357%_)))
                                                (_%tl1331513364%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1331313357%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl1331513364%_)
                                                (let ((_g21062_
                                                       (gx#syntax-split-splice
                                                        _%tl1331513364%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g21063_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g21062_)
                         (##values-length _g21062_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g21063_ 2)))
                  (error "Context expects 2 values" _g21063_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target1331613367%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21062_
                                                              0)))
                                                          (_%tl1331813370%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21062_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl1331813370%_)
                                                          (letrec ((_%loop1331913373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd1331713377%_ _%K1332313380%_)
                              (if (gx#stx-pair? _%hd1331713377%_)
                                  (let ((_%e1332013382%_
                                         (gx#syntax-e _%hd1331713377%_)))
                                    (let ((_%lp-hd1332113386%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1332013382%_)))
                                          (_%lp-tl1332213389%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1332013382%_))))
                                      (_%loop1331913373%_
                                       _%lp-tl1332213389%_
                                       (cons _%lp-hd1332113386%_
                                             _%K1332313380%_))))
                                  (let ((_%K1332413392%_
                                         (reverse _%K1332313380%_)))
                                    ((lambda (_%g1330413395%_
                                              _%g1330513397%_
                                              _%g1330613398%_)
                                       (let* ((_%len13428%_
                                               (length (foldr (lambda (_%g1341913422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1342013425%_)
                        (cons _%g1341913422%_ _%g1342013425%_))
                      '()
                      _%g1330413395%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%mid13431%_
                                               (quotient _%len13428%_ '2))
                                              (_g21064_
                                               (_%split13299%_
                                                (foldr (lambda (_%g1343313436%_
                                                                _%g1343413439%_)
                                                         (cons _%g1343313436%_
                                                               _%g1343413439%_))
                                                       '()
                                                       _%g1330413395%_)
                                                _%mid13431%_)))
                                         (begin
                                           (let ((_g21065_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g21064_)
                                                        (##values-length
                                                         _g21064_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g21065_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g21065_)))
                                           (let ((_%left13442%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g21064_ 0)))
                                                 (_%right13444%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g21064_
                                                     1))))
                                             (let* ((_%g1344813489%_
                                                     (lambda (_%g1344913485%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g1344913485%_)))
                                                    (_%g1344713646%_
                                                     (lambda (_%g1344913493%_)
                                                       (if (gx#stx-pair?
                                                            _%g1344913493%_)
                                                           (let ((_%e1345413496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g1344913493%_)))
                     (let ((_%hd1345513500%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1345413496%_)))
                           (_%tl1345613503%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1345413496%_))))
                       (if (gx#stx-pair? _%tl1345613503%_)
                           (let ((_%e1345713506%_
                                  (gx#syntax-e _%tl1345613503%_)))
                             (let ((_%hd1345813510%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1345713506%_)))
                                   (_%tl1345913513%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1345713506%_))))
                               (if (gx#stx-pair/null? _%hd1345813510%_)
                                   (let ((_g21066_
                                          (gx#syntax-split-splice
                                           _%hd1345813510%_
                                           '0)))
                                     (begin
                                       (let ((_g21067_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21066_)
                                                    (##values-length _g21066_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21067_ 2)))
                                             (error "Context expects 2 values"
                                                    _g21067_)))
                                       (let ((_%target1346013516%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21066_ 0)))
                                             (_%tl1346213519%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21066_ 1))))
                                         (if (gx#stx-null? _%tl1346213519%_)
                                             (letrec ((_%loop1346313522%_
                                                       (lambda (_%hd1346113526%_
                                                                _%K-left1346713529%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1346113526%_)
                                                             (let ((_%e1346413531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1346113526%_)))
                       (let ((_%lp-hd1346513535%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1346413531%_)))
                             (_%lp-tl1346613538%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1346413531%_))))
                         (_%loop1346313522%_
                          _%lp-tl1346613538%_
                          (cons _%lp-hd1346513535%_ _%K-left1346713529%_))))
                     (let ((_%K-left1346813541%_
                            (reverse _%K-left1346713529%_)))
                       (if (gx#stx-pair? _%tl1345913513%_)
                           (let ((_%e1346913544%_
                                  (gx#syntax-e _%tl1345913513%_)))
                             (let ((_%hd1347013548%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1346913544%_)))
                                   (_%tl1347113551%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1346913544%_))))
                               (if (gx#stx-pair/null? _%hd1347013548%_)
                                   (let ((_g21068_
                                          (gx#syntax-split-splice
                                           _%hd1347013548%_
                                           '0)))
                                     (begin
                                       (let ((_g21069_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21068_)
                                                    (##values-length _g21068_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21069_ 2)))
                                             (error "Context expects 2 values"
                                                    _g21069_)))
                                       (let ((_%target1347213554%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21068_ 0)))
                                             (_%tl1347413557%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21068_ 1))))
                                         (if (gx#stx-null? _%tl1347413557%_)
                                             (letrec ((_%loop1347513560%_
                                                       (lambda (_%hd1347313564%_
                                                                _%K-right1347913567%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1347313564%_)
                                                             (let ((_%e1347613569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1347313564%_)))
                       (let ((_%lp-hd1347713573%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1347613569%_)))
                             (_%lp-tl1347813576%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1347613569%_))))
                         (_%loop1347513560%_
                          _%lp-tl1347813576%_
                          (cons _%lp-hd1347713573%_ _%K-right1347913567%_))))
                     (let ((_%K-right1348013579%_
                            (reverse _%K-right1347913567%_)))
                       (if (gx#stx-pair? _%tl1347113551%_)
                           (let ((_%e1348113582%_
                                  (gx#syntax-e _%tl1347113551%_)))
                             (let ((_%hd1348213586%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1348113582%_)))
                                   (_%tl1348313589%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1348113582%_))))
                               (if (gx#stx-null? _%tl1348313589%_)
                                   ((lambda (_%g1345013592%_
                                             _%g1345113594%_
                                             _%g1345213595%_
                                             _%g1345313596%_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '##fx<)
                                                        (cons _%g1330513397%_
                                                              (cons _%g1345013592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch*)
                                                              (cons _%g1330613398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g1330513397%_
                                  (foldr (lambda (_%g1362913634%_
                                                  _%g1363013637%_)
                                           (cons _%g1362913634%_
                                                 _%g1363013637%_))
                                         '()
                                         _%g1345213595%_))))
                (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                            (cons _%g1345013592%_
                                  (cons _%g1330513397%_
                                        (foldr (lambda (_%g1363113640%_
                                                        _%g1363213643%_)
                                                 (cons _%g1363113640%_
                                                       _%g1363213643%_))
                                               '()
                                               _%g1345113594%_))))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%hd1348213586%_
                                    _%K-right1348013579%_
                                    _%K-left1346813541%_
                                    _%hd1345513500%_)
                                   (_%g1344813489%_ _%g1344913493%_))))
                           (_%g1344813489%_ _%g1344913493%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1347513560%_
                                                _%target1347213554%_
                                                '()))
                                             (_%g1344813489%_
                                              _%g1344913493%_)))))
                                   (_%g1344813489%_ _%g1344913493%_))))
                           (_%g1344813489%_ _%g1344913493%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1346313522%_
                                                _%target1346013516%_
                                                '()))
                                             (_%g1344813489%_
                                              _%g1344913493%_)))))
                                   (_%g1344813489%_ _%g1344913493%_))))
                           (_%g1344813489%_ _%g1344913493%_))))
                   (_%g1344813489%_ _%g1344913493%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g1344713646%_
                                                (list _%mid13431%_
                                                      _%left13442%_
                                                      _%right13444%_
                                                      (fx+ _%mid13431%_
                                                           (gx#stx-e
                                                            _%g1330613398%_)))))))))
                                     _%K1332413392%_
                                     _%hd1331413361%_
                                     _%hd1331113351%_))))))
                    (_%loop1331913373%_ _%target1331613367%_ '()))
                  (_%g1330213330%_ _%g1330313334%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1330213330%_
                                                 _%g1330313334%_))))
                                        (_%g1330213330%_ _%g1330313334%_))))
                                (_%g1330213330%_ _%g1330313334%_))))
                        (_%g1330213330%_ _%g1330313334%_)))))
            (_%g1330113650%_ _%stx13296%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#begin0|
      (lambda (_%$stx13670%_)
        (let* ((_%__stx1989419895%_ _%$stx13670%_)
               (_%g1367513706%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1989419895%_))))
          (let ((_%__kont1989719898%_
                 (lambda (_%g1367713816%_) _%g1367713816%_))
                (_%__kont1989919900%_
                 (lambda (_%g1368413761%_ _%g1368513763%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$r)
                                     (cons _%g1368513763%_ '()))
                               (cons (cons (gx#datum->syntax '#f '%#expression)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1378013783%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1378113786%_)
                        (cons _%g1378013783%_ _%g1378113786%_))
                      '()
                      _%g1368413761%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (gx#datum->syntax '#f '$r)
                                           '())))))))
            (let ((_%__match1993719938%_
                   (lambda (_%e1368613713%_
                            _%hd1368713717%_
                            _%tl1368813720%_
                            _%e1368913723%_
                            _%hd1369013727%_
                            _%tl1369113730%_
                            _%__splice1990119902%_
                            _%target1369213733%_
                            _%tl1369413736%_)
                     (letrec ((_%loop1369513739%_
                               (lambda (_%hd1369313743%_ _%rest1369913746%_)
                                 (if (gx#stx-pair? _%hd1369313743%_)
                                     (let ((_%e1369613748%_
                                            (gx#syntax-e _%hd1369313743%_)))
                                       (let ((_%lp-tl1369813755%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1369613748%_)))
                                             (_%lp-hd1369713752%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1369613748%_))))
                                         (_%loop1369513739%_
                                          _%lp-tl1369813755%_
                                          (cons _%lp-hd1369713752%_
                                                _%rest1369913746%_))))
                                     (let ((_%rest1370013758%_
                                            (reverse _%rest1369913746%_)))
                                       (_%__kont1989919900%_
                                        _%rest1370013758%_
                                        _%hd1369013727%_))))))
                       (_%loop1369513739%_ _%target1369213733%_ '())))))
              (if (gx#stx-pair? _%__stx1989419895%_)
                  (let ((_%e1367813796%_ (gx#syntax-e _%__stx1989419895%_)))
                    (let ((_%tl1368013803%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1367813796%_)))
                          (_%hd1367913800%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1367813796%_))))
                      (if (gx#stx-pair? _%tl1368013803%_)
                          (let ((_%e1368113806%_
                                 (gx#syntax-e _%tl1368013803%_)))
                            (let ((_%tl1368313813%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1368113806%_)))
                                  (_%hd1368213810%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1368113806%_))))
                              (if (gx#stx-null? _%tl1368313813%_)
                                  (_%__kont1989719898%_ _%hd1368213810%_)
                                  (if (gx#stx-pair/null? _%tl1368313813%_)
                                      (let ((_%__splice1990119902%_
                                             (gx#syntax-split-splice->vector
                                              _%tl1368313813%_
                                              '0)))
                                        (let ((_%tl1369413736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1990119902%_
                                                  '1)))
                                              (_%target1369213733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1990119902%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1369413736%_)
                                              (_%__match1993719938%_
                                               _%e1367813796%_
                                               _%hd1367913800%_
                                               _%tl1368013803%_
                                               _%e1368113806%_
                                               _%hd1368213810%_
                                               _%tl1368313813%_
                                               _%__splice1990119902%_
                                               _%target1369213733%_
                                               _%tl1369413736%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1367513706%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1367513706%_))))))
                          (let () (declare (not safe)) (_%g1367513706%_)))))
                  (let () (declare (not safe)) (_%g1367513706%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#rec|
      (lambda (_%$stx13834%_)
        (let* ((_%__stx1994019941%_ _%$stx13834%_)
               (_%g1384013893%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1994019941%_))))
          (let ((_%__kont1994319944%_
                 (lambda (_%g1384214093%_ _%g1384314095%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%g1384314095%_
                                           (cons _%g1384214093%_ '()))
                                     '())
                               (cons _%g1384314095%_ '())))))
                (_%__kont1994519946%_
                 (lambda (_%g1385314037%_ _%g1385414039%_)
                   (cons (gx#datum->syntax '#f 'letrec-values)
                         (cons (cons (cons _%g1385414039%_
                                           (cons _%g1385314037%_ '()))
                                     '())
                               (cons (cons (gx#datum->syntax '#f 'values)
                                           _%g1385414039%_)
                                     '())))))
                (_%__kont1994719948%_
                 (lambda (_%g1386713958%_ _%g1386813960%_ _%g1386913961%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%g1386913961%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons _%g1386813960%_
                                                             (foldr (lambda (_%g1398113984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1398213987%_)
                              (cons _%g1398113984%_ _%g1398213987%_))
                            '()
                            _%g1386713958%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons _%g1386913961%_ '()))))))
            (let* ((_%__match2002720028%_
                    (lambda (_%e1387013900%_
                             _%hd1387113904%_
                             _%tl1387213907%_
                             _%e1387313910%_
                             _%hd1387413914%_
                             _%tl1387513917%_
                             _%e1387613920%_
                             _%hd1387713924%_
                             _%tl1387813927%_
                             _%__splice1994919950%_
                             _%target1387913930%_
                             _%tl1388113933%_)
                      (letrec ((_%loop1388213936%_
                                (lambda (_%hd1388013940%_ _%body1388613943%_)
                                  (if (gx#stx-pair? _%hd1388013940%_)
                                      (let ((_%e1388313945%_
                                             (gx#syntax-e _%hd1388013940%_)))
                                        (let ((_%lp-tl1388513952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1388313945%_)))
                                              (_%lp-hd1388413949%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1388313945%_))))
                                          (_%loop1388213936%_
                                           _%lp-tl1388513952%_
                                           (cons _%lp-hd1388413949%_
                                                 _%body1388613943%_))))
                                      (let ((_%body1388713955%_
                                             (reverse _%body1388613943%_)))
                                        (let ((_%g1386713958%_
                                               _%body1388713955%_)
                                              (_%g1386813960%_
                                               _%tl1387813927%_)
                                              (_%g1386913961%_
                                               _%hd1387713924%_))
                                          (if (gx#identifier? _%g1386913961%_)
                                              (_%__kont1994719948%_
                                               _%g1386713958%_
                                               _%g1386813960%_
                                               _%g1386913961%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1384013893%_)))))))))
                        (_%loop1388213936%_ _%target1387913930%_ '()))))
                   (_%__match2000120002%_
                    (lambda (_%e1385513997%_
                             _%hd1385614001%_
                             _%tl1385714004%_
                             _%e1385814007%_
                             _%hd1385914011%_
                             _%tl1386014014%_
                             _%e1386114017%_
                             _%hd1386214021%_
                             _%tl1386314024%_
                             _%e1386414027%_
                             _%hd1386514031%_
                             _%tl1386614034%_)
                      (let ((_%g1385314037%_ _%hd1386514031%_)
                            (_%g1385414039%_ _%tl1386314024%_))
                        (if (gx#identifier-list? _%g1385414039%_)
                            (_%__kont1994519946%_
                             _%g1385314037%_
                             _%g1385414039%_)
                            (if (gx#stx-pair/null? _%tl1386014014%_)
                                (let ((_%__splice1994919950%_
                                       (gx#syntax-split-splice->vector
                                        _%tl1386014014%_
                                        '0)))
                                  (let ((_%tl1388113933%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1994919950%_
                                            '1)))
                                        (_%target1387913930%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1994919950%_
                                            '0))))
                                    (if (gx#stx-null? _%tl1388113933%_)
                                        (_%__match2002720028%_
                                         _%e1385513997%_
                                         _%hd1385614001%_
                                         _%tl1385714004%_
                                         _%e1385814007%_
                                         _%hd1385914011%_
                                         _%tl1386014014%_
                                         _%e1386114017%_
                                         _%hd1386214021%_
                                         _%tl1386314024%_
                                         _%__splice1994919950%_
                                         _%target1387913930%_
                                         _%tl1388113933%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1384013893%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1384013893%_)))))))
                   (_%__match1997119972%_
                    (lambda (_%e1384414063%_
                             _%hd1384514067%_
                             _%tl1384614070%_
                             _%e1384714073%_
                             _%hd1384814077%_
                             _%tl1384914080%_
                             _%e1385014083%_
                             _%hd1385114087%_
                             _%tl1385214090%_)
                      (let ((_%g1384214093%_ _%hd1385114087%_)
                            (_%g1384314095%_ _%hd1384814077%_))
                        (if (gx#identifier? _%g1384314095%_)
                            (_%__kont1994319944%_
                             _%g1384214093%_
                             _%g1384314095%_)
                            (if (gx#stx-pair? _%hd1384814077%_)
                                (let ((_%e1386114017%_
                                       (gx#syntax-e _%hd1384814077%_)))
                                  (let ((_%tl1386314024%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1386114017%_)))
                                        (_%hd1386214021%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1386114017%_))))
                                    (if (gx#identifier? _%hd1386214021%_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core/sugar~Sugar-2[1]#_g21070_|
                                             _%hd1386214021%_)
                                            (_%__match2000120002%_
                                             _%e1384414063%_
                                             _%hd1384514067%_
                                             _%tl1384614070%_
                                             _%e1384714073%_
                                             _%hd1384814077%_
                                             _%tl1384914080%_
                                             _%e1386114017%_
                                             _%hd1386214021%_
                                             _%tl1386314024%_
                                             _%e1385014083%_
                                             _%hd1385114087%_
                                             _%tl1385214090%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl1384914080%_)
                                                (let ((_%__splice1994919950%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl1384914080%_
                                                        '0)))
                                                  (let ((_%tl1388113933%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1994919950%_
                                                            '1)))
                                                        (_%target1387913930%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1994919950%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl1388113933%_)
                                                        (_%__match2002720028%_
                                                         _%e1384414063%_
                                                         _%hd1384514067%_
                                                         _%tl1384614070%_
                                                         _%e1384714073%_
                                                         _%hd1384814077%_
                                                         _%tl1384914080%_
                                                         _%e1386114017%_
                                                         _%hd1386214021%_
                                                         _%tl1386314024%_
                                                         _%__splice1994919950%_
                                                         _%target1387913930%_
                                                         _%tl1388113933%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g1384013893%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1384013893%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl1384914080%_)
                                            (let ((_%__splice1994919950%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl1384914080%_
                                                    '0)))
                                              (let ((_%tl1388113933%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1994919950%_
                                                        '1)))
                                                    (_%target1387913930%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1994919950%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1388113933%_)
                                                    (_%__match2002720028%_
                                                     _%e1384414063%_
                                                     _%hd1384514067%_
                                                     _%tl1384614070%_
                                                     _%e1384714073%_
                                                     _%hd1384814077%_
                                                     _%tl1384914080%_
                                                     _%e1386114017%_
                                                     _%hd1386214021%_
                                                     _%tl1386314024%_
                                                     _%__splice1994919950%_
                                                     _%target1387913930%_
                                                     _%tl1388113933%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1384013893%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g1384013893%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1384013893%_))))))))
              (if (gx#stx-pair? _%__stx1994019941%_)
                  (let ((_%e1384414063%_ (gx#syntax-e _%__stx1994019941%_)))
                    (let ((_%tl1384614070%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1384414063%_)))
                          (_%hd1384514067%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1384414063%_))))
                      (if (gx#stx-pair? _%tl1384614070%_)
                          (let ((_%e1384714073%_
                                 (gx#syntax-e _%tl1384614070%_)))
                            (let ((_%tl1384914080%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1384714073%_)))
                                  (_%hd1384814077%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1384714073%_))))
                              (if (gx#stx-pair? _%tl1384914080%_)
                                  (let ((_%e1385014083%_
                                         (gx#syntax-e _%tl1384914080%_)))
                                    (let ((_%tl1385214090%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1385014083%_)))
                                          (_%hd1385114087%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1385014083%_))))
                                      (if (gx#stx-null? _%tl1385214090%_)
                                          (_%__match1997119972%_
                                           _%e1384414063%_
                                           _%hd1384514067%_
                                           _%tl1384614070%_
                                           _%e1384714073%_
                                           _%hd1384814077%_
                                           _%tl1384914080%_
                                           _%e1385014083%_
                                           _%hd1385114087%_
                                           _%tl1385214090%_)
                                          (if (gx#stx-pair? _%hd1384814077%_)
                                              (let ((_%e1386114017%_
                                                     (gx#syntax-e
                                                      _%hd1384814077%_)))
                                                (let ((_%tl1386314024%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1386114017%_)))
                                                      (_%hd1386214021%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1386114017%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl1384914080%_)
                                                      (let ((_%__splice1994919950%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl1384914080%_
                                                              '0)))
                                                        (let ((_%tl1388113933%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice1994919950%_ '1)))
                      (_%target1387913930%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice1994919950%_ '0))))
                  (if (gx#stx-null? _%tl1388113933%_)
                      (_%__match2002720028%_
                       _%e1384414063%_
                       _%hd1384514067%_
                       _%tl1384614070%_
                       _%e1384714073%_
                       _%hd1384814077%_
                       _%tl1384914080%_
                       _%e1386114017%_
                       _%hd1386214021%_
                       _%tl1386314024%_
                       _%__splice1994919950%_
                       _%target1387913930%_
                       _%tl1388113933%_)
                      (let () (declare (not safe)) (_%g1384013893%_)))))
              (let () (declare (not safe)) (_%g1384013893%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1384013893%_))))))
                                  (if (gx#stx-pair? _%hd1384814077%_)
                                      (let ((_%e1386114017%_
                                             (gx#syntax-e _%hd1384814077%_)))
                                        (let ((_%tl1386314024%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1386114017%_)))
                                              (_%hd1386214021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1386114017%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1384914080%_)
                                              (let ((_%__splice1994919950%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1384914080%_
                                                      '0)))
                                                (let ((_%tl1388113933%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1994919950%_
                                                          '1)))
                                                      (_%target1387913930%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1994919950%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1388113933%_)
                                                      (_%__match2002720028%_
                                                       _%e1384414063%_
                                                       _%hd1384514067%_
                                                       _%tl1384614070%_
                                                       _%e1384714073%_
                                                       _%hd1384814077%_
                                                       _%tl1384914080%_
                                                       _%e1386114017%_
                                                       _%hd1386214021%_
                                                       _%tl1386314024%_
                                                       _%__splice1994919950%_
                                                       _%target1387913930%_
                                                       _%tl1388113933%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1384013893%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1384013893%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1384013893%_))))))
                          (let () (declare (not safe)) (_%g1384013893%_)))))
                  (let () (declare (not safe)) (_%g1384013893%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet|
      (lambda (_%stx14115%_)
        (letrec ((_%let-bind?14118%_
                  (lambda (_%x15027%_)
                    (let* ((_%__stx2003020031%_ _%x15027%_)
                           (_%g1503215051%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2003020031%_))))
                      (let ((_%__kont2003320034%_
                             (lambda (_%g1503415119%_ _%g1503515121%_)
                               (_%let-head?14121%_ _%g1503515121%_)))
                            (_%__kont2003520036%_
                             (lambda (_%g1504215079%_) '#t))
                            (_%__kont2003720038%_ (lambda () '#f)))
                        (if (gx#stx-pair? _%__stx2003020031%_)
                            (let ((_%e1503615099%_
                                   (gx#syntax-e _%__stx2003020031%_)))
                              (let ((_%tl1503815106%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1503615099%_)))
                                    (_%hd1503715103%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1503615099%_))))
                                (if (gx#stx-pair? _%tl1503815106%_)
                                    (let ((_%e1503915109%_
                                           (gx#syntax-e _%tl1503815106%_)))
                                      (let ((_%tl1504115116%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1503915109%_)))
                                            (_%hd1504015113%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1503915109%_))))
                                        (if (gx#stx-null? _%tl1504115116%_)
                                            (_%__kont2003320034%_
                                             _%hd1504015113%_
                                             _%hd1503715103%_)
                                            (_%__kont2003720038%_))))
                                    (if (gx#stx-null? _%tl1503815106%_)
                                        (_%__kont2003520036%_ _%hd1503715103%_)
                                        (_%__kont2003720038%_)))))
                            (_%__kont2003720038%_))))))
                 (_%let-bind14120%_
                  (lambda (_%x14929%_)
                    (let* ((_%__stx2006420065%_ _%x14929%_)
                           (_%g1493314952%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2006420065%_))))
                      (let ((_%__kont2006720068%_
                             (lambda (_%g1493515008%_ _%g1493615010%_)
                               _%x14929%_))
                            (_%__kont2006920070%_
                             (lambda (_%g1494314969%_)
                               (cons (gx#datum->syntax '#f '_)
                                     (cons _%g1494314969%_ '())))))
                        (if (gx#stx-pair? _%__stx2006420065%_)
                            (let ((_%e1493714988%_
                                   (gx#syntax-e _%__stx2006420065%_)))
                              (let ((_%tl1493914995%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1493714988%_)))
                                    (_%hd1493814992%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1493714988%_))))
                                (if (gx#stx-pair? _%tl1493914995%_)
                                    (let ((_%e1494014998%_
                                           (gx#syntax-e _%tl1493914995%_)))
                                      (let ((_%tl1494215005%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1494014998%_)))
                                            (_%hd1494115002%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1494014998%_))))
                                        (if (gx#stx-null? _%tl1494215005%_)
                                            (_%__kont2006720068%_
                                             _%hd1494115002%_
                                             _%hd1493814992%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1493314952%_)))))
                                    (if (gx#stx-null? _%tl1493914995%_)
                                        (_%__kont2006920070%_ _%hd1493814992%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1493314952%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g1493314952%_)))))))
                 (_%let-head?14121%_
                  (lambda (_%x14869%_)
                    (let* ((_%__stx2009620097%_ _%x14869%_)
                           (_%g1487314884%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2009620097%_))))
                      (let ((_%__kont2009920100%_
                             (lambda (_%g1487514912%_)
                               (gx#stx-andmap gx#identifier? _%g1487514912%_)))
                            (_%__kont2010120102%_
                             (lambda () (gx#identifier? _%x14869%_))))
                        (if (gx#stx-pair? _%__stx2009620097%_)
                            (let ((_%e1487614902%_
                                   (gx#syntax-e _%__stx2009620097%_)))
                              (let ((_%tl1487814909%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1487614902%_)))
                                    (_%hd1487714906%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1487614902%_))))
                                (if (gx#identifier? _%hd1487714906%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g21071_|
                                         _%hd1487714906%_)
                                        (_%__kont2009920100%_ _%tl1487814909%_)
                                        (_%__kont2010120102%_))
                                    (_%__kont2010120102%_))))
                            (_%__kont2010120102%_))))))
                 (_%let-head14122%_
                  (lambda (_%x14809%_)
                    (let* ((_%__stx2011620117%_ _%x14809%_)
                           (_%g1481314824%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2011620117%_))))
                      (let ((_%__kont2011920120%_
                             (lambda (_%g1481514852%_) _%g1481514852%_))
                            (_%__kont2012120122%_
                             (lambda () (list _%x14809%_))))
                        (if (gx#stx-pair? _%__stx2011620117%_)
                            (let ((_%e1481614842%_
                                   (gx#syntax-e _%__stx2011620117%_)))
                              (let ((_%tl1481814849%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1481614842%_)))
                                    (_%hd1481714846%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1481614842%_))))
                                (if (gx#identifier? _%hd1481714846%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g21072_|
                                         _%hd1481714846%_)
                                        (_%__kont2011920120%_ _%tl1481814849%_)
                                        (_%__kont2012120122%_))
                                    (_%__kont2012120122%_))))
                            (_%__kont2012120122%_)))))))
          (let* ((_%__stx2013620137%_ _%stx14115%_)
                 (_%g1412614198%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2013620137%_))))
            (let ((_%__kont2013920140%_
                   (lambda (_%g1412814782%_
                            _%g1412914784%_
                            _%g1413014785%_
                            _%g1413114786%_)
                     (cons _%g1413114786%_
                           (cons (cons (cons _%g1413014785%_
                                             (cons _%g1412914784%_ '()))
                                       '())
                                 _%g1412814782%_))))
                  (_%__kont2014120142%_
                   (lambda (_%g1414414704%_ _%g1414514706%_)
                     (cons (gx#datum->syntax '#f 'and)
                           (cons _%g1414514706%_
                                 (cons (cons (gx#datum->syntax '#f 'let)
                                             (cons '()
                                                   (foldr (lambda (_%g1472614729%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1472714732%_)
                    (cons _%g1472614729%_ _%g1472714732%_))
                  '()
                  _%g1414414704%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                  (_%__kont2014520146%_
                   (lambda (_%g1416714281%_ _%g1416814283%_)
                     (let* ((_%g1431414340%_
                             (lambda (_%g1431514336%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g1431514336%_)))
                            (_%g1431314617%_
                             (lambda (_%g1431514344%_)
                               (if (gx#stx-pair/null? _%g1431514344%_)
                                   (let ((_g21073_
                                          (gx#syntax-split-splice
                                           _%g1431514344%_
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
                                       (let ((_%target1431814347%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21073_ 0)))
                                             (_%tl1432014350%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21073_ 1))))
                                         (if (gx#stx-null? _%tl1432014350%_)
                                             (letrec ((_%loop1432114353%_
                                                       (lambda (_%hd1431914357%_
                                                                _%e1432514360%_
                                                                _%hd1432614361%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1431914357%_)
                                                             (let ((_%e1432214363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1431914357%_)))
                       (let ((_%lp-hd1432314367%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1432214363%_)))
                             (_%lp-tl1432414370%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1432214363%_))))
                         (if (gx#stx-pair? _%lp-hd1432314367%_)
                             (let ((_%e1432914373%_
                                    (gx#syntax-e _%lp-hd1432314367%_)))
                               (let ((_%hd1433014377%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1432914373%_)))
                                     (_%tl1433114380%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1432914373%_))))
                                 (if (gx#stx-pair? _%tl1433114380%_)
                                     (let ((_%e1433214383%_
                                            (gx#syntax-e _%tl1433114380%_)))
                                       (let ((_%hd1433314387%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1433214383%_)))
                                             (_%tl1433414390%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1433214383%_))))
                                         (if (gx#stx-null? _%tl1433414390%_)
                                             (_%loop1432114353%_
                                              _%lp-tl1432414370%_
                                              (cons _%hd1433314387%_
                                                    _%e1432514360%_)
                                              (cons _%hd1433014377%_
                                                    _%hd1432614361%_))
                                             (_%g1431414340%_
                                              _%g1431514344%_))))
                                     (_%g1431414340%_ _%g1431514344%_))))
                             (_%g1431414340%_ _%g1431514344%_))))
                     (let ((_%e1432714393%_ (reverse _%e1432514360%_))
                           (_%hd1432814395%_ (reverse _%hd1432614361%_)))
                       ((lambda (_%g1431614397%_ _%g1431714399%_)
                          (let* ((_%g1441514432%_
                                  (lambda (_%g1441614428%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1441614428%_)))
                                 (_%g1441414605%_
                                  (lambda (_%g1441614436%_)
                                    (if (gx#stx-pair/null? _%g1441614436%_)
                                        (let ((_g21075_
                                               (gx#syntax-split-splice
                                                _%g1441614436%_
                                                '0)))
                                          (begin
                                            (let ((_g21076_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g21075_)
                                                         (##values-length
                                                          _g21075_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g21076_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g21076_)))
                                            (let ((_%target1441814439%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21075_
                                                      0)))
                                                  (_%tl1442014442%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21075_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl1442014442%_)
                                                  (letrec ((_%loop1442114445%_
                                                            (lambda (_%hd1441914449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$e1442514452%_)
                      (if (gx#stx-pair? _%hd1441914449%_)
                          (let ((_%e1442214454%_
                                 (gx#syntax-e _%hd1441914449%_)))
                            (let ((_%lp-hd1442314458%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1442214454%_)))
                                  (_%lp-tl1442414461%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1442214454%_))))
                              (_%loop1442114445%_
                               _%lp-tl1442414461%_
                               (cons _%lp-hd1442314458%_ _%$e1442514452%_))))
                          (let ((_%$e1442614464%_ (reverse _%$e1442514452%_)))
                            ((lambda (_%g1441714467%_)
                               (let* ((_%g1448414501%_
                                       (lambda (_%g1448514497%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1448514497%_)))
                                      (_%g1448314593%_
                                       (lambda (_%g1448514505%_)
                                         (if (gx#stx-pair/null?
                                              _%g1448514505%_)
                                             (let ((_g21077_
                                                    (gx#syntax-split-splice
                                                     _%g1448514505%_
                                                     '0)))
                                               (begin
                                                 (let ((_g21078_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g21077_)
                                                              (##values-length
                                                               _g21077_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g21078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g21078_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target1448714508%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g21077_
                                                           0)))
                                                       (_%tl1448914511%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g21077_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl1448914511%_)
                                                       (letrec ((_%loop1449014514%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd1448814518%_ _%hd-bind1449414521%_)
                           (if (gx#stx-pair? _%hd1448814518%_)
                               (let ((_%e1449114523%_
                                      (gx#syntax-e _%hd1448814518%_)))
                                 (let ((_%lp-hd1449214527%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1449114523%_)))
                                       (_%lp-tl1449314530%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1449114523%_))))
                                   (_%loop1449014514%_
                                    _%lp-tl1449314530%_
                                    (cons _%lp-hd1449214527%_
                                          _%hd-bind1449414521%_))))
                               (let ((_%hd-bind1449514533%_
                                      (reverse _%hd-bind1449414521%_)))
                                 ((lambda (_%g1448614536%_)
                                    (cons (gx#datum->syntax '#f 'let-values)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%g1431614397%_
                                                   _%g1441714467%_)
                                                  (foldr (lambda (_%g1455414565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1455514568%_
                          _%g1455614570%_)
                   (cons (cons (cons _%g1455514568%_ '())
                               (cons _%g1455414565%_ '()))
                         _%g1455614570%_))
                 '()
                 _%g1431614397%_
                 _%g1441714467%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'and)
                                                            (foldr (lambda (_%g1455714573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1455814576%_)
                             (cons _%g1455714573%_ _%g1455814576%_))
                           (cons (cons (gx#datum->syntax '#f 'let-values)
                                       (cons (begin
                                               (gx#syntax-check-splice-targets
                                                _%g1441714467%_
                                                _%g1448614536%_)
                                               (foldr (lambda (_%g1455914579%_
                                                               _%g1456014582%_
                                                               _%g1456114584%_)
                                                        (cons (cons _%g1456014582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g1455914579%_ '()))
                      _%g1456114584%_))
              '()
              _%g1441714467%_
              _%g1448614536%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (foldr (lambda (_%g1456214587%_
                                                             _%g1456314590%_)
                                                      (cons _%g1456214587%_
                                                            _%g1456314590%_))
                                                    '()
                                                    _%g1416714281%_)))
                                 '())
                           _%g1441714467%_))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%hd-bind1449514533%_))))))
                 (_%loop1449014514%_ _%target1448714508%_ '()))
               (_%g1448414501%_ _%g1448514505%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g1448414501%_
                                              _%g1448514505%_)))))
                                 (_%g1448314593%_
                                  (gx#stx-map
                                   _%let-head14122%_
                                   (foldr (lambda (_%g1459614599%_
                                                   _%g1459714602%_)
                                            (cons _%g1459614599%_
                                                  _%g1459714602%_))
                                          '()
                                          _%g1431714399%_)))))
                             _%$e1442614464%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop1442114445%_
                                                     _%target1441814439%_
                                                     '()))
                                                  (_%g1441514432%_
                                                   _%g1441614436%_)))))
                                        (_%g1441514432%_ _%g1441614436%_)))))
                            (_%g1441414605%_
                             (gx#gentemps
                              (foldr (lambda (_%g1460814611%_ _%g1460914614%_)
                                       (cons _%g1460814611%_ _%g1460914614%_))
                                     '()
                                     _%g1431714399%_)))))
                        _%e1432714393%_
                        _%hd1432814395%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1432114353%_
                                                _%target1431814347%_
                                                '()
                                                '()))
                                             (_%g1431414340%_
                                              _%g1431514344%_)))))
                                   (_%g1431414340%_ _%g1431514344%_)))))
                       (_%g1431314617%_
                        (gx#stx-map
                         _%let-bind14120%_
                         (foldr (lambda (_%g1462014623%_ _%g1462114626%_)
                                  (cons _%g1462014623%_ _%g1462114626%_))
                                '()
                                _%g1416814283%_)))))))
              (let* ((_%__match2023320234%_
                      (lambda (_%e1416914205%_
                               _%hd1417014209%_
                               _%tl1417114212%_
                               _%e1417214215%_
                               _%hd1417314219%_
                               _%tl1417414222%_
                               _%__splice2014720148%_
                               _%target1417514225%_
                               _%tl1417714228%_)
                        (letrec ((_%loop1417814231%_
                                  (lambda (_%hd1417614235%_ _%bind1418214238%_)
                                    (if (gx#stx-pair? _%hd1417614235%_)
                                        (let ((_%e1417914240%_
                                               (gx#syntax-e _%hd1417614235%_)))
                                          (let ((_%lp-tl1418114247%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1417914240%_)))
                                                (_%lp-hd1418014244%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1417914240%_))))
                                            (_%loop1417814231%_
                                             _%lp-tl1418114247%_
                                             (cons _%lp-hd1418014244%_
                                                   _%bind1418214238%_))))
                                        (let ((_%bind1418314250%_
                                               (reverse _%bind1418214238%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl1417414222%_)
                                              (let ((_%__splice2014920150%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1417414222%_
                                                      '0)))
                                                (let ((_%tl1418614256%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2014920150%_
                                                          '1)))
                                                      (_%target1418414253%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2014920150%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1418614256%_)
                                                      (letrec ((_%loop1418714259%_
                                                                (lambda (_%hd1418514263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body1419114266%_)
                          (if (gx#stx-pair? _%hd1418514263%_)
                              (let ((_%e1418814268%_
                                     (gx#syntax-e _%hd1418514263%_)))
                                (let ((_%lp-tl1419014275%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1418814268%_)))
                                      (_%lp-hd1418914272%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1418814268%_))))
                                  (_%loop1418714259%_
                                   _%lp-tl1419014275%_
                                   (cons _%lp-hd1418914272%_
                                         _%body1419114266%_))))
                              (let ((_%body1419214278%_
                                     (reverse _%body1419114266%_)))
                                (let ((_%g1416714281%_ _%body1419214278%_)
                                      (_%g1416814283%_ _%bind1418314250%_))
                                  (if (gx#stx-andmap
                                       _%let-bind?14118%_
                                       (foldr (lambda (_%g1430514308%_
                                                       _%g1430614311%_)
                                                (cons _%g1430514308%_
                                                      _%g1430614311%_))
                                              '()
                                              _%g1416814283%_))
                                      (_%__kont2014520146%_
                                       _%g1416714281%_
                                       _%g1416814283%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g1412614198%_)))))))))
                (_%loop1418714259%_ _%target1418414253%_ '()))
              (let () (declare (not safe)) (_%g1412614198%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1412614198%_))))))))
                          (_%loop1417814231%_ _%target1417514225%_ '()))))
                     (_%__match2021320214%_
                      (lambda (_%e1414614636%_
                               _%hd1414714640%_
                               _%tl1414814643%_
                               _%e1414914646%_
                               _%hd1415014650%_
                               _%tl1415114653%_
                               _%e1415214656%_
                               _%hd1415314660%_
                               _%tl1415414663%_
                               _%e1415514666%_
                               _%hd1415614670%_
                               _%tl1415714673%_
                               _%__splice2014320144%_
                               _%target1415814676%_
                               _%tl1416014679%_)
                        (letrec ((_%loop1416114682%_
                                  (lambda (_%hd1415914686%_ _%body1416514689%_)
                                    (if (gx#stx-pair? _%hd1415914686%_)
                                        (let ((_%e1416214691%_
                                               (gx#syntax-e _%hd1415914686%_)))
                                          (let ((_%lp-tl1416414698%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1416214691%_)))
                                                (_%lp-hd1416314695%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1416214691%_))))
                                            (_%loop1416114682%_
                                             _%lp-tl1416414698%_
                                             (cons _%lp-hd1416314695%_
                                                   _%body1416514689%_))))
                                        (let ((_%body1416614701%_
                                               (reverse _%body1416514689%_)))
                                          (_%__kont2014120142%_
                                           _%body1416614701%_
                                           _%hd1415614670%_))))))
                          (_%loop1416114682%_ _%target1415814676%_ '()))))
                     (_%__match2017720178%_
                      (lambda (_%e1413214742%_
                               _%hd1413314746%_
                               _%tl1413414749%_
                               _%e1413514752%_
                               _%hd1413614756%_
                               _%tl1413714759%_
                               _%e1413814762%_
                               _%hd1413914766%_
                               _%tl1414014769%_
                               _%e1414114772%_
                               _%hd1414214776%_
                               _%tl1414314779%_)
                        (let ((_%g1412814782%_ _%tl1413714759%_)
                              (_%g1412914784%_ _%hd1414214776%_)
                              (_%g1413014785%_ _%hd1413914766%_)
                              (_%g1413114786%_ _%hd1413314746%_))
                          (if (_%let-head?14121%_ _%g1413014785%_)
                              (_%__kont2013920140%_
                               _%g1412814782%_
                               _%g1412914784%_
                               _%g1413014785%_
                               _%g1413114786%_)
                              (if (gx#stx-pair? _%hd1413914766%_)
                                  (let ((_%e1415514666%_
                                         (gx#syntax-e _%hd1413914766%_)))
                                    (let ((_%tl1415714673%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1415514666%_)))
                                          (_%hd1415614670%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1415514666%_))))
                                      (if (gx#stx-pair/null? _%hd1413614756%_)
                                          (let ((_%__splice2014720148%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd1413614756%_
                                                  '0)))
                                            (let ((_%tl1417714228%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2014720148%_
                                                      '1)))
                                                  (_%target1417514225%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2014720148%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1417714228%_)
                                                  (_%__match2023320234%_
                                                   _%e1413214742%_
                                                   _%hd1413314746%_
                                                   _%tl1413414749%_
                                                   _%e1413514752%_
                                                   _%hd1413614756%_
                                                   _%tl1413714759%_
                                                   _%__splice2014720148%_
                                                   _%target1417514225%_
                                                   _%tl1417714228%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1412614198%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1412614198%_)))))
                                  (if (gx#stx-pair/null? _%hd1413614756%_)
                                      (let ((_%__splice2014720148%_
                                             (gx#syntax-split-splice->vector
                                              _%hd1413614756%_
                                              '0)))
                                        (let ((_%tl1417714228%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2014720148%_
                                                  '1)))
                                              (_%target1417514225%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2014720148%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1417714228%_)
                                              (_%__match2023320234%_
                                               _%e1413214742%_
                                               _%hd1413314746%_
                                               _%tl1413414749%_
                                               _%e1413514752%_
                                               _%hd1413614756%_
                                               _%tl1413714759%_
                                               _%__splice2014720148%_
                                               _%target1417514225%_
                                               _%tl1417714228%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1412614198%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1412614198%_)))))))))
                (if (gx#stx-pair? _%__stx2013620137%_)
                    (let ((_%e1413214742%_ (gx#syntax-e _%__stx2013620137%_)))
                      (let ((_%tl1413414749%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1413214742%_)))
                            (_%hd1413314746%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1413214742%_))))
                        (if (gx#stx-pair? _%tl1413414749%_)
                            (let ((_%e1413514752%_
                                   (gx#syntax-e _%tl1413414749%_)))
                              (let ((_%tl1413714759%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1413514752%_)))
                                    (_%hd1413614756%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1413514752%_))))
                                (if (gx#stx-pair? _%hd1413614756%_)
                                    (let ((_%e1413814762%_
                                           (gx#syntax-e _%hd1413614756%_)))
                                      (let ((_%tl1414014769%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1413814762%_)))
                                            (_%hd1413914766%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1413814762%_))))
                                        (if (gx#stx-pair? _%tl1414014769%_)
                                            (let ((_%e1414114772%_
                                                   (gx#syntax-e
                                                    _%tl1414014769%_)))
                                              (let ((_%tl1414314779%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1414114772%_)))
                                                    (_%hd1414214776%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1414114772%_))))
                                                (if (gx#stx-null?
                                                     _%tl1414314779%_)
                                                    (_%__match2017720178%_
                                                     _%e1413214742%_
                                                     _%hd1413314746%_
                                                     _%tl1413414749%_
                                                     _%e1413514752%_
                                                     _%hd1413614756%_
                                                     _%tl1413714759%_
                                                     _%e1413814762%_
                                                     _%hd1413914766%_
                                                     _%tl1414014769%_
                                                     _%e1414114772%_
                                                     _%hd1414214776%_
                                                     _%tl1414314779%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1413914766%_)
                                                        (let ((_%e1415514666%_
                                                               (gx#syntax-e
                                                                _%hd1413914766%_)))
                                                          (let ((_%tl1415714673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e1415514666%_)))
                        (_%hd1415614670%_
                         (let ()
                           (declare (not safe))
                           (##car _%e1415514666%_))))
                    (if (gx#stx-pair/null? _%hd1413614756%_)
                        (let ((_%__splice2014720148%_
                               (gx#syntax-split-splice->vector
                                _%hd1413614756%_
                                '0)))
                          (let ((_%tl1417714228%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2014720148%_ '1)))
                                (_%target1417514225%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2014720148%_ '0))))
                            (if (gx#stx-null? _%tl1417714228%_)
                                (_%__match2023320234%_
                                 _%e1413214742%_
                                 _%hd1413314746%_
                                 _%tl1413414749%_
                                 _%e1413514752%_
                                 _%hd1413614756%_
                                 _%tl1413714759%_
                                 _%__splice2014720148%_
                                 _%target1417514225%_
                                 _%tl1417714228%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1412614198%_)))))
                        (let () (declare (not safe)) (_%g1412614198%_)))))
                (if (gx#stx-pair/null? _%hd1413614756%_)
                    (let ((_%__splice2014720148%_
                           (gx#syntax-split-splice->vector
                            _%hd1413614756%_
                            '0)))
                      (let ((_%tl1417714228%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2014720148%_ '1)))
                            (_%target1417514225%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2014720148%_ '0))))
                        (if (gx#stx-null? _%tl1417714228%_)
                            (_%__match2023320234%_
                             _%e1413214742%_
                             _%hd1413314746%_
                             _%tl1413414749%_
                             _%e1413514752%_
                             _%hd1413614756%_
                             _%tl1413714759%_
                             _%__splice2014720148%_
                             _%target1417514225%_
                             _%tl1417714228%_)
                            (let () (declare (not safe)) (_%g1412614198%_)))))
                    (let () (declare (not safe)) (_%g1412614198%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%hd1413914766%_)
                                                (let ((_%e1415514666%_
                                                       (gx#syntax-e
                                                        _%hd1413914766%_)))
                                                  (let ((_%tl1415714673%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1415514666%_)))
                                                        (_%hd1415614670%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1415514666%_))))
                                                    (if (gx#stx-null?
                                                         _%tl1415714673%_)
                                                        (if (gx#stx-null?
                                                             _%tl1414014769%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl1413714759%_)
                        (let ((_%__splice2014320144%_
                               (gx#syntax-split-splice->vector
                                _%tl1413714759%_
                                '0)))
                          (let ((_%tl1416014679%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2014320144%_ '1)))
                                (_%target1415814676%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2014320144%_ '0))))
                            (if (gx#stx-null? _%tl1416014679%_)
                                (_%__match2021320214%_
                                 _%e1413214742%_
                                 _%hd1413314746%_
                                 _%tl1413414749%_
                                 _%e1413514752%_
                                 _%hd1413614756%_
                                 _%tl1413714759%_
                                 _%e1413814762%_
                                 _%hd1413914766%_
                                 _%tl1414014769%_
                                 _%e1415514666%_
                                 _%hd1415614670%_
                                 _%tl1415714673%_
                                 _%__splice2014320144%_
                                 _%target1415814676%_
                                 _%tl1416014679%_)
                                (if (gx#stx-pair/null? _%hd1413614756%_)
                                    (let ((_%__splice2014720148%_
                                           (gx#syntax-split-splice->vector
                                            _%hd1413614756%_
                                            '0)))
                                      (let ((_%tl1417714228%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2014720148%_
                                                '1)))
                                            (_%target1417514225%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2014720148%_
                                                '0))))
                                        (if (gx#stx-null? _%tl1417714228%_)
                                            (_%__match2023320234%_
                                             _%e1413214742%_
                                             _%hd1413314746%_
                                             _%tl1413414749%_
                                             _%e1413514752%_
                                             _%hd1413614756%_
                                             _%tl1413714759%_
                                             _%__splice2014720148%_
                                             _%target1417514225%_
                                             _%tl1417714228%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1412614198%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g1412614198%_))))))
                        (if (gx#stx-pair/null? _%hd1413614756%_)
                            (let ((_%__splice2014720148%_
                                   (gx#syntax-split-splice->vector
                                    _%hd1413614756%_
                                    '0)))
                              (let ((_%tl1417714228%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2014720148%_
                                        '1)))
                                    (_%target1417514225%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2014720148%_
                                        '0))))
                                (if (gx#stx-null? _%tl1417714228%_)
                                    (_%__match2023320234%_
                                     _%e1413214742%_
                                     _%hd1413314746%_
                                     _%tl1413414749%_
                                     _%e1413514752%_
                                     _%hd1413614756%_
                                     _%tl1413714759%_
                                     _%__splice2014720148%_
                                     _%target1417514225%_
                                     _%tl1417714228%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g1412614198%_)))))
                            (let () (declare (not safe)) (_%g1412614198%_))))
                    (if (gx#stx-pair/null? _%hd1413614756%_)
                        (let ((_%__splice2014720148%_
                               (gx#syntax-split-splice->vector
                                _%hd1413614756%_
                                '0)))
                          (let ((_%tl1417714228%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2014720148%_ '1)))
                                (_%target1417514225%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2014720148%_ '0))))
                            (if (gx#stx-null? _%tl1417714228%_)
                                (_%__match2023320234%_
                                 _%e1413214742%_
                                 _%hd1413314746%_
                                 _%tl1413414749%_
                                 _%e1413514752%_
                                 _%hd1413614756%_
                                 _%tl1413714759%_
                                 _%__splice2014720148%_
                                 _%target1417514225%_
                                 _%tl1417714228%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1412614198%_)))))
                        (let () (declare (not safe)) (_%g1412614198%_))))
                (if (gx#stx-pair/null? _%hd1413614756%_)
                    (let ((_%__splice2014720148%_
                           (gx#syntax-split-splice->vector
                            _%hd1413614756%_
                            '0)))
                      (let ((_%tl1417714228%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2014720148%_ '1)))
                            (_%target1417514225%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2014720148%_ '0))))
                        (if (gx#stx-null? _%tl1417714228%_)
                            (_%__match2023320234%_
                             _%e1413214742%_
                             _%hd1413314746%_
                             _%tl1413414749%_
                             _%e1413514752%_
                             _%hd1413614756%_
                             _%tl1413714759%_
                             _%__splice2014720148%_
                             _%target1417514225%_
                             _%tl1417714228%_)
                            (let () (declare (not safe)) (_%g1412614198%_)))))
                    (let () (declare (not safe)) (_%g1412614198%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%hd1413614756%_)
                                                    (let ((_%__splice2014720148%_
                                                           (gx#syntax-split-splice->vector
                                                            _%hd1413614756%_
                                                            '0)))
                                                      (let ((_%tl1417714228%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice2014720148%_ '1)))
                    (_%target1417514225%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice2014720148%_ '0))))
                (if (gx#stx-null? _%tl1417714228%_)
                    (_%__match2023320234%_
                     _%e1413214742%_
                     _%hd1413314746%_
                     _%tl1413414749%_
                     _%e1413514752%_
                     _%hd1413614756%_
                     _%tl1413714759%_
                     _%__splice2014720148%_
                     _%target1417514225%_
                     _%tl1417714228%_)
                    (let () (declare (not safe)) (_%g1412614198%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1412614198%_)))))))
                                    (if (gx#stx-pair/null? _%hd1413614756%_)
                                        (let ((_%__splice2014720148%_
                                               (gx#syntax-split-splice->vector
                                                _%hd1413614756%_
                                                '0)))
                                          (let ((_%tl1417714228%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2014720148%_
                                                    '1)))
                                                (_%target1417514225%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2014720148%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1417714228%_)
                                                (_%__match2023320234%_
                                                 _%e1413214742%_
                                                 _%hd1413314746%_
                                                 _%tl1413414749%_
                                                 _%e1413514752%_
                                                 _%hd1413614756%_
                                                 _%tl1413714759%_
                                                 _%__splice2014720148%_
                                                 _%target1417514225%_
                                                 _%tl1417714228%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1412614198%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g1412614198%_))))))
                            (let () (declare (not safe)) (_%g1412614198%_)))))
                    (let () (declare (not safe)) (_%g1412614198%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet*|
      (lambda (_%$stx15144%_)
        (let* ((_%__stx2023620237%_ _%$stx15144%_)
               (_%g1515015201%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2023620237%_))))
          (let ((_%__kont2023920240%_ (lambda () '#t))
                (_%__kont2024120242%_
                 (lambda (_%g1515815355%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g1537115374%_ _%g1537215377%_)
                                        (cons _%g1537115374%_ _%g1537215377%_))
                                      '()
                                      _%g1515815355%_)))))
                (_%__kont2024520246%_
                 (lambda (_%g1517415266%_
                          _%g1517515268%_
                          _%g1517615269%_
                          _%g1517715270%_)
                   (cons (gx#datum->syntax '#f 'alet)
                         (cons (cons _%g1517615269%_ '())
                               (cons (cons _%g1517715270%_
                                           (cons _%g1517515268%_
                                                 (foldr (lambda (_%g1529115294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1529215297%_)
                  (cons _%g1529115294%_ _%g1529215297%_))
                '()
                _%g1517415266%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match2031320314%_
                    (lambda (_%e1517815208%_
                             _%hd1517915212%_
                             _%tl1518015215%_
                             _%e1518115218%_
                             _%hd1518215222%_
                             _%tl1518315225%_
                             _%e1518415228%_
                             _%hd1518515232%_
                             _%tl1518615235%_
                             _%__splice2024720248%_
                             _%target1518715238%_
                             _%tl1518915241%_)
                      (letrec ((_%loop1519015244%_
                                (lambda (_%hd1518815248%_ _%body1519415251%_)
                                  (if (gx#stx-pair? _%hd1518815248%_)
                                      (let ((_%e1519115253%_
                                             (gx#syntax-e _%hd1518815248%_)))
                                        (let ((_%lp-tl1519315260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1519115253%_)))
                                              (_%lp-hd1519215257%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1519115253%_))))
                                          (_%loop1519015244%_
                                           _%lp-tl1519315260%_
                                           (cons _%lp-hd1519215257%_
                                                 _%body1519415251%_))))
                                      (let ((_%body1519515263%_
                                             (reverse _%body1519415251%_)))
                                        (_%__kont2024520246%_
                                         _%body1519515263%_
                                         _%tl1518615235%_
                                         _%hd1518515232%_
                                         _%hd1517915212%_))))))
                        (_%loop1519015244%_ _%target1518715238%_ '()))))
                   (_%__match2028720288%_
                    (lambda (_%e1515915307%_
                             _%hd1516015311%_
                             _%tl1516115314%_
                             _%e1516215317%_
                             _%hd1516315321%_
                             _%tl1516415324%_
                             _%__splice2024320244%_
                             _%target1516515327%_
                             _%tl1516715330%_)
                      (letrec ((_%loop1516815333%_
                                (lambda (_%hd1516615337%_ _%body1517215340%_)
                                  (if (gx#stx-pair? _%hd1516615337%_)
                                      (let ((_%e1516915342%_
                                             (gx#syntax-e _%hd1516615337%_)))
                                        (let ((_%lp-tl1517115349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1516915342%_)))
                                              (_%lp-hd1517015346%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1516915342%_))))
                                          (_%loop1516815333%_
                                           _%lp-tl1517115349%_
                                           (cons _%lp-hd1517015346%_
                                                 _%body1517215340%_))))
                                      (let ((_%body1517315352%_
                                             (reverse _%body1517215340%_)))
                                        (_%__kont2024120242%_
                                         _%body1517315352%_))))))
                        (_%loop1516815333%_ _%target1516515327%_ '())))))
              (if (gx#stx-pair? _%__stx2023620237%_)
                  (let ((_%e1515215387%_ (gx#syntax-e _%__stx2023620237%_)))
                    (let ((_%tl1515415394%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1515215387%_)))
                          (_%hd1515315391%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1515215387%_))))
                      (if (gx#stx-pair? _%tl1515415394%_)
                          (let ((_%e1515515397%_
                                 (gx#syntax-e _%tl1515415394%_)))
                            (let ((_%tl1515715404%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1515515397%_)))
                                  (_%hd1515615401%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1515515397%_))))
                              (if (gx#stx-null? _%hd1515615401%_)
                                  (if (gx#stx-null? _%tl1515715404%_)
                                      (_%__kont2023920240%_)
                                      (if (gx#stx-pair/null? _%tl1515715404%_)
                                          (let ((_%__splice2024320244%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1515715404%_
                                                  '0)))
                                            (let ((_%tl1516715330%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2024320244%_
                                                      '1)))
                                                  (_%target1516515327%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2024320244%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1516715330%_)
                                                  (_%__match2028720288%_
                                                   _%e1515215387%_
                                                   _%hd1515315391%_
                                                   _%tl1515415394%_
                                                   _%e1515515397%_
                                                   _%hd1515615401%_
                                                   _%tl1515715404%_
                                                   _%__splice2024320244%_
                                                   _%target1516515327%_
                                                   _%tl1516715330%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1515015201%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1515015201%_))))
                                  (if (gx#stx-pair? _%hd1515615401%_)
                                      (let ((_%e1518415228%_
                                             (gx#syntax-e _%hd1515615401%_)))
                                        (let ((_%tl1518615235%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1518415228%_)))
                                              (_%hd1518515232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1518415228%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1515715404%_)
                                              (let ((_%__splice2024720248%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1515715404%_
                                                      '0)))
                                                (let ((_%tl1518915241%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2024720248%_
                                                          '1)))
                                                      (_%target1518715238%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2024720248%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1518915241%_)
                                                      (_%__match2031320314%_
                                                       _%e1515215387%_
                                                       _%hd1515315391%_
                                                       _%tl1515415394%_
                                                       _%e1515515397%_
                                                       _%hd1515615401%_
                                                       _%tl1515715404%_
                                                       _%e1518415228%_
                                                       _%hd1518515232%_
                                                       _%tl1518615235%_
                                                       _%__splice2024720248%_
                                                       _%target1518715238%_
                                                       _%tl1518915241%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1515015201%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1515015201%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1515015201%_))))))
                          (let () (declare (not safe)) (_%g1515015201%_)))))
                  (let () (declare (not safe)) (_%g1515015201%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#@list|
      (lambda (_%$stx15417%_)
        (let* ((_%__stx2031620317%_ _%$stx15417%_)
               (_%g1542815506%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2031620317%_))))
          (let ((_%__kont2031920320%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'quote) (cons '() '()))))
                (_%__kont2032120322%_
                 (lambda (_%g1543315837%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1543315837%_ '()))))
                (_%__kont2032320324%_
                 (lambda (_%g1544315785%_)
                   (cons (gx#datum->syntax '#f 'quasiquote)
                         (cons _%g1544315785%_ '()))))
                (_%__kont2032520326%_
                 (lambda (_%g1545315732%_) _%g1545315732%_))
                (_%__kont2032720328%_
                 (lambda (_%g1546415674%_ _%g1546515676%_) _%g1546515676%_))
                (_%__kont2032920330%_
                 (lambda (_%g1547515616%_
                          _%g1547615618%_
                          _%g1547715619%_
                          _%g1547815620%_)
                   (cons (gx#datum->syntax '#f 'foldr)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (cons _%g1547815620%_ _%g1547515616%_)
                                     (cons _%g1547715619%_ '()))))))
                (_%__kont2033120332%_
                 (lambda (_%g1548815562%_ _%g1548915564%_ _%g1549015565%_)
                   (cons (gx#datum->syntax '#f 'cons)
                         (cons _%g1548915564%_
                               (cons (cons _%g1549015565%_ _%g1548815562%_)
                                     '())))))
                (_%__kont2033320334%_
                 (lambda (_%g1549715523%_) _%g1549715523%_)))
            (let* ((_%__match2045520456%_
                    (lambda (_%e1547915586%_
                             _%hd1548015590%_
                             _%tl1548115593%_
                             _%e1548215596%_
                             _%hd1548315600%_
                             _%tl1548415603%_
                             _%e1548515606%_
                             _%hd1548615610%_
                             _%tl1548715613%_)
                      (let ((_%g1547515616%_ _%tl1548715613%_)
                            (_%g1547615618%_ _%hd1548615610%_)
                            (_%g1547715619%_ _%hd1548315600%_)
                            (_%g1547815620%_ _%hd1548015590%_))
                        (if (gx#ellipsis? _%g1547615618%_)
                            (_%__kont2032920330%_
                             _%g1547515616%_
                             _%g1547615618%_
                             _%g1547715619%_
                             _%g1547815620%_)
                            (_%__kont2033120332%_
                             _%tl1548415603%_
                             _%hd1548315600%_
                             _%hd1548015590%_)))))
                   (_%__match2043720438%_
                    (lambda (_%e1546615644%_
                             _%hd1546715648%_
                             _%tl1546815651%_
                             _%e1546915654%_
                             _%hd1547015658%_
                             _%tl1547115661%_
                             _%e1547215664%_
                             _%hd1547315668%_
                             _%tl1547415671%_)
                      (let ((_%g1546415674%_ _%hd1547315668%_)
                            (_%g1546515676%_ _%hd1547015658%_))
                        (if (gx#ellipsis? _%g1546415674%_)
                            (_%__kont2032720328%_
                             _%g1546415674%_
                             _%g1546515676%_)
                            (_%__match2045520456%_
                             _%e1546615644%_
                             _%hd1546715648%_
                             _%tl1546815651%_
                             _%e1546915654%_
                             _%hd1547015658%_
                             _%tl1547115661%_
                             _%e1547215664%_
                             _%hd1547315668%_
                             _%tl1547415671%_))))))
              (if (gx#stx-pair? _%__stx2031620317%_)
                  (let ((_%e1543015859%_ (gx#syntax-e _%__stx2031620317%_)))
                    (let ((_%tl1543215866%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1543015859%_)))
                          (_%hd1543115863%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1543015859%_))))
                      (if (gx#stx-null? _%tl1543215866%_)
                          (_%__kont2031920320%_)
                          (if (gx#stx-pair? _%tl1543215866%_)
                              (let ((_%e1543715817%_
                                     (gx#syntax-e _%tl1543215866%_)))
                                (let ((_%tl1543915824%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1543715817%_)))
                                      (_%hd1543815821%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1543715817%_))))
                                  (if (gx#identifier? _%hd1543815821%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21079_|
                                           _%hd1543815821%_)
                                          (if (gx#stx-pair? _%tl1543915824%_)
                                              (let ((_%e1544015827%_
                                                     (gx#syntax-e
                                                      _%tl1543915824%_)))
                                                (let ((_%tl1544215834%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1544015827%_)))
                                                      (_%hd1544115831%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1544015827%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1544215834%_)
                                                      (_%__kont2032120322%_
                                                       _%hd1544115831%_)
                                                      (_%__match2045520456%_
                                                       _%e1543015859%_
                                                       _%hd1543115863%_
                                                       _%tl1543215866%_
                                                       _%e1543715817%_
                                                       _%hd1543815821%_
                                                       _%tl1543915824%_
                                                       _%e1544015827%_
                                                       _%hd1544115831%_
                                                       _%tl1544215834%_))))
                                              (_%__kont2033120332%_
                                               _%tl1543915824%_
                                               _%hd1543815821%_
                                               _%hd1543115863%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21080_|
                                               _%hd1543815821%_)
                                              (if (gx#stx-pair?
                                                   _%tl1543915824%_)
                                                  (let ((_%e1545015775%_
                                                         (gx#syntax-e
                                                          _%tl1543915824%_)))
                                                    (let ((_%tl1545215782%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1545015775%_)))
                                                          (_%hd1545115779%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1545015775%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1545215782%_)
                                                          (_%__kont2032320324%_
                                                           _%hd1545115779%_)
                                                          (_%__match2045520456%_
                                                           _%e1543015859%_
                                                           _%hd1543115863%_
                                                           _%tl1543215866%_
                                                           _%e1543715817%_
                                                           _%hd1543815821%_
                                                           _%tl1543915824%_
                                                           _%e1545015775%_
                                                           _%hd1545115779%_
                                                           _%tl1545215782%_))))
                                                  (_%__kont2033120332%_
                                                   _%tl1543915824%_
                                                   _%hd1543815821%_
                                                   _%hd1543115863%_))
                                              (if (gx#stx-pair?
                                                   _%tl1543915824%_)
                                                  (let ((_%e1547215664%_
                                                         (gx#syntax-e
                                                          _%tl1543915824%_)))
                                                    (let ((_%tl1547415671%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1547215664%_)))
                                                          (_%hd1547315668%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1547215664%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1547415671%_)
                                                          (_%__match2043720438%_
                                                           _%e1543015859%_
                                                           _%hd1543115863%_
                                                           _%tl1543215866%_
                                                           _%e1543715817%_
                                                           _%hd1543815821%_
                                                           _%tl1543915824%_
                                                           _%e1547215664%_
                                                           _%hd1547315668%_
                                                           _%tl1547415671%_)
                                                          (_%__match2045520456%_
                                                           _%e1543015859%_
                                                           _%hd1543115863%_
                                                           _%tl1543215866%_
                                                           _%e1543715817%_
                                                           _%hd1543815821%_
                                                           _%tl1543915824%_
                                                           _%e1547215664%_
                                                           _%hd1547315668%_
                                                           _%tl1547415671%_))))
                                                  (_%__kont2033120332%_
                                                   _%tl1543915824%_
                                                   _%hd1543815821%_
                                                   _%hd1543115863%_))))
                                      (if (gx#stx-datum? _%hd1543815821%_)
                                          (let ((_%e1546015718%_
                                                 (gx#stx-e _%hd1543815821%_)))
                                            (if (equal? _%e1546015718%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl1543915824%_)
                                                    (let ((_%e1546115722%_
                                                           (gx#syntax-e
                                                            _%tl1543915824%_)))
                                                      (let ((_%tl1546315729%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1546115722%_)))
                    (_%hd1546215726%_
                     (let () (declare (not safe)) (##car _%e1546115722%_))))
                (if (gx#stx-null? _%tl1546315729%_)
                    (_%__kont2032520326%_ _%hd1546215726%_)
                    (_%__match2045520456%_
                     _%e1543015859%_
                     _%hd1543115863%_
                     _%tl1543215866%_
                     _%e1543715817%_
                     _%hd1543815821%_
                     _%tl1543915824%_
                     _%e1546115722%_
                     _%hd1546215726%_
                     _%tl1546315729%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2033120332%_
                                                     _%tl1543915824%_
                                                     _%hd1543815821%_
                                                     _%hd1543115863%_))
                                                (if (gx#stx-pair?
                                                     _%tl1543915824%_)
                                                    (let ((_%e1547215664%_
                                                           (gx#syntax-e
                                                            _%tl1543915824%_)))
                                                      (let ((_%tl1547415671%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1547215664%_)))
                    (_%hd1547315668%_
                     (let () (declare (not safe)) (##car _%e1547215664%_))))
                (if (gx#stx-null? _%tl1547415671%_)
                    (_%__match2043720438%_
                     _%e1543015859%_
                     _%hd1543115863%_
                     _%tl1543215866%_
                     _%e1543715817%_
                     _%hd1543815821%_
                     _%tl1543915824%_
                     _%e1547215664%_
                     _%hd1547315668%_
                     _%tl1547415671%_)
                    (_%__match2045520456%_
                     _%e1543015859%_
                     _%hd1543115863%_
                     _%tl1543215866%_
                     _%e1543715817%_
                     _%hd1543815821%_
                     _%tl1543915824%_
                     _%e1547215664%_
                     _%hd1547315668%_
                     _%tl1547415671%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2033120332%_
                                                     _%tl1543915824%_
                                                     _%hd1543815821%_
                                                     _%hd1543115863%_))))
                                          (if (gx#stx-pair? _%tl1543915824%_)
                                              (let ((_%e1547215664%_
                                                     (gx#syntax-e
                                                      _%tl1543915824%_)))
                                                (let ((_%tl1547415671%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1547215664%_)))
                                                      (_%hd1547315668%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1547215664%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1547415671%_)
                                                      (_%__match2043720438%_
                                                       _%e1543015859%_
                                                       _%hd1543115863%_
                                                       _%tl1543215866%_
                                                       _%e1543715817%_
                                                       _%hd1543815821%_
                                                       _%tl1543915824%_
                                                       _%e1547215664%_
                                                       _%hd1547315668%_
                                                       _%tl1547415671%_)
                                                      (_%__match2045520456%_
                                                       _%e1543015859%_
                                                       _%hd1543115863%_
                                                       _%tl1543215866%_
                                                       _%e1543715817%_
                                                       _%hd1543815821%_
                                                       _%tl1543915824%_
                                                       _%e1547215664%_
                                                       _%hd1547315668%_
                                                       _%tl1547415671%_))))
                                              (_%__kont2033120332%_
                                               _%tl1543915824%_
                                               _%hd1543815821%_
                                               _%hd1543115863%_))))))
                              (_%__kont2033320334%_ _%tl1543215866%_)))))
                  (let () (declare (not safe)) (_%g1542815506%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#quasiquote|
      (lambda (_%stx15877%_)
        (letrec ((_%simple-quote?15880%_
                  (lambda (_%e16570%_)
                    (let* ((_%__stx2047620477%_ _%e16570%_)
                           (_%g1657816615%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2047620477%_))))
                      (let ((_%__kont2047920480%_ (lambda () '#f))
                            (_%__kont2048120482%_ (lambda () '#f))
                            (_%__kont2048320484%_
                             (lambda (_%g1659216727%_ _%g1659316729%_)
                               (if (_%simple-quote?15880%_ _%g1659316729%_)
                                   (_%simple-quote?15880%_ _%g1659216727%_)
                                   '#f)))
                            (_%__kont2048520486%_
                             (lambda (_%g1659716688%_)
                               (_%simple-quote?15880%_
                                (foldr (lambda (_%g1670116704%_
                                                _%g1670216707%_)
                                         (cons _%g1670116704%_
                                               _%g1670216707%_))
                                       '()
                                       _%g1659716688%_))))
                            (_%__kont2048920490%_
                             (lambda (_%g1660816637%_)
                               (_%simple-quote?15880%_ _%g1660816637%_)))
                            (_%__kont2049120492%_ (lambda () '#t)))
                        (let* ((_%g1657616649%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2047620477%_)
                                      (let ((_%e1660916633%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2047620477%_))))
                                        (_%__kont2048920490%_ _%e1660916633%_))
                                      (_%__kont2049120492%_))))
                               (_%__match2054720548%_
                                (lambda (_%e1659816656%_
                                         _%__splice2048720488%_
                                         _%target1659916660%_
                                         _%tl1660116663%_)
                                  (letrec ((_%loop1660216666%_
                                            (lambda (_%hd1660016670%_
                                                     _%e1660616673%_)
                                              (if (gx#stx-pair?
                                                   _%hd1660016670%_)
                                                  (let ((_%e1660316675%_
                                                         (gx#syntax-e
                                                          _%hd1660016670%_)))
                                                    (let ((_%lp-tl1660516682%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1660316675%_)))
                                                          (_%lp-hd1660416679%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1660316675%_))))
                                                      (_%loop1660216666%_
                                                       _%lp-tl1660516682%_
                                                       (cons _%lp-hd1660416679%_
                                                             _%e1660616673%_))))
                                                  (let ((_%e1660716685%_
                                                         (reverse _%e1660616673%_)))
                                                    (_%__kont2048520486%_
                                                     _%e1660716685%_))))))
                                    (_%loop1660216666%_
                                     _%target1659916660%_
                                     '()))))
                               (_%g1657516710%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2047620477%_)
                                      (let ((_%e1659816656%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2047620477%_))))
                                        (if (gx#stx-pair/null? _%e1659816656%_)
                                            (let ((_%__splice2048720488%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e1659816656%_
                                                    '0)))
                                              (let ((_%tl1660116663%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2048720488%_
                                                        '1)))
                                                    (_%target1659916660%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2048720488%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1660116663%_)
                                                    (_%__match2054720548%_
                                                     _%e1659816656%_
                                                     _%__splice2048720488%_
                                                     _%target1659916660%_
                                                     _%tl1660116663%_)
                                                    (_%__kont2049120492%_))))
                                            (_%__kont2049120492%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1657616649%_))))))
                          (if (gx#stx-pair? _%__stx2047620477%_)
                              (let ((_%e1658016778%_
                                     (gx#syntax-e _%__stx2047620477%_)))
                                (let ((_%tl1658216785%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1658016778%_)))
                                      (_%hd1658116782%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1658016778%_))))
                                  (if (gx#identifier? _%hd1658116782%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21081_|
                                           _%hd1658116782%_)
                                          (if (gx#stx-pair? _%tl1658216785%_)
                                              (let ((_%e1658316788%_
                                                     (gx#syntax-e
                                                      _%tl1658216785%_)))
                                                (let ((_%tl1658516795%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1658316788%_)))
                                                      (_%hd1658416792%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1658316788%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1658516795%_)
                                                      (_%__kont2047920480%_)
                                                      (_%__kont2048320484%_
                                                       _%tl1658216785%_
                                                       _%hd1658116782%_))))
                                              (_%__kont2048320484%_
                                               _%tl1658216785%_
                                               _%hd1658116782%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21082_|
                                               _%hd1658116782%_)
                                              (if (gx#stx-pair?
                                                   _%tl1658216785%_)
                                                  (let ((_%e1658916757%_
                                                         (gx#syntax-e
                                                          _%tl1658216785%_)))
                                                    (let ((_%tl1659116764%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1658916757%_)))
                                                          (_%hd1659016761%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1658916757%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1659116764%_)
                                                          (_%__kont2048120482%_)
                                                          (_%__kont2048320484%_
                                                           _%tl1658216785%_
                                                           _%hd1658116782%_))))
                                                  (_%__kont2048320484%_
                                                   _%tl1658216785%_
                                                   _%hd1658116782%_))
                                              (_%__kont2048320484%_
                                               _%tl1658216785%_
                                               _%hd1658116782%_)))
                                      (_%__kont2048320484%_
                                       _%tl1658216785%_
                                       _%hd1658116782%_))))
                              (let ()
                                (declare (not safe))
                                (_%g1657516710%_))))))))
                 (_%generate15882%_
                  (lambda (_%e15944%_ _%d15946%_)
                    (let* ((_%__stx2055420555%_ _%e15944%_)
                           (_%g1595516013%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2055420555%_))))
                      (let ((_%__kont2055720558%_
                             (lambda (_%g1595716522%_)
                               (let* ((_%g1653516543%_
                                       (lambda (_%g1653616539%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1653616539%_)))
                                      (_%g1653416562%_
                                       (lambda (_%g1653616547%_)
                                         ((lambda (_%g1653716550%_)
                                            (cons (gx#datum->syntax '#f 'list)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quasiquote)
                            '()))
                (cons _%g1653716550%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1653616547%_))))
                                 (_%g1653416562%_
                                  (_%generate15882%_
                                   _%g1595716522%_
                                   (fx1+ _%d15946%_))))))
                            (_%__kont2055920560%_
                             (lambda (_%g1596416451%_)
                               (if (fxzero? _%d15946%_)
                                   _%g1596416451%_
                                   (let* ((_%g1646416472%_
                                           (lambda (_%g1646516468%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1646516468%_)))
                                          (_%g1646316491%_
                                           (lambda (_%g1646516476%_)
                                             ((lambda (_%g1646616479%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote) '()))
                    (cons _%g1646616479%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1646516476%_))))
                                     (_%g1646316491%_
                                      (_%generate15882%_
                                       _%g1596416451%_
                                       (fx1- _%d15946%_)))))))
                            (_%__kont2056120562%_
                             (lambda (_%g1597116380%_)
                               (if (fxzero? _%d15946%_)
                                   (cons (gx#datum->syntax '#f 'foldr)
                                         (cons (gx#datum->syntax '#f 'cons)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons '() '()))
                                                     (cons _%g1597116380%_
                                                           '()))))
                                   (let* ((_%g1639316401%_
                                           (lambda (_%g1639416397%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1639416397%_)))
                                          (_%g1639216420%_
                                           (lambda (_%g1639416405%_)
                                             ((lambda (_%g1639516408%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote-splicing) '()))
                    (cons _%g1639516408%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1639416405%_))))
                                     (_%g1639216420%_
                                      (_%generate15882%_
                                       _%g1597116380%_
                                       (fx1- _%d15946%_)))))))
                            (_%__kont2056320564%_
                             (lambda (_%g1597816305%_ _%g1597916307%_)
                               (let* ((_%g1632216330%_
                                       (lambda (_%g1632316326%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1632316326%_)))
                                      (_%g1632116349%_
                                       (lambda (_%g1632316334%_)
                                         ((lambda (_%g1632416337%_)
                                            (cons (gx#datum->syntax '#f 'foldr)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'cons)
                                                        (cons _%g1632416337%_
                                                              (cons _%g1597916307%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1632316334%_))))
                                 (_%g1632116349%_
                                  (_%generate15882%_
                                   _%g1597816305%_
                                   _%d15946%_)))))
                            (_%__kont2056520566%_
                             (lambda (_%g1598916191%_ _%g1599016193%_)
                               (let* ((_%g1620416219%_
                                       (lambda (_%g1620516215%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1620516215%_)))
                                      (_%g1620316264%_
                                       (lambda (_%g1620516223%_)
                                         (if (gx#stx-pair? _%g1620516223%_)
                                             (let ((_%e1620816226%_
                                                    (gx#syntax-e
                                                     _%g1620516223%_)))
                                               (let ((_%hd1620916230%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1620816226%_)))
                                                     (_%tl1621016233%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1620816226%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl1621016233%_)
                                                     (let ((_%e1621116236%_
                                                            (gx#syntax-e
                                                             _%tl1621016233%_)))
                                                       (let ((_%hd1621216240%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e1621116236%_)))
                     (_%tl1621316243%_
                      (let () (declare (not safe)) (##cdr _%e1621116236%_))))
                 (if (gx#stx-null? _%tl1621316243%_)
                     ((lambda (_%g1620616246%_ _%g1620716248%_)
                        (cons (gx#datum->syntax '#f 'cons)
                              (cons _%g1620716248%_
                                    (cons _%g1620616246%_ '()))))
                      _%hd1621216240%_
                      _%hd1620916230%_)
                     (_%g1620416219%_ _%g1620516223%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1620416219%_
                                                      _%g1620516223%_))))
                                             (_%g1620416219%_
                                              _%g1620516223%_)))))
                                 (_%g1620316264%_
                                  (list (_%generate15882%_
                                         _%g1599016193%_
                                         _%d15946%_)
                                        (_%generate15882%_
                                         _%g1598916191%_
                                         _%d15946%_))))))
                            (_%__kont2056720568%_
                             (lambda (_%g1599416121%_)
                               (let* ((_%g1613516143%_
                                       (lambda (_%g1613616139%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1613616139%_)))
                                      (_%g1613416162%_
                                       (lambda (_%g1613616147%_)
                                         ((lambda (_%g1613716150%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'list->vector)
                                                  (cons _%g1613716150%_ '())))
                                          _%g1613616147%_))))
                                 (_%g1613416162%_
                                  (_%generate15882%_
                                   (foldr (lambda (_%g1616516168%_
                                                   _%g1616616171%_)
                                            (cons _%g1616516168%_
                                                  _%g1616616171%_))
                                          '()
                                          _%g1599416121%_)
                                   _%d15946%_)))))
                            (_%__kont2057120572%_
                             (lambda (_%g1600516041%_)
                               (let* ((_%g1605116059%_
                                       (lambda (_%g1605216055%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1605216055%_)))
                                      (_%g1605016078%_
                                       (lambda (_%g1605216063%_)
                                         ((lambda (_%g1605316066%_)
                                            (cons (gx#datum->syntax '#f 'box)
                                                  (cons _%g1605316066%_ '())))
                                          _%g1605216063%_))))
                                 (_%g1605016078%_
                                  (_%generate15882%_
                                   _%g1600516041%_
                                   _%d15946%_)))))
                            (_%__kont2057320574%_
                             (lambda (_%g1600716020%_)
                               (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g1600716020%_ '())))))
                        (let* ((_%g1595316082%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2055420555%_)
                                      (let ((_%e1600616037%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2055420555%_))))
                                        (_%__kont2057120572%_ _%e1600616037%_))
                                      (_%__kont2057320574%_
                                       _%__stx2055420555%_))))
                               (_%__match2067320674%_
                                (lambda (_%e1599516089%_
                                         _%__splice2056920570%_
                                         _%target1599616093%_
                                         _%tl1599816096%_)
                                  (letrec ((_%loop1599916099%_
                                            (lambda (_%hd1599716103%_
                                                     _%e1600316106%_)
                                              (if (gx#stx-pair?
                                                   _%hd1599716103%_)
                                                  (let ((_%e1600016108%_
                                                         (gx#syntax-e
                                                          _%hd1599716103%_)))
                                                    (let ((_%lp-tl1600216115%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1600016108%_)))
                                                          (_%lp-hd1600116112%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1600016108%_))))
                                                      (_%loop1599916099%_
                                                       _%lp-tl1600216115%_
                                                       (cons _%lp-hd1600116112%_
                                                             _%e1600316106%_))))
                                                  (let ((_%e1600416118%_
                                                         (reverse _%e1600316106%_)))
                                                    (_%__kont2056720568%_
                                                     _%e1600416118%_))))))
                                    (_%loop1599916099%_
                                     _%target1599616093%_
                                     '()))))
                               (_%g1595216174%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2055420555%_)
                                      (let ((_%e1599516089%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2055420555%_))))
                                        (if (gx#stx-pair/null? _%e1599516089%_)
                                            (let ((_%__splice2056920570%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e1599516089%_
                                                    '0)))
                                              (let ((_%tl1599816096%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2056920570%_
                                                        '1)))
                                                    (_%target1599616093%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2056920570%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1599816096%_)
                                                    (_%__match2067320674%_
                                                     _%e1599516089%_
                                                     _%__splice2056920570%_
                                                     _%target1599616093%_
                                                     _%tl1599816096%_)
                                                    (_%__kont2057320574%_
                                                     _%__stx2055420555%_))))
                                            (_%__kont2057320574%_
                                             _%__stx2055420555%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1595316082%_))))))
                          (if (gx#stx-pair? _%__stx2055420555%_)
                              (let ((_%e1595816502%_
                                     (gx#syntax-e _%__stx2055420555%_)))
                                (let ((_%tl1596016509%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1595816502%_)))
                                      (_%hd1595916506%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1595816502%_))))
                                  (if (gx#identifier? _%hd1595916506%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21083_|
                                           _%hd1595916506%_)
                                          (if (gx#stx-pair? _%tl1596016509%_)
                                              (let ((_%e1596116512%_
                                                     (gx#syntax-e
                                                      _%tl1596016509%_)))
                                                (let ((_%tl1596316519%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1596116512%_)))
                                                      (_%hd1596216516%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1596116512%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1596316519%_)
                                                      (_%__kont2055720558%_
                                                       _%hd1596216516%_)
                                                      (_%__kont2056520566%_
                                                       _%tl1596016509%_
                                                       _%hd1595916506%_))))
                                              (_%__kont2056520566%_
                                               _%tl1596016509%_
                                               _%hd1595916506%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21084_|
                                               _%hd1595916506%_)
                                              (if (gx#stx-pair?
                                                   _%tl1596016509%_)
                                                  (let ((_%e1596816441%_
                                                         (gx#syntax-e
                                                          _%tl1596016509%_)))
                                                    (let ((_%tl1597016448%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1596816441%_)))
                                                          (_%hd1596916445%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1596816441%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1597016448%_)
                                                          (_%__kont2055920560%_
                                                           _%hd1596916445%_)
                                                          (_%__kont2056520566%_
                                                           _%tl1596016509%_
                                                           _%hd1595916506%_))))
                                                  (_%__kont2056520566%_
                                                   _%tl1596016509%_
                                                   _%hd1595916506%_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21085_|
                                                   _%hd1595916506%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1596016509%_)
                                                      (let ((_%e1597516370%_
                                                             (gx#syntax-e
                                                              _%tl1596016509%_)))
                                                        (let ((_%tl1597716377%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1597516370%_)))
                      (_%hd1597616374%_
                       (let () (declare (not safe)) (##car _%e1597516370%_))))
                  (if (gx#stx-null? _%tl1597716377%_)
                      (_%__kont2056120562%_ _%hd1597616374%_)
                      (_%__kont2056520566%_
                       _%tl1596016509%_
                       _%hd1595916506%_))))
              (_%__kont2056520566%_ _%tl1596016509%_ _%hd1595916506%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2056520566%_
                                                   _%tl1596016509%_
                                                   _%hd1595916506%_))))
                                      (if (gx#stx-pair? _%hd1595916506%_)
                                          (let ((_%e1598316285%_
                                                 (gx#syntax-e
                                                  _%hd1595916506%_)))
                                            (let ((_%tl1598516292%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1598316285%_)))
                                                  (_%hd1598416289%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1598316285%_))))
                                              (if (gx#identifier?
                                                   _%hd1598416289%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-2[1]#_g21086_|
                                                       _%hd1598416289%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1598516292%_)
                                                          (let ((_%e1598616295%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1598516292%_)))
                    (let ((_%tl1598816302%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1598616295%_)))
                          (_%hd1598716299%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1598616295%_))))
                      (if (gx#stx-null? _%tl1598816302%_)
                          (if (fxzero? _%d15946%_)
                              (let ((_%g1597816305%_ _%tl1596016509%_)
                                    (_%g1597916307%_ _%hd1598716299%_))
                                (_%__kont2056320564%_
                                 _%g1597816305%_
                                 _%g1597916307%_))
                              (_%__kont2056520566%_
                               _%tl1596016509%_
                               _%hd1595916506%_))
                          (_%__kont2056520566%_
                           _%tl1596016509%_
                           _%hd1595916506%_))))
                  (_%__kont2056520566%_ _%tl1596016509%_ _%hd1595916506%_))
              (_%__kont2056520566%_ _%tl1596016509%_ _%hd1595916506%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2056520566%_
                                                   _%tl1596016509%_
                                                   _%hd1595916506%_))))
                                          (_%__kont2056520566%_
                                           _%tl1596016509%_
                                           _%hd1595916506%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g1595216174%_)))))))))
          (let* ((_%g1588415898%_
                  (lambda (_%g1588515894%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1588515894%_)))
                 (_%g1588315940%_
                  (lambda (_%g1588515902%_)
                    (if (gx#stx-pair? _%g1588515902%_)
                        (let ((_%e1588715905%_ (gx#syntax-e _%g1588515902%_)))
                          (let ((_%hd1588815909%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1588715905%_)))
                                (_%tl1588915912%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1588715905%_))))
                            (if (gx#stx-pair? _%tl1588915912%_)
                                (let ((_%e1589015915%_
                                       (gx#syntax-e _%tl1588915912%_)))
                                  (let ((_%hd1589115919%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1589015915%_)))
                                        (_%tl1589215922%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1589015915%_))))
                                    (if (gx#stx-null? _%tl1589215922%_)
                                        ((lambda (_%g1588615925%_)
                                           (if (_%simple-quote?15880%_
                                                _%g1588615925%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%g1588615925%_
                                                           '()))
                                               (_%generate15882%_
                                                _%g1588615925%_
                                                '0)))
                                         _%hd1589115919%_)
                                        (_%g1588415898%_ _%g1588515902%_))))
                                (_%g1588415898%_ _%g1588515902%_))))
                        (_%g1588415898%_ _%g1588515902%_)))))
            (_%g1588315940%_ _%stx15877%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay|
      (lambda (_%$stx16808%_)
        (let* ((_%__stx2068020681%_ _%$stx16808%_)
               (_%g1681416848%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2068020681%_))))
          (let ((_%__kont2068320684%_
                 (lambda (_%g1681616980%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1681616980%_ '()))))
                (_%__kont2068520686%_
                 (lambda (_%g1682316936%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1682316936%_ '()))))
                (_%__kont2068720688%_
                 (lambda (_%g1683616875%_)
                   (cons (gx#datum->syntax '#f 'make-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%g1683616875%_ '())))
                               '())))))
            (let ((_%__match2070320704%_
                   (lambda (_%e1681716960%_
                            _%hd1681816964%_
                            _%tl1681916967%_
                            _%e1682016970%_
                            _%hd1682116974%_
                            _%tl1682216977%_)
                     (let ((_%g1681616980%_ _%hd1682116974%_))
                       (if (gx#stx-datum? _%g1681616980%_)
                           (_%__kont2068320684%_ _%g1681616980%_)
                           (if (gx#stx-pair? _%hd1682116974%_)
                               (let ((_%e1683016916%_
                                      (gx#syntax-e _%hd1682116974%_)))
                                 (let ((_%tl1683216923%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1683016916%_)))
                                       (_%hd1683116920%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1683016916%_))))
                                   (if (gx#identifier? _%hd1683116920%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/sugar~Sugar-2[1]#_g21087_|
                                            _%hd1683116920%_)
                                           (if (gx#stx-pair? _%tl1683216923%_)
                                               (let ((_%e1683316926%_
                                                      (gx#syntax-e
                                                       _%tl1683216923%_)))
                                                 (let ((_%tl1683516933%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e1683316926%_)))
                                                       (_%hd1683416930%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e1683316926%_))))
                                                   (if (gx#stx-null?
                                                        _%tl1683516933%_)
                                                       (_%__kont2068520686%_
                                                        _%hd1683416930%_)
                                                       (_%__kont2068720688%_
                                                        _%hd1682116974%_))))
                                               (_%__kont2068720688%_
                                                _%hd1682116974%_))
                                           (_%__kont2068720688%_
                                            _%hd1682116974%_))
                                       (_%__kont2068720688%_
                                        _%hd1682116974%_))))
                               (_%__kont2068720688%_ _%hd1682116974%_)))))))
              (if (gx#stx-pair? _%__stx2068020681%_)
                  (let ((_%e1681716960%_ (gx#syntax-e _%__stx2068020681%_)))
                    (let ((_%tl1681916967%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1681716960%_)))
                          (_%hd1681816964%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1681716960%_))))
                      (if (gx#stx-pair? _%tl1681916967%_)
                          (let ((_%e1682016970%_
                                 (gx#syntax-e _%tl1681916967%_)))
                            (let ((_%tl1682216977%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1682016970%_)))
                                  (_%hd1682116974%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1682016970%_))))
                              (if (gx#stx-null? _%tl1682216977%_)
                                  (_%__match2070320704%_
                                   _%e1681716960%_
                                   _%hd1681816964%_
                                   _%tl1681916967%_
                                   _%e1682016970%_
                                   _%hd1682116974%_
                                   _%tl1682216977%_)
                                  (if (gx#stx-pair? _%hd1682116974%_)
                                      (let ((_%e1683016916%_
                                             (gx#syntax-e _%hd1682116974%_)))
                                        (let ((_%tl1683216923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1683016916%_)))
                                              (_%hd1683116920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1683016916%_))))
                                          (if (gx#identifier? _%hd1683116920%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21087_|
                                                   _%hd1683116920%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1683216923%_)
                                                      (let ((_%e1683316926%_
                                                             (gx#syntax-e
                                                              _%tl1683216923%_)))
                                                        (let ((_%tl1683516933%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1683316926%_)))
                      (_%hd1683416930%_
                       (let () (declare (not safe)) (##car _%e1683316926%_))))
                  (let () (declare (not safe)) (_%g1681416848%_))))
              (let () (declare (not safe)) (_%g1681416848%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1681416848%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1681416848%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1681416848%_))))))
                          (let () (declare (not safe)) (_%g1681416848%_)))))
                  (let () (declare (not safe)) (_%g1681416848%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay-atomic|
      (lambda (_%$stx16997%_)
        (let* ((_%__stx2075220753%_ _%$stx16997%_)
               (_%g1700317037%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2075220753%_))))
          (let ((_%__kont2075520756%_
                 (lambda (_%g1700517169%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1700517169%_ '()))))
                (_%__kont2075720758%_
                 (lambda (_%g1701217125%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1701217125%_ '()))))
                (_%__kont2075920760%_
                 (lambda (_%g1702517064%_)
                   (cons (gx#datum->syntax '#f 'make-atomic-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%g1702517064%_ '())))
                               '())))))
            (let ((_%__match2077520776%_
                   (lambda (_%e1700617149%_
                            _%hd1700717153%_
                            _%tl1700817156%_
                            _%e1700917159%_
                            _%hd1701017163%_
                            _%tl1701117166%_)
                     (let ((_%g1700517169%_ _%hd1701017163%_))
                       (if (gx#stx-datum? _%g1700517169%_)
                           (_%__kont2075520756%_ _%g1700517169%_)
                           (if (gx#stx-pair? _%hd1701017163%_)
                               (let ((_%e1701917105%_
                                      (gx#syntax-e _%hd1701017163%_)))
                                 (let ((_%tl1702117112%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1701917105%_)))
                                       (_%hd1702017109%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1701917105%_))))
                                   (if (gx#identifier? _%hd1702017109%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/sugar~Sugar-2[1]#_g21088_|
                                            _%hd1702017109%_)
                                           (if (gx#stx-pair? _%tl1702117112%_)
                                               (let ((_%e1702217115%_
                                                      (gx#syntax-e
                                                       _%tl1702117112%_)))
                                                 (let ((_%tl1702417122%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e1702217115%_)))
                                                       (_%hd1702317119%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e1702217115%_))))
                                                   (if (gx#stx-null?
                                                        _%tl1702417122%_)
                                                       (_%__kont2075720758%_
                                                        _%hd1702317119%_)
                                                       (_%__kont2075920760%_
                                                        _%hd1701017163%_))))
                                               (_%__kont2075920760%_
                                                _%hd1701017163%_))
                                           (_%__kont2075920760%_
                                            _%hd1701017163%_))
                                       (_%__kont2075920760%_
                                        _%hd1701017163%_))))
                               (_%__kont2075920760%_ _%hd1701017163%_)))))))
              (if (gx#stx-pair? _%__stx2075220753%_)
                  (let ((_%e1700617149%_ (gx#syntax-e _%__stx2075220753%_)))
                    (let ((_%tl1700817156%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1700617149%_)))
                          (_%hd1700717153%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1700617149%_))))
                      (if (gx#stx-pair? _%tl1700817156%_)
                          (let ((_%e1700917159%_
                                 (gx#syntax-e _%tl1700817156%_)))
                            (let ((_%tl1701117166%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1700917159%_)))
                                  (_%hd1701017163%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1700917159%_))))
                              (if (gx#stx-null? _%tl1701117166%_)
                                  (_%__match2077520776%_
                                   _%e1700617149%_
                                   _%hd1700717153%_
                                   _%tl1700817156%_
                                   _%e1700917159%_
                                   _%hd1701017163%_
                                   _%tl1701117166%_)
                                  (if (gx#stx-pair? _%hd1701017163%_)
                                      (let ((_%e1701917105%_
                                             (gx#syntax-e _%hd1701017163%_)))
                                        (let ((_%tl1702117112%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1701917105%_)))
                                              (_%hd1702017109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1701917105%_))))
                                          (if (gx#identifier? _%hd1702017109%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21088_|
                                                   _%hd1702017109%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1702117112%_)
                                                      (let ((_%e1702217115%_
                                                             (gx#syntax-e
                                                              _%tl1702117112%_)))
                                                        (let ((_%tl1702417122%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1702217115%_)))
                      (_%hd1702317119%_
                       (let () (declare (not safe)) (##car _%e1702217115%_))))
                  (let () (declare (not safe)) (_%g1700317037%_))))
              (let () (declare (not safe)) (_%g1700317037%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1700317037%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1700317037%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1700317037%_))))))
                          (let () (declare (not safe)) (_%g1700317037%_)))))
                  (let () (declare (not safe)) (_%g1700317037%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#cut|
      (lambda (_%stx17186%_)
        (letrec ((_%generate17189%_
                  (lambda (_%rest17308%_)
                    (let _%lp17311%_ ((_%rest17314%_ _%rest17308%_)
                                      (_%hd17316%_ '())
                                      (_%body17317%_ '()))
                      (let* ((_%__stx2084420845%_ _%rest17314%_)
                             (_%g1732017332%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx2084420845%_))))
                        (let ((_%__kont2084720848%_
                               (lambda (_%g1732217360%_ _%g1732317362%_)
                                 (let* ((_%__stx2082420825%_ _%g1732317362%_)
                                        (_%g1737917386%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx2082420825%_))))
                                   (let ((_%__kont2082720828%_
                                          (lambda ()
                                            (let ((_%arg17422%_ (gx#genident)))
                                              (_%lp17311%_
                                               _%g1732217360%_
                                               (cons _%arg17422%_ _%hd17316%_)
                                               (cons _%arg17422%_
                                                     _%body17317%_)))))
                                         (_%__kont2082920830%_
                                          (lambda ()
                                            (if (gx#stx-null? _%g1732217360%_)
                                                (let ((_%tail17408%_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail17408%_
                         _%hd17316%_)
                  (foldl cons (list _%tail17408%_) _%body17317%_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; cut ellipsis <...> not in tail position"
                                                 _%stx17186%_
                                                 _%g1732317362%_))))
                                         (_%__kont2083120832%_
                                          (lambda ()
                                            (_%lp17311%_
                                             _%g1732217360%_
                                             _%hd17316%_
                                             (cons _%g1732317362%_
                                                   _%body17317%_)))))
                                     (if (gx#identifier? _%__stx2082420825%_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core/sugar~Sugar-2[1]#_g21089_|
                                              _%__stx2082420825%_)
                                             (_%__kont2082720828%_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core/sugar~Sugar-2[1]#_g21090_|
                                                  _%__stx2082420825%_)
                                                 (_%__kont2082920830%_)
                                                 (_%__kont2083120832%_)))
                                         (_%__kont2083120832%_))))))
                              (_%__kont2084920850%_
                               (lambda ()
                                 (values (reverse _%hd17316%_)
                                         (reverse _%body17317%_)
                                         '#f))))
                          (if (gx#stx-pair? _%__stx2084420845%_)
                              (let ((_%e1732417350%_
                                     (gx#syntax-e _%__stx2084420845%_)))
                                (let ((_%tl1732617357%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1732417350%_)))
                                      (_%hd1732517354%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1732417350%_))))
                                  (_%__kont2084720848%_
                                   _%tl1732617357%_
                                   _%hd1732517354%_)))
                              (_%__kont2084920850%_))))))))
          (let* ((_%g1719217203%_
                  (lambda (_%g1719317199%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1719317199%_)))
                 (_%g1719117304%_
                  (lambda (_%g1719317207%_)
                    (if (gx#stx-pair? _%g1719317207%_)
                        (let ((_%e1719517210%_ (gx#syntax-e _%g1719317207%_)))
                          (let ((_%hd1719617214%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1719517210%_)))
                                (_%tl1719717217%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1719517210%_))))
                            ((lambda (_%g1719417220%_)
                               (if (and (gx#stx-list? _%g1719417220%_)
                                        (not (gx#stx-null? _%g1719417220%_)))
                                   (let ((_g21091_
                                          (_%generate17189%_ _%g1719417220%_)))
                                     (begin
                                       (let ((_g21092_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21091_)
                                                    (##values-length _g21091_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21092_ 3)))
                                             (error "Context expects 3 values"
                                                    _g21092_)))
                                       (let ((_%hd17233%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21091_ 0)))
                                             (_%body17235%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21091_ 1)))
                                             (_%tail?17236%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21091_ 2))))
                                         (let* ((_%g1723817246%_
                                                 (lambda (_%g1723917242%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g1723917242%_)))
                                                (_%g1723717300%_
                                                 (lambda (_%g1723917250%_)
                                                   ((lambda (_%g1724017253%_)
                                                      (let* ((_%g1726617274%_
                                                              (lambda (_%g1726717270%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g1726717270%_)))
                     (_%g1726517296%_
                      (lambda (_%g1726717278%_)
                        ((lambda (_%g1726817281%_)
                           (if _%tail?17236%_
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%g1724017253%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'apply)
                                                       _%g1726817281%_)
                                                 '())))
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%g1724017253%_
                                           (cons _%g1726817281%_ '())))))
                         _%g1726717278%_))))
                (_%g1726517296%_ _%body17235%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g1723917250%_))))
                                           (_%g1723717300%_ _%hd17233%_)))))
                                   (_%g1719217203%_ _%g1719317207%_)))
                             _%tl1719717217%_)))
                        (_%g1719217203%_ _%g1719317207%_)))))
            (_%g1719117304%_ _%stx17186%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<>|
      (lambda (_%$stx17434%_)
        (let ((_%g1743717444%_
               (lambda (_%g1743817440%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1743817440%_))))
          (_%g1743717444%_ _%$stx17434%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<...>|
      (lambda (_%$stx17448%_)
        (let ((_%g1745117458%_
               (lambda (_%g1745217454%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1745217454%_))))
          (_%g1745117458%_ _%$stx17448%_))))))

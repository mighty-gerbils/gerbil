(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-2[1]#_g20999_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21000_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21001_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21037_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21038_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21039_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21046_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21047_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21048_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21049_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21050_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21051_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21052_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
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
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21055_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-2[:0:]#lambda|
      (lambda (_%stx5365%_)
        (letrec ((_%simple-lambda?5368%_
                  (lambda (_%hd8774%_)
                    (gx#stx-andmap gx#identifier? _%hd8774%_)))
                 (_%opt-lambda?5370%_
                  (lambda (_%hd8626%_)
                    (let _%lp8629%_ ((_%rest8632%_ _%hd8626%_)
                                     (_%opt?8634%_ '#f))
                      (let* ((_%__stx1922319224%_ _%rest8632%_)
                             (_%g86378649%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1922319224%_))))
                        (let ((_%__kont1922619227%_
                               (lambda (_%L8681%_ _%L8683%_)
                                 (let* ((_%__stx1919919200%_ _%L8683%_)
                                        (_%g86998713%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1919919200%_))))
                                   (let ((_%__kont1920219203%_
                                          (lambda (_%L8751%_)
                                            (_%lp8629%_ _%L8681%_ '#t)))
                                         (_%__kont1920419205%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8683%_)
                                                (if (not _%opt?8634%_)
                                                    (_%lp8629%_ _%L8681%_ '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((_%__match1922019221%_
                                            (lambda (_%e87028731%_
                                                     _%hd87038735%_
                                                     _%tl87048738%_
                                                     _%e87058741%_
                                                     _%hd87068745%_
                                                     _%tl87078748%_)
                                              (let ((_%L8751%_ _%hd87038735%_))
                                                (if (gx#identifier? _%L8751%_)
                                                    (_%__kont1920219203%_
                                                     _%L8751%_)
                                                    (_%__kont1920419205%_))))))
                                       (if (gx#stx-pair? _%__stx1919919200%_)
                                           (let ((_%e87028731%_
                                                  (gx#syntax-e
                                                   _%__stx1919919200%_)))
                                             (let ((_%tl87048738%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e87028731%_)))
                                                   (_%hd87038735%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e87028731%_))))
                                               (if (gx#stx-pair?
                                                    _%tl87048738%_)
                                                   (let ((_%e87058741%_
                                                          (gx#syntax-e
                                                           _%tl87048738%_)))
                                                     (let ((_%tl87078748%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e87058741%_)))
                                                           (_%hd87068745%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e87058741%_))))
                                                       (if (gx#stx-null?
                                                            _%tl87078748%_)
                                                           (_%__match1922019221%_
                                                            _%e87028731%_
                                                            _%hd87038735%_
                                                            _%tl87048738%_
                                                            _%e87058741%_
                                                            _%hd87068745%_
                                                            _%tl87078748%_)
                                                           (_%__kont1920419205%_))))
                                                   (_%__kont1920419205%_))))
                                           (_%__kont1920419205%_)))))))
                              (_%__kont1922819229%_
                               (lambda ()
                                 (if _%opt?8634%_
                                     (let ((_%$e8660%_
                                            (gx#stx-null? _%rest8632%_)))
                                       (if _%$e8660%_
                                           _%$e8660%_
                                           (gx#identifier? _%rest8632%_)))
                                     '#f))))
                          (if (gx#stx-pair? _%__stx1922319224%_)
                              (let ((_%e86418671%_
                                     (gx#syntax-e _%__stx1922319224%_)))
                                (let ((_%tl86438678%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e86418671%_)))
                                      (_%hd86428675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e86418671%_))))
                                  (_%__kont1922619227%_
                                   _%tl86438678%_
                                   _%hd86428675%_)))
                              (_%__kont1922819229%_)))))))
                 (_%opt-lambda-split5371%_
                  (lambda (_%hd8478%_)
                    (let _%lp8481%_ ((_%rest8484%_ _%hd8478%_)
                                     (_%pre8486%_ '())
                                     (_%opt8487%_ '()))
                      (let* ((_%__stx1926319264%_ _%rest8484%_)
                             (_%g84908502%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1926319264%_))))
                        (let ((_%__kont1926619267%_
                               (lambda (_%L8530%_ _%L8532%_)
                                 (let* ((_%__stx1923919240%_ _%L8532%_)
                                        (_%g85488563%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1923919240%_))))
                                   (let ((_%__kont1924219243%_
                                          (lambda (_%L8601%_ _%L8603%_)
                                            (_%lp8481%_
                                             _%L8530%_
                                             _%pre8486%_
                                             (cons (cons _%L8603%_ _%L8601%_)
                                                   _%opt8487%_))))
                                         (_%__kont1924419245%_
                                          (lambda ()
                                            (_%lp8481%_
                                             _%L8530%_
                                             (cons _%L8532%_ _%pre8486%_)
                                             _%opt8487%_))))
                                     (if (gx#stx-pair? _%__stx1923919240%_)
                                         (let ((_%e85528581%_
                                                (gx#syntax-e
                                                 _%__stx1923919240%_)))
                                           (let ((_%tl85548588%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e85528581%_)))
                                                 (_%hd85538585%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e85528581%_))))
                                             (if (gx#stx-pair? _%tl85548588%_)
                                                 (let ((_%e85558591%_
                                                        (gx#syntax-e
                                                         _%tl85548588%_)))
                                                   (let ((_%tl85578598%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e85558591%_)))
                                                         (_%hd85568595%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e85558591%_))))
                                                     (if (gx#stx-null?
                                                          _%tl85578598%_)
                                                         (_%__kont1924219243%_
                                                          _%hd85568595%_
                                                          _%hd85538585%_)
                                                         (_%__kont1924419245%_))))
                                                 (_%__kont1924419245%_))))
                                         (_%__kont1924419245%_))))))
                              (_%__kont1926819269%_
                               (lambda ()
                                 (values (reverse _%pre8486%_)
                                         (reverse _%opt8487%_)
                                         _%rest8484%_))))
                          (if (gx#stx-pair? _%__stx1926319264%_)
                              (let ((_%e84948520%_
                                     (gx#syntax-e _%__stx1926319264%_)))
                                (let ((_%tl84968527%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e84948520%_)))
                                      (_%hd84958524%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e84948520%_))))
                                  (_%__kont1926619267%_
                                   _%tl84968527%_
                                   _%hd84958524%_)))
                              (_%__kont1926819269%_)))))))
                 (_%kw-lambda?5372%_
                  (lambda (_%hd8146%_)
                    (let _%lp8149%_ ((_%rest8152%_ _%hd8146%_)
                                     (_%opt?8154%_ '#f)
                                     (_%key?8155%_ '#f))
                      (let* ((_%__stx1932719328%_ _%rest8152%_)
                             (_%g81608190%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1932719328%_))))
                        (let ((_%__kont1933019331%_
                               (lambda (_%L8385%_ _%L8387%_ _%L8388%_)
                                 (let* ((_%__stx1930319304%_ _%L8387%_)
                                        (_%g84038417%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1930319304%_))))
                                   (let ((_%__kont1930619307%_
                                          (lambda (_%L8455%_)
                                            (if (gx#identifier? _%L8455%_)
                                                (_%lp8149%_
                                                 _%L8385%_
                                                 _%opt?8154%_
                                                 '#t)
                                                '#f)))
                                         (_%__kont1930819309%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8387%_)
                                                (_%lp8149%_
                                                 _%L8385%_
                                                 _%opt?8154%_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1930319304%_)
                                         (let ((_%e84068435%_
                                                (gx#syntax-e
                                                 _%__stx1930319304%_)))
                                           (let ((_%tl84088442%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e84068435%_)))
                                                 (_%hd84078439%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e84068435%_))))
                                             (if (gx#stx-pair? _%tl84088442%_)
                                                 (let ((_%e84098445%_
                                                        (gx#syntax-e
                                                         _%tl84088442%_)))
                                                   (let ((_%tl84118452%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e84098445%_)))
                                                         (_%hd84108449%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e84098445%_))))
                                                     (if (gx#stx-null?
                                                          _%tl84118452%_)
                                                         (_%__kont1930619307%_
                                                          _%hd84078439%_)
                                                         (_%__kont1930819309%_))))
                                                 (_%__kont1930819309%_))))
                                         (_%__kont1930819309%_))))))
                              (_%__kont1933219333%_
                               (lambda (_%L8342%_ _%L8344%_)
                                 (if (gx#identifier? _%L8344%_)
                                     (_%lp8149%_ _%L8342%_ _%opt?8154%_ '#t)
                                     '#f)))
                              (_%__kont1933419335%_
                               (lambda (_%L8222%_ _%L8224%_)
                                 (let* ((_%__stx1927919280%_ _%L8224%_)
                                        (_%g82408254%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1927919280%_))))
                                   (let ((_%__kont1928219283%_
                                          (lambda (_%L8292%_)
                                            (if (gx#identifier? _%L8292%_)
                                                (_%lp8149%_
                                                 _%L8222%_
                                                 '#t
                                                 _%key?8155%_)
                                                '#f)))
                                         (_%__kont1928419285%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8224%_)
                                                (if (not _%opt?8154%_)
                                                    (_%lp8149%_
                                                     _%L8222%_
                                                     '#f
                                                     _%key?8155%_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1927919280%_)
                                         (let ((_%e82438272%_
                                                (gx#syntax-e
                                                 _%__stx1927919280%_)))
                                           (let ((_%tl82458279%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e82438272%_)))
                                                 (_%hd82448276%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e82438272%_))))
                                             (if (gx#stx-pair? _%tl82458279%_)
                                                 (let ((_%e82468282%_
                                                        (gx#syntax-e
                                                         _%tl82458279%_)))
                                                   (let ((_%tl82488289%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e82468282%_)))
                                                         (_%hd82478286%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e82468282%_))))
                                                     (if (gx#stx-null?
                                                          _%tl82488289%_)
                                                         (_%__kont1928219283%_
                                                          _%hd82448276%_)
                                                         (_%__kont1928419285%_))))
                                                 (_%__kont1928419285%_))))
                                         (_%__kont1928419285%_))))))
                              (_%__kont1933619337%_
                               (lambda ()
                                 (if _%key?8155%_
                                     (let ((_%$e8201%_
                                            (gx#stx-null? _%rest8152%_)))
                                       (if _%$e8201%_
                                           _%$e8201%_
                                           (gx#identifier? _%rest8152%_)))
                                     '#f))))
                          (let ((_%__match1935019351%_
                                 (lambda (_%e81658365%_
                                          _%hd81668369%_
                                          _%tl81678372%_
                                          _%e81688375%_
                                          _%hd81698379%_
                                          _%tl81708382%_)
                                   (let ((_%L8385%_ _%tl81708382%_)
                                         (_%L8387%_ _%hd81698379%_)
                                         (_%L8388%_ _%hd81668369%_))
                                     (if (gx#stx-keyword? _%L8388%_)
                                         (_%__kont1933019331%_
                                          _%L8385%_
                                          _%L8387%_
                                          _%L8388%_)
                                         (if (gx#stx-datum? _%hd81668369%_)
                                             (let ((_%e81768328%_
                                                    (gx#stx-e _%hd81668369%_)))
                                               (if (equal? _%e81768328%_
                                                           '#!key)
                                                   (_%__kont1933219333%_
                                                    _%tl81708382%_
                                                    _%hd81698379%_)
                                                   (_%__kont1933419335%_
                                                    _%tl81678372%_
                                                    _%hd81668369%_)))
                                             (_%__kont1933419335%_
                                              _%tl81678372%_
                                              _%hd81668369%_)))))))
                            (if (gx#stx-pair? _%__stx1932719328%_)
                                (let ((_%e81658365%_
                                       (gx#syntax-e _%__stx1932719328%_)))
                                  (let ((_%tl81678372%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e81658365%_)))
                                        (_%hd81668369%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e81658365%_))))
                                    (if (gx#stx-pair? _%tl81678372%_)
                                        (let ((_%e81688375%_
                                               (gx#syntax-e _%tl81678372%_)))
                                          (let ((_%tl81708382%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e81688375%_)))
                                                (_%hd81698379%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e81688375%_))))
                                            (_%__match1935019351%_
                                             _%e81658365%_
                                             _%hd81668369%_
                                             _%tl81678372%_
                                             _%e81688375%_
                                             _%hd81698379%_
                                             _%tl81708382%_)))
                                        (if (gx#stx-datum? _%hd81668369%_)
                                            (let ((_%e81768328%_
                                                   (gx#stx-e _%hd81668369%_)))
                                              (_%__kont1933419335%_
                                               _%tl81678372%_
                                               _%hd81668369%_))
                                            (_%__kont1933419335%_
                                             _%tl81678372%_
                                             _%hd81668369%_)))))
                                (_%__kont1933619337%_))))))))
                 (_%kw-lambda-split5373%_
                  (lambda (_%hd7879%_)
                    (let _%lp7882%_ ((_%rest7885%_ _%hd7879%_)
                                     (_%kwvar7887%_ '#f)
                                     (_%kwargs7888%_ '())
                                     (_%args7889%_ '()))
                      (let* ((_%__stx1940119402%_ _%rest7885%_)
                             (_%g78947924%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1940119402%_))))
                        (let ((_%__kont1940419405%_
                               (lambda (_%L8043%_ _%L8045%_ _%L8046%_)
                                 (let ((_%key8060%_ (gx#stx-e _%L8046%_)))
                                   (if (find (lambda (_%kwarg8063%_)
                                               (eq? _%key8060%_
                                                    (car _%kwarg8063%_)))
                                             _%kwargs7888%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad syntax; duplicate keyword argument"
                                        _%stx5365%_
                                        _%hd7879%_
                                        _%key8060%_)
                                       (let* ((_%__stx1937719378%_ _%L8045%_)
                                              (_%g80678082%_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx1937719378%_))))
                                         (let ((_%__kont1938019381%_
                                                (lambda (_%L8120%_ _%L8122%_)
                                                  (_%lp7882%_
                                                   _%L8043%_
                                                   _%kwvar7887%_
                                                   (cons (list _%key8060%_
                                                               _%L8122%_
                                                               _%L8120%_)
                                                         _%kwargs7888%_)
                                                   _%args7889%_)))
                                               (_%__kont1938219383%_
                                                (lambda ()
                                                  (_%lp7882%_
                                                   _%L8043%_
                                                   _%kwvar7887%_
                                                   (cons (list _%key8060%_
                                                               _%L8045%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'error)
                             (cons '"Missing required keyword argument"
                                   (cons _%L8046%_ '()))))
                 _%kwargs7888%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%args7889%_))))
                                           (if (gx#stx-pair?
                                                _%__stx1937719378%_)
                                               (let ((_%e80718100%_
                                                      (gx#syntax-e
                                                       _%__stx1937719378%_)))
                                                 (let ((_%tl80738107%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e80718100%_)))
                                                       (_%hd80728104%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e80718100%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl80738107%_)
                                                       (let ((_%e80748110%_
                                                              (gx#syntax-e
                                                               _%tl80738107%_)))
                                                         (let ((_%tl80768117%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e80748110%_)))
                       (_%hd80758114%_
                        (let () (declare (not safe)) (##car _%e80748110%_))))
                   (if (gx#stx-null? _%tl80768117%_)
                       (_%__kont1938019381%_ _%hd80758114%_ _%hd80728104%_)
                       (_%__kont1938219383%_))))
               (_%__kont1938219383%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont1938219383%_))))))))
                              (_%__kont1940619407%_
                               (lambda (_%L8000%_ _%L8002%_)
                                 (if _%kwvar7887%_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"bad syntax; duplicate #!key argument"
                                      _%stx5365%_
                                      _%hd7879%_
                                      _%L8002%_)
                                     (_%lp7882%_
                                      _%L8000%_
                                      _%L8002%_
                                      _%kwargs7888%_
                                      _%args7889%_))))
                              (_%__kont1940819409%_
                               (lambda (_%L7952%_ _%L7954%_)
                                 (_%lp7882%_
                                  _%L7952%_
                                  _%kwvar7887%_
                                  _%kwargs7888%_
                                  (cons _%L7954%_ _%args7889%_))))
                              (_%__kont1941019411%_
                               (lambda ()
                                 (values _%kwvar7887%_
                                         (reverse _%kwargs7888%_)
                                         (foldl cons
                                                _%rest7885%_
                                                _%args7889%_)))))
                          (let ((_%__match1942419425%_
                                 (lambda (_%e78998023%_
                                          _%hd79008027%_
                                          _%tl79018030%_
                                          _%e79028033%_
                                          _%hd79038037%_
                                          _%tl79048040%_)
                                   (let ((_%L8043%_ _%tl79048040%_)
                                         (_%L8045%_ _%hd79038037%_)
                                         (_%L8046%_ _%hd79008027%_))
                                     (if (gx#stx-keyword? _%L8046%_)
                                         (_%__kont1940419405%_
                                          _%L8043%_
                                          _%L8045%_
                                          _%L8046%_)
                                         (if (gx#stx-datum? _%hd79008027%_)
                                             (let ((_%e79107986%_
                                                    (gx#stx-e _%hd79008027%_)))
                                               (if (equal? _%e79107986%_
                                                           '#!key)
                                                   (_%__kont1940619407%_
                                                    _%tl79048040%_
                                                    _%hd79038037%_)
                                                   (_%__kont1940819409%_
                                                    _%tl79018030%_
                                                    _%hd79008027%_)))
                                             (_%__kont1940819409%_
                                              _%tl79018030%_
                                              _%hd79008027%_)))))))
                            (if (gx#stx-pair? _%__stx1940119402%_)
                                (let ((_%e78998023%_
                                       (gx#syntax-e _%__stx1940119402%_)))
                                  (let ((_%tl79018030%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e78998023%_)))
                                        (_%hd79008027%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e78998023%_))))
                                    (if (gx#stx-pair? _%tl79018030%_)
                                        (let ((_%e79028033%_
                                               (gx#syntax-e _%tl79018030%_)))
                                          (let ((_%tl79048040%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e79028033%_)))
                                                (_%hd79038037%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e79028033%_))))
                                            (_%__match1942419425%_
                                             _%e78998023%_
                                             _%hd79008027%_
                                             _%tl79018030%_
                                             _%e79028033%_
                                             _%hd79038037%_
                                             _%tl79048040%_)))
                                        (if (gx#stx-datum? _%hd79008027%_)
                                            (let ((_%e79107986%_
                                                   (gx#stx-e _%hd79008027%_)))
                                              (_%__kont1940819409%_
                                               _%tl79018030%_
                                               _%hd79008027%_))
                                            (_%__kont1940819409%_
                                             _%tl79018030%_
                                             _%hd79008027%_)))))
                                (_%__kont1941019411%_))))))))
                 (_%check-duplicate-bindings5374%_
                  (lambda (_%hd7571%_)
                    (let _%lp7574%_ ((_%rest7577%_ _%hd7571%_)
                                     (_%ids7579%_ '()))
                      (let* ((_%__stx1947519476%_ _%rest7577%_)
                             (_%g75827594%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1947519476%_))))
                        (let ((_%__kont1947819479%_
                               (lambda (_%L7622%_ _%L7624%_)
                                 (if (gx#identifier? _%L7624%_)
                                     (_%lp7574%_
                                      _%L7622%_
                                      (cons _%L7624%_ _%ids7579%_))
                                     (if (gx#stx-pair? _%L7624%_)
                                         (let* ((_%g76437657%_
                                                 (lambda (_%g76447653%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g76447653%_)))
                                                (_%g76427699%_
                                                 (lambda (_%g76447661%_)
                                                   (if (gx#stx-pair?
                                                        _%g76447661%_)
                                                       (let ((_%e76467664%_
                                                              (gx#syntax-e
                                                               _%g76447661%_)))
                                                         (let ((_%hd76477668%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e76467664%_)))
                       (_%tl76487671%_
                        (let () (declare (not safe)) (##cdr _%e76467664%_))))
                   (if (gx#stx-pair? _%tl76487671%_)
                       (let ((_%e76497674%_ (gx#syntax-e _%tl76487671%_)))
                         (let ((_%hd76507678%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e76497674%_)))
                               (_%tl76517681%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e76497674%_))))
                           (if (gx#stx-null? _%tl76517681%_)
                               ((lambda (_%L7684%_)
                                  (_%lp7574%_
                                   _%L7622%_
                                   (cons _%L7684%_ _%ids7579%_)))
                                _%hd76477668%_)
                               (_%g76437657%_ _%g76447661%_))))
                       (_%g76437657%_ _%g76447661%_))))
               (_%g76437657%_ _%g76447661%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g76427699%_ _%L7624%_))
                                         (if (gx#stx-keyword? _%L7624%_)
                                             (let* ((_%g77057717%_
                                                     (lambda (_%g77067713%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g77067713%_)))
                                                    (_%g77047820%_
                                                     (lambda (_%g77067721%_)
                                                       (if (gx#stx-pair?
                                                            _%g77067721%_)
                                                           (let ((_%e77097724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g77067721%_)))
                     (let ((_%hd77107728%_
                            (let ()
                              (declare (not safe))
                              (##car _%e77097724%_)))
                           (_%tl77117731%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e77097724%_))))
                       ((lambda (_%L7734%_ _%L7736%_)
                          (let* ((_%__stx1945119452%_ _%L7736%_)
                                 (_%g77497763%_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx1945119452%_))))
                            (let ((_%__kont1945419455%_
                                   (lambda (_%L7801%_)
                                     (_%lp7574%_
                                      _%L7734%_
                                      (cons _%L7801%_ _%ids7579%_))))
                                  (_%__kont1945619457%_
                                   (lambda ()
                                     (_%lp7574%_
                                      _%L7734%_
                                      (cons _%L7736%_ _%ids7579%_)))))
                              (if (gx#stx-pair? _%__stx1945119452%_)
                                  (let ((_%e77527781%_
                                         (gx#syntax-e _%__stx1945119452%_)))
                                    (let ((_%tl77547788%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e77527781%_)))
                                          (_%hd77537785%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e77527781%_))))
                                      (if (gx#stx-pair? _%tl77547788%_)
                                          (let ((_%e77557791%_
                                                 (gx#syntax-e _%tl77547788%_)))
                                            (let ((_%tl77577798%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e77557791%_)))
                                                  (_%hd77567795%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e77557791%_))))
                                              (if (gx#stx-null? _%tl77577798%_)
                                                  (_%__kont1945419455%_
                                                   _%hd77537785%_)
                                                  (_%__kont1945619457%_))))
                                          (_%__kont1945619457%_))))
                                  (_%__kont1945619457%_)))))
                        _%tl77117731%_
                        _%hd77107728%_)))
                   (_%g77057717%_ _%g77067721%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g77047820%_ _%L7622%_))
                                             (if (eq? (gx#stx-e _%L7624%_)
                                                      '#!key)
                                                 (let* ((_%g78267838%_
                                                         (lambda (_%g78277834%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g78277834%_)))
                                                        (_%g78257869%_
                                                         (lambda (_%g78277842%_)
                                                           (if (gx#stx-pair?
                                                                _%g78277842%_)
                                                               (let ((_%e78307845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%g78277842%_)))
                         (let ((_%hd78317849%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e78307845%_)))
                               (_%tl78327852%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e78307845%_))))
                           ((lambda (_%L7855%_ _%L7857%_)
                              (_%lp7574%_
                               _%L7855%_
                               (cons _%L7857%_ _%ids7579%_)))
                            _%tl78327852%_
                            _%hd78317849%_)))
                       (_%g78267838%_ _%g78277842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g78257869%_ _%L7622%_))
                                                 (error '"BUG: check-duplicate-bindings"
                                                        _%stx5365%_
                                                        _%rest7577%_)))))))
                              (_%__kont1948019481%_
                               (lambda ()
                                 (gx#check-duplicate-identifiers
                                  (if (gx#stx-null? _%rest7577%_)
                                      _%ids7579%_
                                      (cons _%rest7577%_ _%ids7579%_))
                                  _%stx5365%_))))
                          (if (gx#stx-pair? _%__stx1947519476%_)
                              (let ((_%e75867612%_
                                     (gx#syntax-e _%__stx1947519476%_)))
                                (let ((_%tl75887619%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e75867612%_)))
                                      (_%hd75877616%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e75867612%_))))
                                  (_%__kont1947819479%_
                                   _%tl75887619%_
                                   _%hd75877616%_)))
                              (_%__kont1948019481%_)))))))
                 (_%generate-opt-primary5375%_
                  (lambda (_%pre7363%_ _%opt7365%_ _%tail7366%_ _%body7367%_)
                    (let* ((_%g73697410%_
                            (lambda (_%g73707406%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g73707406%_)))
                           (_%g73687567%_
                            (lambda (_%g73707414%_)
                              (if (gx#stx-pair? _%g73707414%_)
                                  (let ((_%e73757417%_
                                         (gx#syntax-e _%g73707414%_)))
                                    (let ((_%hd73767421%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e73757417%_)))
                                          (_%tl73777424%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e73757417%_))))
                                      (if (gx#stx-pair/null? _%hd73767421%_)
                                          (let ((_g20964_
                                                 (gx#syntax-split-splice
                                                  _%hd73767421%_
                                                  '0)))
                                            (begin
                                              (let ((_g20965_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20964_)
                                                           (##vector-length
                                                            _g20964_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20965_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20965_)))
                                              (let ((_%target73787427%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20964_
                                                        0)))
                                                    (_%tl73807430%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20964_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl73807430%_)
                                                    (letrec ((_%loop73817433%_
                                                              (lambda (_%hd73797437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%pre73857440%_)
                        (if (gx#stx-pair? _%hd73797437%_)
                            (let ((_%e73827443%_ (gx#syntax-e _%hd73797437%_)))
                              (let ((_%lp-hd73837447%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e73827443%_)))
                                    (_%lp-tl73847450%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e73827443%_))))
                                (_%loop73817433%_
                                 _%lp-tl73847450%_
                                 (cons _%lp-hd73837447%_ _%pre73857440%_))))
                            (let ((_%pre73867453%_ (reverse _%pre73857440%_)))
                              (if (gx#stx-pair? _%tl73777424%_)
                                  (let ((_%e73877457%_
                                         (gx#syntax-e _%tl73777424%_)))
                                    (let ((_%hd73887461%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e73877457%_)))
                                          (_%tl73897464%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e73877457%_))))
                                      (if (gx#stx-pair/null? _%hd73887461%_)
                                          (let ((_g20966_
                                                 (gx#syntax-split-splice
                                                  _%hd73887461%_
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
                                              (let ((_%target73907467%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20966_
                                                        0)))
                                                    (_%tl73927470%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20966_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl73927470%_)
                                                    (letrec ((_%loop73937473%_
                                                              (lambda (_%hd73917477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%opt73977480%_)
                        (if (gx#stx-pair? _%hd73917477%_)
                            (let ((_%e73947483%_ (gx#syntax-e _%hd73917477%_)))
                              (let ((_%lp-hd73957487%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e73947483%_)))
                                    (_%lp-tl73967490%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e73947483%_))))
                                (_%loop73937473%_
                                 _%lp-tl73967490%_
                                 (cons _%lp-hd73957487%_ _%opt73977480%_))))
                            (let ((_%opt73987493%_ (reverse _%opt73977480%_)))
                              (if (gx#stx-pair? _%tl73897464%_)
                                  (let ((_%e73997497%_
                                         (gx#syntax-e _%tl73897464%_)))
                                    (let ((_%hd74007501%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e73997497%_)))
                                          (_%tl74017504%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e73997497%_))))
                                      (if (gx#stx-pair? _%tl74017504%_)
                                          (let ((_%e74027507%_
                                                 (gx#syntax-e _%tl74017504%_)))
                                            (let ((_%hd74037511%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e74027507%_)))
                                                  (_%tl74047514%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e74027507%_))))
                                              (if (gx#stx-null? _%tl74047514%_)
                                                  ((lambda (_%L7517%_
                                                            _%L7519%_
                                                            _%L7520%_
                                                            _%L7521%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda%)
                                                           (cons (foldr (lambda (_%g75507555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _%g75517558%_)
                                  (cons _%g75507555%_ _%g75517558%_))
                                (foldr (lambda (_%g75527561%_ _%g75537564%_)
                                         (cons _%g75527561%_ _%g75537564%_))
                                       _%L7519%_
                                       _%L7520%_)
                                _%L7521%_)
                         _%L7517%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%hd74037511%_
                                                   _%hd74007501%_
                                                   _%opt73987493%_
                                                   _%pre73867453%_)
                                                  (_%g73697410%_
                                                   _%g73707414%_))))
                                          (_%g73697410%_ _%g73707414%_))))
                                  (_%g73697410%_ _%g73707414%_)))))))
              (_%loop73937473%_ _%target73907467%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g73697410%_
                                                     _%g73707414%_)))))
                                          (_%g73697410%_ _%g73707414%_))))
                                  (_%g73697410%_ _%g73707414%_)))))))
              (_%loop73817433%_ _%target73787427%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g73697410%_
                                                     _%g73707414%_)))))
                                          (_%g73697410%_ _%g73707414%_))))
                                  (_%g73697410%_ _%g73707414%_)))))
                      (_%g73687567%_
                       (list _%pre7363%_
                             (map car _%opt7365%_)
                             _%tail7366%_
                             _%body7367%_)))))
                 (_%generate-opt-dispatch5376%_
                  (lambda (_%primary7357%_
                           _%pre7359%_
                           _%opt7360%_
                           _%tail7361%_)
                    (cons (list _%pre7359%_
                                (_%generate-opt-clause5378%_
                                 _%primary7357%_
                                 _%pre7359%_
                                 _%opt7360%_))
                          (_%generate-opt-dispatch*5377%_
                           _%primary7357%_
                           _%pre7359%_
                           _%opt7360%_
                           _%tail7361%_))))
                 (_%generate-opt-dispatch*5377%_
                  (lambda (_%primary6906%_
                           _%pre6908%_
                           _%opt6909%_
                           _%tail6910%_)
                    (let _%recur6912%_ ((_%opt-rest6915%_ _%opt6909%_)
                                        (_%right6917%_ '()))
                      (if (pair? _%opt-rest6915%_)
                          (let* ((_%hd6921%_ (caar _%opt-rest6915%_))
                                 (_%rest6924%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%opt-rest6915%_)))
                                 (_%right*6927%_
                                  (cons _%hd6921%_ _%right6917%_))
                                 (_%g69306947%_
                                  (lambda (_%g69316943%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g69316943%_)))
                                 (_%g69297131%_
                                  (lambda (_%g69316951%_)
                                    (if (gx#stx-pair/null? _%g69316951%_)
                                        (let ((_g20968_
                                               (gx#syntax-split-splice
                                                _%g69316951%_
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
                                            (let ((_%target69336954%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g20968_
                                                      0)))
                                                  (_%tl69356957%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g20968_
                                                      1))))
                                              (if (gx#stx-null? _%tl69356957%_)
                                                  (letrec ((_%loop69366960%_
                                                            (lambda (_%hd69346964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%pre-bind69406967%_)
                      (if (gx#stx-pair? _%hd69346964%_)
                          (let ((_%e69376970%_ (gx#syntax-e _%hd69346964%_)))
                            (let ((_%lp-hd69386974%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e69376970%_)))
                                  (_%lp-tl69396977%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e69376970%_))))
                              (_%loop69366960%_
                               _%lp-tl69396977%_
                               (cons _%lp-hd69386974%_ _%pre-bind69406967%_))))
                          (let ((_%pre-bind69416980%_
                                 (reverse _%pre-bind69406967%_)))
                            ((lambda (_%L6984%_)
                               (let* ((_%g70067023%_
                                       (lambda (_%g70077019%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g70077019%_)))
                                      (_%g70057127%_
                                       (lambda (_%g70077027%_)
                                         (if (gx#stx-pair/null? _%g70077027%_)
                                             (let ((_g20970_
                                                    (gx#syntax-split-splice
                                                     _%g70077027%_
                                                     '0)))
                                               (begin
                                                 (let ((_g20971_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g20970_)
                                                              (##vector-length
                                                               _g20970_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g20971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g20971_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target70097030%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g20970_
                                                           0)))
                                                       (_%tl70117033%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g20970_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl70117033%_)
                                                       (letrec ((_%loop70127036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd70107040%_ _%opt-bind70167043%_)
                           (if (gx#stx-pair? _%hd70107040%_)
                               (let ((_%e70137046%_
                                      (gx#syntax-e _%hd70107040%_)))
                                 (let ((_%lp-hd70147050%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e70137046%_)))
                                       (_%lp-tl70157053%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e70137046%_))))
                                   (_%loop70127036%_
                                    _%lp-tl70157053%_
                                    (cons _%lp-hd70147050%_
                                          _%opt-bind70167043%_))))
                               (let ((_%opt-bind70177056%_
                                      (reverse _%opt-bind70167043%_)))
                                 ((lambda (_%L7060%_)
                                    (let* ((_%g70777085%_
                                            (lambda (_%g70787081%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g70787081%_)))
                                           (_%g70767123%_
                                            (lambda (_%g70787089%_)
                                              ((lambda (_%L7092%_)
                                                 (cons (list (foldr (lambda (_%g71067111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g71077114%_)
                              (cons _%g71067111%_ _%g71077114%_))
                            (foldr (lambda (_%g71087117%_ _%g71097120%_)
                                     (cons _%g71087117%_ _%g71097120%_))
                                   (cons _%L7092%_ '())
                                   _%L7060%_)
                            _%L6984%_)
                     (_%generate-opt-clause5378%_
                      _%primary6906%_
                      (foldr cons (reverse _%right*6927%_) _%pre6908%_)
                      _%rest6924%_))
               (_%recur6912%_ _%rest6924%_ _%right*6927%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g70787089%_))))
                                      (_%g70767123%_ _%hd6921%_)))
                                  _%opt-bind70177056%_))))))
                 (_%loop70127036%_ _%target70097030%_ '()))
               (_%g70067023%_ _%g70077027%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g70067023%_ _%g70077027%_)))))
                                 (_%g70057127%_ (reverse _%right6917%_))))
                             _%pre-bind69416980%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop69366960%_
                                                     _%target69336954%_
                                                     '()))
                                                  (_%g69306947%_
                                                   _%g69316951%_)))))
                                        (_%g69306947%_ _%g69316951%_)))))
                            (_%g69297131%_ _%pre6908%_))
                          (if (gx#stx-null? _%tail6910%_)
                              '()
                              (let* ((_%g71397180%_
                                      (lambda (_%g71407176%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g71407176%_)))
                                     (_%g71387353%_
                                      (lambda (_%g71407184%_)
                                        (if (gx#stx-pair? _%g71407184%_)
                                            (let ((_%e71457187%_
                                                   (gx#syntax-e
                                                    _%g71407184%_)))
                                              (let ((_%hd71467191%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71457187%_)))
                                                    (_%tl71477194%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71457187%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd71467191%_)
                                                    (let ((_g20972_
                                                           (gx#syntax-split-splice
                                                            _%hd71467191%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20973_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g20972_)
                             (##vector-length _g20972_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g20973_ 2)))
                      (error "Context expects 2 values" _g20973_)))
                (let ((_%target71487197%_
                       (let () (declare (not safe)) (##vector-ref _g20972_ 0)))
                      (_%tl71507200%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g20972_ 1))))
                  (if (gx#stx-null? _%tl71507200%_)
                      (letrec ((_%loop71517203%_
                                (lambda (_%hd71497207%_ _%pre71557210%_)
                                  (if (gx#stx-pair? _%hd71497207%_)
                                      (let ((_%e71527213%_
                                             (gx#syntax-e _%hd71497207%_)))
                                        (let ((_%lp-hd71537217%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e71527213%_)))
                                              (_%lp-tl71547220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e71527213%_))))
                                          (_%loop71517203%_
                                           _%lp-tl71547220%_
                                           (cons _%lp-hd71537217%_
                                                 _%pre71557210%_))))
                                      (let ((_%pre71567223%_
                                             (reverse _%pre71557210%_)))
                                        (if (gx#stx-pair? _%tl71477194%_)
                                            (let ((_%e71577227%_
                                                   (gx#syntax-e
                                                    _%tl71477194%_)))
                                              (let ((_%hd71587231%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71577227%_)))
                                                    (_%tl71597234%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71577227%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd71587231%_)
                                                    (let ((_g20974_
                                                           (gx#syntax-split-splice
                                                            _%hd71587231%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20975_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g20974_)
                             (##vector-length _g20974_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g20975_ 2)))
                      (error "Context expects 2 values" _g20975_)))
                (let ((_%target71607237%_
                       (let () (declare (not safe)) (##vector-ref _g20974_ 0)))
                      (_%tl71627240%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g20974_ 1))))
                  (if (gx#stx-null? _%tl71627240%_)
                      (letrec ((_%loop71637243%_
                                (lambda (_%hd71617247%_ _%opt71677250%_)
                                  (if (gx#stx-pair? _%hd71617247%_)
                                      (let ((_%e71647253%_
                                             (gx#syntax-e _%hd71617247%_)))
                                        (let ((_%lp-hd71657257%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e71647253%_)))
                                              (_%lp-tl71667260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e71647253%_))))
                                          (_%loop71637243%_
                                           _%lp-tl71667260%_
                                           (cons _%lp-hd71657257%_
                                                 _%opt71677250%_))))
                                      (let ((_%opt71687263%_
                                             (reverse _%opt71677250%_)))
                                        (if (gx#stx-pair? _%tl71597234%_)
                                            (let ((_%e71697267%_
                                                   (gx#syntax-e
                                                    _%tl71597234%_)))
                                              (let ((_%hd71707271%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71697267%_)))
                                                    (_%tl71717274%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71697267%_))))
                                                (if (gx#stx-pair?
                                                     _%tl71717274%_)
                                                    (let ((_%e71727277%_
                                                           (gx#syntax-e
                                                            _%tl71717274%_)))
                                                      (let ((_%hd71737281%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e71727277%_)))
                    (_%tl71747284%_
                     (let () (declare (not safe)) (##cdr _%e71727277%_))))
                (if (gx#stx-null? _%tl71747284%_)
                    ((lambda (_%L7287%_ _%L7289%_ _%L7290%_ _%L7291%_)
                       (list (list (foldr (lambda (_%g73207325%_ _%g73217328%_)
                                            (cons _%g73207325%_ _%g73217328%_))
                                          (foldr (lambda (_%g73227331%_
                                                          _%g73237334%_)
                                                   (cons _%g73227331%_
                                                         _%g73237334%_))
                                                 _%L7289%_
                                                 _%L7290%_)
                                          _%L7291%_)
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'apply)
                                          (cons _%L7287%_
                                                (foldr (lambda (_%g73367341%_
                                                                _%g73377344%_)
                                                         (cons _%g73367341%_
                                                               _%g73377344%_))
                                                       (foldr (lambda (_%g73387347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g73397350%_)
                        (cons _%g73387347%_ _%g73397350%_))
                      (cons _%L7289%_ '())
                      _%L7290%_)
               _%L7291%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (gx#stx-source _%stx5365%_)))))
                     _%hd71737281%_
                     _%hd71707271%_
                     _%opt71687263%_
                     _%pre71567223%_)
                    (_%g71397180%_ _%g71407184%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g71397180%_
                                                     _%g71407184%_))))
                                            (_%g71397180%_ _%g71407184%_)))))))
                        (_%loop71637243%_ _%target71607237%_ '()))
                      (_%g71397180%_ _%g71407184%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g71397180%_
                                                     _%g71407184%_))))
                                            (_%g71397180%_ _%g71407184%_)))))))
                        (_%loop71517203%_ _%target71487197%_ '()))
                      (_%g71397180%_ _%g71407184%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g71397180%_
                                                     _%g71407184%_))))
                                            (_%g71397180%_ _%g71407184%_)))))
                                (_%g71387353%_
                                 (list _%pre6908%_
                                       (reverse _%right6917%_)
                                       _%tail6910%_
                                       _%primary6906%_))))))))
                 (_%generate-opt-clause5378%_
                  (lambda (_%primary6604%_ _%pre6606%_ _%opt6607%_)
                    (let _%recur6609%_ ((_%opt-rest6612%_ _%opt6607%_)
                                        (_%right6614%_ '()))
                      (if (pair? _%opt-rest6612%_)
                          (let* ((_%hd6616%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%opt-rest6612%_)))
                                 (_%rest6619%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%opt-rest6612%_)))
                                 (_%g66226630%_
                                  (lambda (_%g66236626%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g66236626%_)))
                                 (_%g66216719%_
                                  (lambda (_%g66236634%_)
                                    ((lambda (_%L6637%_)
                                       (let* ((_%g66536661%_
                                               (lambda (_%g66546657%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g66546657%_)))
                                              (_%g66526715%_
                                               (lambda (_%g66546665%_)
                                                 ((lambda (_%L6668%_)
                                                    (let* ((_%g66816689%_
                                                            (lambda (_%g66826685%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g66826685%_)))
                                                           (_%g66806711%_
                                                            (lambda (_%g66826693%_)
                                                              ((lambda (_%L6696%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons (cons (cons (cons _%L6637%_ '())
                                                 (cons _%L6668%_ '()))
                                           '())
                                     (cons _%L6696%_ '()))))
                       _%g66826693%_))))
              (_%g66806711%_
               (_%recur6609%_ _%rest6619%_ (cons _%L6637%_ _%right6614%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g66546665%_))))
                                         (_%g66526715%_ (cdr _%hd6616%_))))
                                     _%g66236634%_))))
                            (_%g66216719%_ (car _%hd6616%_)))
                          (let* ((_%g67236760%_
                                  (lambda (_%g67246756%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g67246756%_)))
                                 (_%g67226902%_
                                  (lambda (_%g67246764%_)
                                    (if (gx#stx-pair? _%g67246764%_)
                                        (let ((_%e67286767%_
                                               (gx#syntax-e _%g67246764%_)))
                                          (let ((_%hd67296771%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67286767%_)))
                                                (_%tl67306774%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67286767%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd67296771%_)
                                                (let ((_g20976_
                                                       (gx#syntax-split-splice
                                                        _%hd67296771%_
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
                                                    (let ((_%target67316777%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20976_
                                                              0)))
                                                          (_%tl67336780%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20976_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl67336780%_)
                                                          (letrec ((_%loop67346783%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd67326787%_ _%pre67386790%_)
                              (if (gx#stx-pair? _%hd67326787%_)
                                  (let ((_%e67356793%_
                                         (gx#syntax-e _%hd67326787%_)))
                                    (let ((_%lp-hd67366797%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e67356793%_)))
                                          (_%lp-tl67376800%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e67356793%_))))
                                      (_%loop67346783%_
                                       _%lp-tl67376800%_
                                       (cons _%lp-hd67366797%_
                                             _%pre67386790%_))))
                                  (let ((_%pre67396803%_
                                         (reverse _%pre67386790%_)))
                                    (if (gx#stx-pair? _%tl67306774%_)
                                        (let ((_%e67406807%_
                                               (gx#syntax-e _%tl67306774%_)))
                                          (let ((_%hd67416811%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67406807%_)))
                                                (_%tl67426814%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67406807%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd67416811%_)
                                                (let ((_g20978_
                                                       (gx#syntax-split-splice
                                                        _%hd67416811%_
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
                                                    (let ((_%target67436817%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20978_
                                                              0)))
                                                          (_%tl67456820%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g20978_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl67456820%_)
                                                          (letrec ((_%loop67466823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd67446827%_ _%opt67506830%_)
                              (if (gx#stx-pair? _%hd67446827%_)
                                  (let ((_%e67476833%_
                                         (gx#syntax-e _%hd67446827%_)))
                                    (let ((_%lp-hd67486837%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e67476833%_)))
                                          (_%lp-tl67496840%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e67476833%_))))
                                      (_%loop67466823%_
                                       _%lp-tl67496840%_
                                       (cons _%lp-hd67486837%_
                                             _%opt67506830%_))))
                                  (let ((_%opt67516843%_
                                         (reverse _%opt67506830%_)))
                                    (if (gx#stx-pair? _%tl67426814%_)
                                        (let ((_%e67526847%_
                                               (gx#syntax-e _%tl67426814%_)))
                                          (let ((_%hd67536851%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67526847%_)))
                                                (_%tl67546854%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67526847%_))))
                                            (if (gx#stx-null? _%tl67546854%_)
                                                ((lambda (_%L6857%_
                                                          _%L6859%_
                                                          _%L6860%_)
                                                   (gx#stx-wrap-source
                                                    (cons _%L6857%_
                                                          (foldr (lambda (_%g68856890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g68866893%_)
                           (cons _%g68856890%_ _%g68866893%_))
                         (foldr (lambda (_%g68876896%_ _%g68886899%_)
                                  (cons _%g68876896%_ _%g68886899%_))
                                '()
                                _%L6859%_)
                         _%L6860%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _%stx5365%_)))
                                                 _%hd67536851%_
                                                 _%opt67516843%_
                                                 _%pre67396803%_)
                                                (_%g67236760%_
                                                 _%g67246764%_))))
                                        (_%g67236760%_ _%g67246764%_)))))))
                    (_%loop67466823%_ _%target67436817%_ '()))
                  (_%g67236760%_ _%g67246764%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g67236760%_
                                                 _%g67246764%_))))
                                        (_%g67236760%_ _%g67246764%_)))))))
                    (_%loop67346783%_ _%target67316777%_ '()))
                  (_%g67236760%_ _%g67246764%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g67236760%_
                                                 _%g67246764%_))))
                                        (_%g67236760%_ _%g67246764%_)))))
                            (_%g67226902%_
                             (list _%pre6606%_
                                   (reverse _%right6614%_)
                                   _%primary6604%_)))))))
                 (_%generate-kw-primary5379%_
                  (lambda (_%key5980%_
                           _%kwargs5982%_
                           _%args5983%_
                           _%body5984%_)
                    (letrec ((_%make-body5986%_
                              (lambda (_%kwargs6473%_ _%kwvals6475%_)
                                (if (pair? _%kwargs6473%_)
                                    (let* ((_%kwarg6477%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%kwargs6473%_)))
                                           (_%var6480%_ (cadr _%kwarg6477%_))
                                           (_%default6483%_
                                            (caddr _%kwarg6477%_))
                                           (_%kwval6486%_ (car _%kwvals6475%_))
                                           (_%rest-kwargs6489%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%kwargs6473%_)))
                                           (_%rest-kwvals6492%_
                                            (cdr _%kwvals6475%_))
                                           (_%g64976520%_
                                            (lambda (_%g64986516%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g64986516%_)))
                                           (_%g64966600%_
                                            (lambda (_%g64986524%_)
                                              (if (gx#stx-pair? _%g64986524%_)
                                                  (let ((_%e65036527%_
                                                         (gx#syntax-e
                                                          _%g64986524%_)))
                                                    (let ((_%hd65046531%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e65036527%_)))
                                                          (_%tl65056534%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e65036527%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl65056534%_)
                                                          (let ((_%e65066537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl65056534%_)))
                    (let ((_%hd65076541%_
                           (let () (declare (not safe)) (##car _%e65066537%_)))
                          (_%tl65086544%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e65066537%_))))
                      (if (gx#stx-pair? _%tl65086544%_)
                          (let ((_%e65096547%_ (gx#syntax-e _%tl65086544%_)))
                            (let ((_%hd65106551%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e65096547%_)))
                                  (_%tl65116554%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e65096547%_))))
                              (if (gx#stx-pair? _%tl65116554%_)
                                  (let ((_%e65126557%_
                                         (gx#syntax-e _%tl65116554%_)))
                                    (let ((_%hd65136561%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e65126557%_)))
                                          (_%tl65146564%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e65126557%_))))
                                      (if (gx#stx-null? _%tl65146564%_)
                                          ((lambda (_%L6567%_
                                                    _%L6569%_
                                                    _%L6570%_
                                                    _%L6571%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'let-values)
                                                   (cons (cons (cons (cons _%L6571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'eq?)
                                                     (cons _%L6570%_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'absent-value)
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L6569%_
                                                     (cons _%L6570%_ '()))))
                                   '()))
                       '())
                 (cons _%L6567%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd65136561%_
                                           _%hd65106551%_
                                           _%hd65076541%_
                                           _%hd65046531%_)
                                          (_%g64976520%_ _%g64986524%_))))
                                  (_%g64976520%_ _%g64986524%_))))
                          (_%g64976520%_ _%g64986524%_))))
                  (_%g64976520%_ _%g64986524%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g64976520%_
                                                   _%g64986524%_)))))
                                      (_%g64966600%_
                                       (list _%var6480%_
                                             _%kwval6486%_
                                             _%default6483%_
                                             (_%make-body5986%_
                                              _%rest-kwargs6489%_
                                              _%rest-kwvals6492%_))))
                                    (cons 'begin _%body5984%_))))
                             (_%make-main5988%_
                              (lambda ()
                                (let* ((_%g62816289%_
                                        (lambda (_%g62826285%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g62826285%_)))
                                       (_%g62806465%_
                                        (lambda (_%g62826293%_)
                                          ((lambda (_%L6296%_)
                                             (let* ((_%g63086325%_
                                                     (lambda (_%g63096321%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g63096321%_)))
                                                    (_%g63076461%_
                                                     (lambda (_%g63096329%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g63096329%_)
                                                           (let ((_g20980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g63096329%_ '0)))
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
                             (error "Context expects 2 values" _g20981_)))
                       (let ((_%target63116332%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g20980_ 0)))
                             (_%tl63136335%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g20980_ 1))))
                         (if (gx#stx-null? _%tl63136335%_)
                             (letrec ((_%loop63146338%_
                                       (lambda (_%hd63126342%_
                                                _%kwval63186345%_)
                                         (if (gx#stx-pair? _%hd63126342%_)
                                             (let ((_%e63156348%_
                                                    (gx#syntax-e
                                                     _%hd63126342%_)))
                                               (let ((_%lp-hd63166352%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e63156348%_)))
                                                     (_%lp-tl63176355%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e63156348%_))))
                                                 (_%loop63146338%_
                                                  _%lp-tl63176355%_
                                                  (cons _%lp-hd63166352%_
                                                        _%kwval63186345%_))))
                                             (let ((_%kwval63196358%_
                                                    (reverse _%kwval63186345%_)))
                                               ((lambda (_%L6362%_)
                                                  (let* ((_%g63796387%_
                                                          (lambda (_%g63806383%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g63806383%_)))
                                                         (_%g63786457%_
                                                          (lambda (_%g63806391%_)
                                                            ((lambda (_%L6394%_)
                                                               (let* ((_%g64076415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g64086411%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g64086411%_)))
                              (_%g64066445%_
                               (lambda (_%g64086419%_)
                                 ((lambda (_%L6422%_)
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (cons _%L6296%_
                                                       (foldr (lambda (_%g64366439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g64376442%_)
                        (cons _%g64366439%_ _%g64376442%_))
                      _%L6394%_
                      _%L6362%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L6422%_ '())))
                                     (gx#stx-source _%stx5365%_)))
                                  _%g64086419%_))))
                         (_%g64066445%_
                          (_%make-body5986%_
                           _%kwargs5982%_
                           (foldr (lambda (_%g64486451%_ _%g64496454%_)
                                    (cons _%g64486451%_ _%g64496454%_))
                                  '()
                                  _%L6362%_)))))
                     _%g63806391%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g63786457%_
                                                     _%args5983%_)))
                                                _%kwval63196358%_))))))
                               (_%loop63146338%_ _%target63116332%_ '()))
                             (_%g63086325%_ _%g63096329%_)))))
                   (_%g63086325%_ _%g63096329%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g63076461%_
                                                (gx#gentemps
                                                 (map cadr _%kwargs5982%_)))))
                                           _%g62826293%_))))
                                  (_%g62806465%_
                                   (let ((_%$e6469%_ _%key5980%_))
                                     (if _%$e6469%_
                                         _%$e6469%_
                                         (gx#syntax-local-introduce
                                          '@@keywords)))))))
                             (_%make-dispatch5989%_
                              (lambda (_%main6089%_)
                                (let* ((_%g60926100%_
                                        (lambda (_%g60936096%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g60936096%_)))
                                       (_%g60916271%_
                                        (lambda (_%g60936104%_)
                                          ((lambda (_%L6107%_)
                                             (let* ((_%g61196136%_
                                                     (lambda (_%g61206132%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g61206132%_)))
                                                    (_%g61186232%_
                                                     (lambda (_%g61206140%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g61206140%_)
                                                           (let ((_g20982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g61206140%_ '0)))
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
                       (let ((_%target61226143%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g20982_ 0)))
                             (_%tl61246146%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g20982_ 1))))
                         (if (gx#stx-null? _%tl61246146%_)
                             (letrec ((_%loop61256149%_
                                       (lambda (_%hd61236153%_
                                                _%get-kw61296156%_)
                                         (if (gx#stx-pair? _%hd61236153%_)
                                             (let ((_%e61266159%_
                                                    (gx#syntax-e
                                                     _%hd61236153%_)))
                                               (let ((_%lp-hd61276163%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e61266159%_)))
                                                     (_%lp-tl61286166%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e61266159%_))))
                                                 (_%loop61256149%_
                                                  _%lp-tl61286166%_
                                                  (cons _%lp-hd61276163%_
                                                        _%get-kw61296156%_))))
                                             (let ((_%get-kw61306169%_
                                                    (reverse _%get-kw61296156%_)))
                                               ((lambda (_%L6173%_)
                                                  (let* ((_%g61906198%_
                                                          (lambda (_%g61916194%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g61916194%_)))
                                                         (_%g61896228%_
                                                          (lambda (_%g61916202%_)
                                                            ((lambda (_%L6205%_)
                                                               (gx#stx-wrap-source
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'lambda)
                              (cons (cons _%L6107%_
                                          (gx#datum->syntax '#f 'args))
                                    (cons (cons (gx#datum->syntax '#f 'apply)
                                                (cons _%L6205%_
                                                      (cons _%L6107%_
                                                            (foldr (lambda (_%g62196222%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g62206225%_)
                             (cons _%g62196222%_ _%g62206225%_))
                           (cons (gx#datum->syntax '#f 'args) '())
                           _%L6173%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (gx#stx-source _%stx5365%_)))
                     _%g61916202%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g61896228%_
                                                     _%main6089%_)))
                                                _%get-kw61306169%_))))))
                               (_%loop61256149%_ _%target61226143%_ '()))
                             (_%g61196136%_ _%g61206140%_)))))
                   (_%g61196136%_ _%g61206140%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g61186232%_
                                                (map (lambda (_%kwarg6236%_)
                                                       (let* ((_%g62396247%_
                                                               (lambda (_%g62406243%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g62406243%_)))
                      (_%g62386267%_
                       (lambda (_%g62406251%_)
                         ((lambda (_%L6254%_)
                            (cons (gx#datum->syntax '#f 'symbolic-table-ref)
                                  (cons _%L6107%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%L6254%_ '()))
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'absent-value)
                                                    '())))))
                          _%g62406251%_))))
                 (_%g62386267%_ (car _%kwarg6236%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%kwargs5982%_))))
                                           _%g60936104%_))))
                                  (_%g60916271%_
                                   (let ((_%$e6275%_ _%key5980%_))
                                     (if _%$e6275%_
                                         _%$e6275%_
                                         (gx#syntax-local-introduce
                                          '@@keywords))))))))
                      (let* ((_%g59915999%_
                              (lambda (_%g59925995%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g59925995%_)))
                             (_%g59906085%_
                              (lambda (_%g59926003%_)
                                ((lambda (_%L6006%_)
                                   (let* ((_%g60196027%_
                                           (lambda (_%g60206023%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g60206023%_)))
                                          (_%g60186081%_
                                           (lambda (_%g60206031%_)
                                             ((lambda (_%L6034%_)
                                                (let* ((_%g60476055%_
                                                        (lambda (_%g60486051%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g60486051%_)))
                                                       (_%g60466077%_
                                                        (lambda (_%g60486059%_)
                                                          ((lambda (_%L6062%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons (cons (cons (cons _%L6006%_ '())
                                             (cons _%L6062%_ '()))
                                       '())
                                 (cons _%L6034%_ '()))))
                   _%g60486059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g60466077%_
                                                   (_%make-main5988%_))))
                                              _%g60206031%_))))
                                     (_%g60186081%_
                                      (_%make-dispatch5989%_ _%L6006%_))))
                                 _%g59926003%_))))
                        (_%g59906085%_ (gx#genident 'kw-lambda-main))))))
                 (_%generate-kw-dispatch5380%_
                  (lambda (_%primary5893%_ _%kwargs5895%_ _%strict?5896%_)
                    (let* ((_%g58985917%_
                            (lambda (_%g58995913%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g58995913%_)))
                           (_%g58975976%_
                            (lambda (_%g58995921%_)
                              (if (gx#stx-pair? _%g58995921%_)
                                  (let ((_%e59035924%_
                                         (gx#syntax-e _%g58995921%_)))
                                    (let ((_%hd59045928%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e59035924%_)))
                                          (_%tl59055931%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e59035924%_))))
                                      (if (gx#stx-pair? _%tl59055931%_)
                                          (let ((_%e59065934%_
                                                 (gx#syntax-e _%tl59055931%_)))
                                            (let ((_%hd59075938%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e59065934%_)))
                                                  (_%tl59085941%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e59065934%_))))
                                              (if (gx#stx-pair? _%tl59085941%_)
                                                  (let ((_%e59095944%_
                                                         (gx#syntax-e
                                                          _%tl59085941%_)))
                                                    (let ((_%hd59105948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e59095944%_)))
                                                          (_%tl59115951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e59095944%_))))
                                                      (if (gx#stx-null?
                                                           _%tl59115951%_)
                                                          ((lambda (_%L5954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L5956%_
                            _%L5957%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%L5954%_
                                 (cons (cons (gx#datum->syntax '#f 'apply)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'keyword-dispatch)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%L5957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L5956%_ (cons _%L5954%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _%hd59105948%_
                   _%hd59075938%_
                   _%hd59045928%_)
                  (_%g58985917%_ _%g58995921%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g58985917%_
                                                   _%g58995921%_))))
                                          (_%g58985917%_ _%g58995921%_))))
                                  (_%g58985917%_ _%g58995921%_)))))
                      (_%g58975976%_
                       (list (if _%strict?5896%_
                                 (_%generate-kw-table5381%_
                                  (map car _%kwargs5895%_))
                                 '#f)
                             _%primary5893%_
                             (gx#genident 'args))))))
                 (_%generate-kw-table5381%_
                  (lambda (_%kws5867%_)
                    (let _%rehash5870%_ ((_%pht5873%_
                                          (let ((__tmp20988
                                                 (length _%kws5867%_)))
                                            (declare (not safe))
                                            (##make-vector __tmp20988 '#f))))
                      (let _%lp5876%_ ((_%rest5879%_ _%kws5867%_))
                        (if (pair? _%rest5879%_)
                            (let* ((_%key5882%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest5879%_)))
                                   (_%rest5885%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest5879%_)))
                                   (_%pos5888%_
                                    (let ((__tmp20985
                                           (keyword-hash _%key5882%_))
                                          (__tmp20984
                                           (vector-length _%pht5873%_)))
                                      (declare (not safe))
                                      (##fxmodulo __tmp20985 __tmp20984))))
                              (if (vector-ref _%pht5873%_ _%pos5888%_)
                                  (if (let ((__tmp20986
                                             (vector-length _%pht5873%_)))
                                        (declare (not safe))
                                        (##fx< __tmp20986 '8192))
                                      (_%rehash5870%_
                                       (make-vector
                                        (quotient
                                         (let ((__tmp20987
                                                (vector-length _%pht5873%_)))
                                           (declare (not safe))
                                           (##fx* '3 __tmp20987))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _%kws5867%_))
                                  (begin
                                    (vector-set!
                                     _%pht5873%_
                                     _%pos5888%_
                                     _%key5882%_)
                                    (_%lp5876%_ _%rest5885%_))))
                            _%pht5873%_))))))
          (let* ((_%__stx1949119492%_ _%stx5365%_)
                 (_%g53855416%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1949119492%_))))
            (let ((_%__kont1949419495%_
                   (lambda (_%L5848%_ _%L5850%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%L5850%_ _%L5848%_))))
                  (_%__kont1949619497%_
                   (lambda (_%L5620%_ _%L5622%_)
                     (let ((_g20989_ (_%opt-lambda-split5371%_ _%L5622%_)))
                       (begin
                         (let ((_g20990_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g20989_)
                                      (##vector-length _g20989_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g20990_ 3)))
                               (error "Context expects 3 values" _g20990_)))
                         (let ((_%pre5635%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g20989_ 0)))
                               (_%opt5637%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g20989_ 1)))
                               (_%tail5638%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g20989_ 2))))
                           (let* ((_%g56405648%_
                                   (lambda (_%g56415644%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g56415644%_)))
                                  (_%g56395817%_
                                   (lambda (_%g56415652%_)
                                     ((lambda (_%L5655%_)
                                        (let* ((_%g56685676%_
                                                (lambda (_%g56695672%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g56695672%_)))
                                               (_%g56675813%_
                                                (lambda (_%g56695680%_)
                                                  ((lambda (_%L5683%_)
                                                     (let* ((_%g56965713%_
                                                             (lambda (_%g56975709%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g56975709%_)))
                                                            (_%g56955809%_
                                                             (lambda (_%g56975717%_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g56975717%_)
                           (let ((_g20991_
                                  (gx#syntax-split-splice _%g56975717%_ '0)))
                             (begin
                               (let ((_g20992_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g20991_)
                                            (##vector-length _g20991_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g20992_ 2)))
                                     (error "Context expects 2 values"
                                            _g20992_)))
                               (let ((_%target56995720%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g20991_ 0)))
                                     (_%tl57015723%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g20991_ 1))))
                                 (if (gx#stx-null? _%tl57015723%_)
                                     (letrec ((_%loop57025726%_
                                               (lambda (_%hd57005730%_
                                                        _%clause57065733%_)
                                                 (if (gx#stx-pair?
                                                      _%hd57005730%_)
                                                     (let ((_%e57035736%_
                                                            (gx#syntax-e
                                                             _%hd57005730%_)))
                                                       (let ((_%lp-hd57045740%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e57035736%_)))
                     (_%lp-tl57055743%_
                      (let () (declare (not safe)) (##cdr _%e57035736%_))))
                 (_%loop57025726%_
                  _%lp-tl57055743%_
                  (cons _%lp-hd57045740%_ _%clause57065733%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause57075746%_
                                                            (reverse _%clause57065733%_)))
                                                       ((lambda (_%L5750%_)
                                                          (let* ((_%g57675775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g57685771%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g57685771%_)))
                         (_%g57665797%_
                          (lambda (_%g57685779%_)
                            ((lambda (_%L5782%_)
                               (cons (gx#datum->syntax '#f 'let-values)
                                     (cons (cons (cons (cons _%L5655%_ '())
                                                       (cons _%L5683%_ '()))
                                                 '())
                                           (cons _%L5782%_ '()))))
                             _%g57685779%_))))
                    (_%g57665797%_
                     (gx#stx-wrap-source
                      (cons (gx#datum->syntax '#f 'case-lambda)
                            (foldr (lambda (_%g58005803%_ _%g58015806%_)
                                     (cons _%g58005803%_ _%g58015806%_))
                                   '()
                                   _%L5750%_))
                      (gx#stx-source _%stx5365%_)))))
                _%clause57075746%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop57025726%_
                                        _%target56995720%_
                                        '()))
                                     (_%g56965713%_ _%g56975717%_)))))
                           (_%g56965713%_ _%g56975717%_)))))
               (_%g56955809%_
                (_%generate-opt-dispatch5376%_
                 _%L5655%_
                 _%pre5635%_
                 _%opt5637%_
                 _%tail5638%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g56695680%_))))
                                          (_%g56675813%_
                                           (gx#stx-wrap-source
                                            (_%generate-opt-primary5375%_
                                             _%pre5635%_
                                             _%opt5637%_
                                             _%tail5638%_
                                             _%L5620%_)
                                            (gx#stx-source _%stx5365%_)))))
                                      _%g56415652%_))))
                             (_%g56395817%_ (gx#genident 'opt-lambda))))))))
                  (_%__kont1949819499%_
                   (lambda (_%L5443%_ _%L5445%_)
                     (let* ((_%g54615468%_
                             (lambda (_%g54625464%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g54625464%_)))
                            (_%g54605589%_
                             (lambda (_%g54625472%_)
                               ((lambda ()
                                  (let ((_g20993_
                                         (_%kw-lambda-split5373%_ _%L5445%_)))
                                    (begin
                                      (let ((_g20994_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g20993_)
                                                   (##vector-length _g20993_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g20994_ 3)))
                                            (error "Context expects 3 values"
                                                   _g20994_)))
                                      (let ((_%key5481%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g20993_ 0)))
                                            (_%kwargs5483%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g20993_ 1)))
                                            (_%args5484%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g20993_ 2))))
                                        (let* ((_%g54865494%_
                                                (lambda (_%g54875490%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g54875490%_)))
                                               (_%g54855585%_
                                                (lambda (_%g54875498%_)
                                                  ((lambda (_%L5501%_)
                                                     (let* ((_%g55195527%_
                                                             (lambda (_%g55205523%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g55205523%_)))
                                                            (_%g55185581%_
                                                             (lambda (_%g55205531%_)
                                                               ((lambda (_%L5534%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g55475555%_
                                  (lambda (_%g55485551%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g55485551%_)))
                                 (_%g55465577%_
                                  (lambda (_%g55485559%_)
                                    ((lambda (_%L5562%_)
                                       (cons (gx#datum->syntax '#f 'let-values)
                                             (cons (cons (cons (cons _%L5501%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _%L5534%_ '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%L5562%_ '()))))
                                     _%g55485559%_))))
                            (_%g55465577%_
                             (gx#stx-wrap-source
                              (_%generate-kw-dispatch5380%_
                               _%L5501%_
                               _%kwargs5483%_
                               (not _%key5481%_))
                              (gx#stx-source _%stx5365%_)))))
                        _%g55205531%_))))
               (_%g55185581%_
                (gx#stx-wrap-source
                 (_%generate-kw-primary5379%_
                  _%key5481%_
                  _%kwargs5483%_
                  _%args5484%_
                  _%L5443%_)
                 (gx#stx-source _%stx5365%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g54875498%_))))
                                          (_%g54855585%_
                                           (gx#genident 'kw-lambda)))))))))))
                       (_%g54605589%_
                        (_%check-duplicate-bindings5374%_ _%L5445%_))))))
              (let* ((_%__match1953619537%_
                      (lambda (_%e54055423%_
                               _%hd54065427%_
                               _%tl54075430%_
                               _%e54085433%_
                               _%hd54095437%_
                               _%tl54105440%_)
                        (let ((_%L5443%_ _%tl54105440%_)
                              (_%L5445%_ _%hd54095437%_))
                          (if (_%kw-lambda?5372%_ _%L5445%_)
                              (_%__kont1949819499%_ _%L5443%_ _%L5445%_)
                              (let () (declare (not safe)) (_%g53855416%_))))))
                     (_%__match1952419525%_
                      (lambda (_%e53975600%_
                               _%hd53985604%_
                               _%tl53995607%_
                               _%e54005610%_
                               _%hd54015614%_
                               _%tl54025617%_)
                        (let ((_%L5620%_ _%tl54025617%_)
                              (_%L5622%_ _%hd54015614%_))
                          (if (_%opt-lambda?5370%_ _%L5622%_)
                              (_%__kont1949619497%_ _%L5620%_ _%L5622%_)
                              (_%__match1953619537%_
                               _%e53975600%_
                               _%hd53985604%_
                               _%tl53995607%_
                               _%e54005610%_
                               _%hd54015614%_
                               _%tl54025617%_)))))
                     (_%__match1951219513%_
                      (lambda (_%e53895828%_
                               _%hd53905832%_
                               _%tl53915835%_
                               _%e53925838%_
                               _%hd53935842%_
                               _%tl53945845%_)
                        (let ((_%L5848%_ _%tl53945845%_)
                              (_%L5850%_ _%hd53935842%_))
                          (if (_%simple-lambda?5368%_ _%L5850%_)
                              (_%__kont1949419495%_ _%L5848%_ _%L5850%_)
                              (_%__match1952419525%_
                               _%e53895828%_
                               _%hd53905832%_
                               _%tl53915835%_
                               _%e53925838%_
                               _%hd53935842%_
                               _%tl53945845%_))))))
                (if (gx#stx-pair? _%__stx1949119492%_)
                    (let ((_%e53895828%_ (gx#syntax-e _%__stx1949119492%_)))
                      (let ((_%tl53915835%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e53895828%_)))
                            (_%hd53905832%_
                             (let ()
                               (declare (not safe))
                               (##car _%e53895828%_))))
                        (if (gx#stx-pair? _%tl53915835%_)
                            (let ((_%e53925838%_ (gx#syntax-e _%tl53915835%_)))
                              (let ((_%tl53945845%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e53925838%_)))
                                    (_%hd53935842%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e53925838%_))))
                                (_%__match1951219513%_
                                 _%e53895828%_
                                 _%hd53905832%_
                                 _%tl53915835%_
                                 _%e53925838%_
                                 _%hd53935842%_
                                 _%tl53945845%_)))
                            (let () (declare (not safe)) (_%g53855416%_)))))
                    (let () (declare (not safe)) (_%g53855416%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def|
      (lambda (_%$stx8790%_)
        (let* ((_%__stx1953919540%_ _%$stx8790%_)
               (_%g87968860%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1953919540%_))))
          (let ((_%__kont1954219543%_
                 (lambda (_%L9090%_ _%L9092%_ _%L9093%_ _%L9094%_)
                   (cons (gx#datum->syntax '#f 'def)
                         (cons (cons _%L9094%_ _%L9093%_)
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L9092%_
                                                 (foldr (lambda (_%g91169119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g91179122%_)
                  (cons _%g91169119%_ _%g91179122%_))
                '()
                _%L9090%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1954619547%_
                 (lambda (_%L8982%_ _%L8984%_ _%L8985%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L8985%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L8984%_
                                                 (foldr (lambda (_%g90049007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g90059010%_)
                  (cons _%g90049007%_ _%g90059010%_))
                '()
                _%L8982%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1955019551%_
                 (lambda (_%L8897%_ _%L8899%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L8899%_ '()) (cons _%L8897%_ '()))))))
            (let* ((_%__match1963019631%_
                    (lambda (_%e88468867%_
                             _%hd88478871%_
                             _%tl88488874%_
                             _%e88498877%_
                             _%hd88508881%_
                             _%tl88518884%_
                             _%e88528887%_
                             _%hd88538891%_
                             _%tl88548894%_)
                      (let ((_%L8897%_ _%hd88538891%_)
                            (_%L8899%_ _%hd88508881%_))
                        (if (gx#identifier? _%L8899%_)
                            (_%__kont1955019551%_ _%L8897%_ _%L8899%_)
                            (let () (declare (not safe)) (_%g87968860%_))))))
                   (_%__match1962219623%_
                    (lambda (_%e88468867%_
                             _%hd88478871%_
                             _%tl88488874%_
                             _%e88498877%_
                             _%hd88508881%_
                             _%tl88518884%_)
                      (if (gx#stx-pair? _%tl88518884%_)
                          (let ((_%e88528887%_ (gx#syntax-e _%tl88518884%_)))
                            (let ((_%tl88548894%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e88528887%_)))
                                  (_%hd88538891%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e88528887%_))))
                              (if (gx#stx-null? _%tl88548894%_)
                                  (_%__match1963019631%_
                                   _%e88468867%_
                                   _%hd88478871%_
                                   _%tl88488874%_
                                   _%e88498877%_
                                   _%hd88508881%_
                                   _%tl88518884%_
                                   _%e88528887%_
                                   _%hd88538891%_
                                   _%tl88548894%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g87968860%_)))))
                          (let () (declare (not safe)) (_%g87968860%_)))))
                   (_%__match1961019611%_
                    (lambda (_%e88268922%_
                             _%hd88278926%_
                             _%tl88288929%_
                             _%e88298932%_
                             _%hd88308936%_
                             _%tl88318939%_
                             _%e88328942%_
                             _%hd88338946%_
                             _%tl88348949%_
                             _%__splice1954819549%_
                             _%target88358952%_
                             _%tl88378955%_)
                      (letrec ((_%loop88388958%_
                                (lambda (_%hd88368962%_ _%body88428965%_)
                                  (if (gx#stx-pair? _%hd88368962%_)
                                      (let ((_%e88398968%_
                                             (gx#syntax-e _%hd88368962%_)))
                                        (let ((_%lp-tl88418975%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88398968%_)))
                                              (_%lp-hd88408972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88398968%_))))
                                          (_%loop88388958%_
                                           _%lp-tl88418975%_
                                           (cons _%lp-hd88408972%_
                                                 _%body88428965%_))))
                                      (let ((_%body88438978%_
                                             (reverse _%body88428965%_)))
                                        (let ((_%L8982%_ _%body88438978%_)
                                              (_%L8984%_ _%tl88348949%_)
                                              (_%L8985%_ _%hd88338946%_))
                                          (if (gx#identifier? _%L8985%_)
                                              (_%__kont1954619547%_
                                               _%L8982%_
                                               _%L8984%_
                                               _%L8985%_)
                                              (_%__match1962219623%_
                                               _%e88268922%_
                                               _%hd88278926%_
                                               _%tl88288929%_
                                               _%e88298932%_
                                               _%hd88308936%_
                                               _%tl88318939%_))))))))
                        (_%loop88388958%_ _%target88358952%_ '()))))
                   (_%__match1958419585%_
                    (lambda (_%e88029020%_
                             _%hd88039024%_
                             _%tl88049027%_
                             _%e88059030%_
                             _%hd88069034%_
                             _%tl88079037%_
                             _%e88089040%_
                             _%hd88099044%_
                             _%tl88109047%_
                             _%e88119050%_
                             _%hd88129054%_
                             _%tl88139057%_
                             _%__splice1954419545%_
                             _%target88149060%_
                             _%tl88169063%_)
                      (letrec ((_%loop88179066%_
                                (lambda (_%hd88159070%_ _%body88219073%_)
                                  (if (gx#stx-pair? _%hd88159070%_)
                                      (let ((_%e88189076%_
                                             (gx#syntax-e _%hd88159070%_)))
                                        (let ((_%lp-tl88209083%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88189076%_)))
                                              (_%lp-hd88199080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88189076%_))))
                                          (_%loop88179066%_
                                           _%lp-tl88209083%_
                                           (cons _%lp-hd88199080%_
                                                 _%body88219073%_))))
                                      (let ((_%body88229086%_
                                             (reverse _%body88219073%_)))
                                        (_%__kont1954219543%_
                                         _%body88229086%_
                                         _%tl88109047%_
                                         _%tl88139057%_
                                         _%hd88129054%_))))))
                        (_%loop88179066%_ _%target88149060%_ '())))))
              (if (gx#stx-pair? _%__stx1953919540%_)
                  (let ((_%e88029020%_ (gx#syntax-e _%__stx1953919540%_)))
                    (let ((_%tl88049027%_
                           (let () (declare (not safe)) (##cdr _%e88029020%_)))
                          (_%hd88039024%_
                           (let ()
                             (declare (not safe))
                             (##car _%e88029020%_))))
                      (if (gx#stx-pair? _%tl88049027%_)
                          (let ((_%e88059030%_ (gx#syntax-e _%tl88049027%_)))
                            (let ((_%tl88079037%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e88059030%_)))
                                  (_%hd88069034%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e88059030%_))))
                              (if (gx#stx-pair? _%hd88069034%_)
                                  (let ((_%e88089040%_
                                         (gx#syntax-e _%hd88069034%_)))
                                    (let ((_%tl88109047%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e88089040%_)))
                                          (_%hd88099044%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e88089040%_))))
                                      (if (gx#stx-pair? _%hd88099044%_)
                                          (let ((_%e88119050%_
                                                 (gx#syntax-e _%hd88099044%_)))
                                            (let ((_%tl88139057%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e88119050%_)))
                                                  (_%hd88129054%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e88119050%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl88079037%_)
                                                  (let ((_%__splice1954419545%_
                                                         (gx#syntax-split-splice
                                                          _%tl88079037%_
                                                          '0)))
                                                    (let ((_%tl88169063%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1954419545%_
                                                              '1)))
                                                          (_%target88149060%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1954419545%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl88169063%_)
                                                          (_%__match1958419585%_
                                                           _%e88029020%_
                                                           _%hd88039024%_
                                                           _%tl88049027%_
                                                           _%e88059030%_
                                                           _%hd88069034%_
                                                           _%tl88079037%_
                                                           _%e88089040%_
                                                           _%hd88099044%_
                                                           _%tl88109047%_
                                                           _%e88119050%_
                                                           _%hd88129054%_
                                                           _%tl88139057%_
                                                           _%__splice1954419545%_
                                                           _%target88149060%_
                                                           _%tl88169063%_)
                                                          (if (gx#stx-pair?
                                                               _%tl88079037%_)
                                                              (let ((_%e88528887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl88079037%_)))
                        (let ((_%tl88548894%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e88528887%_)))
                              (_%hd88538891%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e88528887%_))))
                          (if (gx#stx-null? _%tl88548894%_)
                              (_%__match1963019631%_
                               _%e88029020%_
                               _%hd88039024%_
                               _%tl88049027%_
                               _%e88059030%_
                               _%hd88069034%_
                               _%tl88079037%_
                               _%e88528887%_
                               _%hd88538891%_
                               _%tl88548894%_)
                              (let () (declare (not safe)) (_%g87968860%_)))))
                      (let () (declare (not safe)) (_%g87968860%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl88079037%_)
                                                      (let ((_%e88528887%_
                                                             (gx#syntax-e
                                                              _%tl88079037%_)))
                                                        (let ((_%tl88548894%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e88528887%_)))
                      (_%hd88538891%_
                       (let () (declare (not safe)) (##car _%e88528887%_))))
                  (if (gx#stx-null? _%tl88548894%_)
                      (_%__match1963019631%_
                       _%e88029020%_
                       _%hd88039024%_
                       _%tl88049027%_
                       _%e88059030%_
                       _%hd88069034%_
                       _%tl88079037%_
                       _%e88528887%_
                       _%hd88538891%_
                       _%tl88548894%_)
                      (let () (declare (not safe)) (_%g87968860%_)))))
              (let () (declare (not safe)) (_%g87968860%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl88079037%_)
                                              (let ((_%__splice1954819549%_
                                                     (gx#syntax-split-splice
                                                      _%tl88079037%_
                                                      '0)))
                                                (let ((_%tl88378955%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1954819549%_
                                                          '1)))
                                                      (_%target88358952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1954819549%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl88378955%_)
                                                      (_%__match1961019611%_
                                                       _%e88029020%_
                                                       _%hd88039024%_
                                                       _%tl88049027%_
                                                       _%e88059030%_
                                                       _%hd88069034%_
                                                       _%tl88079037%_
                                                       _%e88089040%_
                                                       _%hd88099044%_
                                                       _%tl88109047%_
                                                       _%__splice1954819549%_
                                                       _%target88358952%_
                                                       _%tl88378955%_)
                                                      (if (gx#stx-pair?
                                                           _%tl88079037%_)
                                                          (let ((_%e88528887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl88079037%_)))
                    (let ((_%tl88548894%_
                           (let () (declare (not safe)) (##cdr _%e88528887%_)))
                          (_%hd88538891%_
                           (let ()
                             (declare (not safe))
                             (##car _%e88528887%_))))
                      (if (gx#stx-null? _%tl88548894%_)
                          (_%__match1963019631%_
                           _%e88029020%_
                           _%hd88039024%_
                           _%tl88049027%_
                           _%e88059030%_
                           _%hd88069034%_
                           _%tl88079037%_
                           _%e88528887%_
                           _%hd88538891%_
                           _%tl88548894%_)
                          (let () (declare (not safe)) (_%g87968860%_)))))
                  (let () (declare (not safe)) (_%g87968860%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _%tl88079037%_)
                                                  (let ((_%e88528887%_
                                                         (gx#syntax-e
                                                          _%tl88079037%_)))
                                                    (let ((_%tl88548894%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e88528887%_)))
                                                          (_%hd88538891%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e88528887%_))))
                                                      (if (gx#stx-null?
                                                           _%tl88548894%_)
                                                          (_%__match1963019631%_
                                                           _%e88029020%_
                                                           _%hd88039024%_
                                                           _%tl88049027%_
                                                           _%e88059030%_
                                                           _%hd88069034%_
                                                           _%tl88079037%_
                                                           _%e88528887%_
                                                           _%hd88538891%_
                                                           _%tl88548894%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g87968860%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g87968860%_)))))))
                                  (if (gx#stx-pair? _%tl88079037%_)
                                      (let ((_%e88528887%_
                                             (gx#syntax-e _%tl88079037%_)))
                                        (let ((_%tl88548894%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88528887%_)))
                                              (_%hd88538891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88528887%_))))
                                          (if (gx#stx-null? _%tl88548894%_)
                                              (_%__match1963019631%_
                                               _%e88029020%_
                                               _%hd88039024%_
                                               _%tl88049027%_
                                               _%e88059030%_
                                               _%hd88069034%_
                                               _%tl88079037%_
                                               _%e88528887%_
                                               _%hd88538891%_
                                               _%tl88548894%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g87968860%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g87968860%_))))))
                          (let () (declare (not safe)) (_%g87968860%_)))))
                  (let () (declare (not safe)) (_%g87968860%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def*|
      (lambda (_%$stx9131%_)
        (let* ((_%g91359159%_
                (lambda (_%g91369155%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g91369155%_)))
               (_%g91349244%_
                (lambda (_%g91369163%_)
                  (if (gx#stx-pair? _%g91369163%_)
                      (let ((_%e91399166%_ (gx#syntax-e _%g91369163%_)))
                        (let ((_%hd91409170%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e91399166%_)))
                              (_%tl91419173%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e91399166%_))))
                          (if (gx#stx-pair? _%tl91419173%_)
                              (let ((_%e91429176%_
                                     (gx#syntax-e _%tl91419173%_)))
                                (let ((_%hd91439180%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e91429176%_)))
                                      (_%tl91449183%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e91429176%_))))
                                  (if (gx#stx-pair/null? _%tl91449183%_)
                                      (let ((_g20995_
                                             (gx#syntax-split-splice
                                              _%tl91449183%_
                                              '0)))
                                        (begin
                                          (let ((_g20996_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20995_)
                                                       (##vector-length
                                                        _g20995_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20996_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20996_)))
                                          (let ((_%target91459186%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20995_ 0)))
                                                (_%tl91479189%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20995_ 1))))
                                            (if (gx#stx-null? _%tl91479189%_)
                                                (letrec ((_%loop91489192%_
                                                          (lambda (_%hd91469196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clauses91529199%_)
                    (if (gx#stx-pair? _%hd91469196%_)
                        (let ((_%e91499202%_ (gx#syntax-e _%hd91469196%_)))
                          (let ((_%lp-hd91509206%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e91499202%_)))
                                (_%lp-tl91519209%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e91499202%_))))
                            (_%loop91489192%_
                             _%lp-tl91519209%_
                             (cons _%lp-hd91509206%_ _%clauses91529199%_))))
                        (let ((_%clauses91539212%_
                               (reverse _%clauses91529199%_)))
                          ((lambda (_%L9216%_ _%L9218%_)
                             (if (gx#identifier? _%L9218%_)
                                 (cons (gx#datum->syntax '#f 'define-values)
                                       (cons (cons _%L9218%_ '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'case-lambda)
                                                         (foldr (lambda (_%g92359238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g92369241%_)
                          (cons _%g92359238%_ _%g92369241%_))
                        '()
                        _%L9216%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 (_%g91359159%_ _%g91369163%_)))
                           _%clauses91539212%_
                           _%hd91439180%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop91489192%_
                                                   _%target91459186%_
                                                   '()))
                                                (_%g91359159%_
                                                 _%g91369163%_)))))
                                      (_%g91359159%_ _%g91369163%_))))
                              (_%g91359159%_ _%g91369163%_))))
                      (_%g91359159%_ _%g91369163%_)))))
          (_%g91349244%_ _%$stx9131%_))))
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
                                              ((lambda (_%L9308%_ _%L9310%_)
                                                 (if (gx#identifier-list?
                                                      _%L9310%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons _%L9310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L9308%_ '())))
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
               (_%g93339443%_
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
                                      (let ((_g20997_
                                             (gx#syntax-split-splice
                                              _%tl93439382%_
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
                                          (let ((_%target93449385%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20997_ 0)))
                                                (_%tl93469388%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20997_ 1))))
                                            (if (gx#stx-null? _%tl93469388%_)
                                                (letrec ((_%loop93479391%_
                                                          (lambda (_%hd93459395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause93519398%_)
                    (if (gx#stx-pair? _%hd93459395%_)
                        (let ((_%e93489401%_ (gx#syntax-e _%hd93459395%_)))
                          (let ((_%lp-hd93499405%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e93489401%_)))
                                (_%lp-tl93509408%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e93489401%_))))
                            (_%loop93479391%_
                             _%lp-tl93509408%_
                             (cons _%lp-hd93499405%_ _%clause93519398%_))))
                        (let ((_%clause93529411%_
                               (reverse _%clause93519398%_)))
                          ((lambda (_%L9415%_ _%L9417%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (gx#datum->syntax '#f '$e)
                                               (cons _%L9417%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '~case)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$e)
                                                           (foldr (lambda (_%g94349437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g94359440%_)
                            (cons _%g94349437%_ _%g94359440%_))
                          '()
                          _%L9415%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%clause93529411%_
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
          (_%g93339443%_ _%$stx9330%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case|
      (lambda (_%stx9448%_)
        (letrec ((_%parse-clauses9451%_
                  (lambda (_%e11926%_ _%clauses11928%_)
                    (let _%lp11930%_ ((_%rest11933%_ _%clauses11928%_)
                                      (_%datums11935%_ '())
                                      (_%dispatch11936%_ '())
                                      (_%default11937%_ '#f))
                      (let* ((_%__stx1972919730%_ _%rest11933%_)
                             (_%g1194011952%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1972919730%_))))
                        (let ((_%__kont1973219733%_
                               (lambda (_%L11984%_ _%L11986%_)
                                 (let* ((_%__stx1963319634%_ _%L11986%_)
                                        (_%g1200412077%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1963319634%_))))
                                   (let ((_%__kont1963619637%_
                                          (lambda (_%L12442%_)
                                            (if (gx#stx-null? _%L11984%_)
                                                (let* ((_%g1245712465%_
                                                        (lambda (_%g1245812461%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1245812461%_)))
                                                       (_%g1245612484%_
                                                        (lambda (_%g1245812469%_)
                                                          ((lambda (_%L12472%_)
                                                             (_%lp11930%_
                                                              '()
                                                              _%datums11935%_
                                                              _%dispatch11936%_
                                                              (cons _%L12442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L12472%_ '()))))
                   _%g1245812469%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1245612484%_ _%e11926%_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9448%_
                                                 _%L11986%_))))
                                         (_%__kont1963819639%_
                                          (lambda (_%L12382%_)
                                            (if (gx#stx-null? _%L11984%_)
                                                (_%lp11930%_
                                                 '()
                                                 _%datums11935%_
                                                 _%dispatch11936%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1239612399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1239712402%_)
                        (cons _%g1239612399%_ _%g1239712402%_))
                      '()
                      _%L12382%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9448%_
                                                 _%L11986%_))))
                                         (_%__kont1964219643%_
                                          (lambda (_%L12267%_ _%L12269%_)
                                            (if (null? (foldr (lambda (_%g1228712290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1228812293%_)
                        (cons _%g1228712290%_ _%g1228812293%_))
                      '()
                      _%L12269%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp11930%_
                                                 _%L11984%_
                                                 _%datums11935%_
                                                 _%dispatch11936%_
                                                 _%default11937%_)
                                                (let* ((_%g1229612304%_
                                                        (lambda (_%g1229712300%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1229712300%_)))
                                                       (_%g1229512331%_
                                                        (lambda (_%g1229712308%_)
                                                          ((lambda (_%L12311%_)
                                                             (_%lp11930%_
                                                              _%L11984%_
                                                              (cons (map gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (foldr (lambda (_%g1232212325%_
                                                 _%g1232312328%_)
                                          (cons _%g1232212325%_
                                                _%g1232312328%_))
                                        '()
                                        _%L12269%_))
                            _%datums11935%_)
                      (cons (cons _%L12267%_ (cons _%L12311%_ '()))
                            _%dispatch11936%_)
                      _%default11937%_))
                   _%g1229712308%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1229512331%_
                                                   _%e11926%_)))))
                                         (_%__kont1964619647%_
                                          (lambda (_%L12154%_ _%L12156%_)
                                            (if (null? (foldr (lambda (_%g1217512178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1217612181%_)
                        (cons _%g1217512178%_ _%g1217612181%_))
                      '()
                      _%L12156%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp11930%_
                                                 _%L11984%_
                                                 _%datums11935%_
                                                 _%dispatch11936%_
                                                 _%default11937%_)
                                                (_%lp11930%_
                                                 _%L11984%_
                                                 (cons (map gx#stx-e
                                                            (foldr (lambda (_%g1218312186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1218412189%_)
                             (cons _%g1218312186%_ _%g1218412189%_))
                           '()
                           _%L12156%_))
               _%datums11935%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (foldr (lambda (_%g1219112194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1219212197%_)
                              (cons _%g1219112194%_ _%g1219212197%_))
                            '()
                            _%L12154%_))
               _%dispatch11936%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%default11937%_)))))
                                     (let* ((_%__match1972619727%_
                                             (lambda (_%e1205112084%_
                                                      _%hd1205212088%_
                                                      _%tl1205312091%_
                                                      _%__splice1964819649%_
                                                      _%target1205412094%_
                                                      _%tl1205612097%_)
                                               (letrec ((_%loop1205712100%_
                                                         (lambda (_%hd1205512104%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1206112107%_)
                   (if (gx#stx-pair? _%hd1205512104%_)
                       (let ((_%e1205812110%_ (gx#syntax-e _%hd1205512104%_)))
                         (let ((_%lp-tl1206012117%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1205812110%_)))
                               (_%lp-hd1205912114%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1205812110%_))))
                           (_%loop1205712100%_
                            _%lp-tl1206012117%_
                            (cons _%lp-hd1205912114%_ _%datum1206112107%_))))
                       (let ((_%datum1206212120%_
                              (reverse _%datum1206112107%_)))
                         (if (gx#stx-pair/null? _%tl1205312091%_)
                             (let ((_%__splice1965019651%_
                                    (gx#syntax-split-splice
                                     _%tl1205312091%_
                                     '0)))
                               (let ((_%tl1206512127%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1965019651%_
                                         '1)))
                                     (_%target1206312124%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1965019651%_
                                         '0))))
                                 (if (gx#stx-null? _%tl1206512127%_)
                                     (letrec ((_%loop1206612130%_
                                               (lambda (_%hd1206412134%_
                                                        _%body1207012137%_)
                                                 (if (gx#stx-pair?
                                                      _%hd1206412134%_)
                                                     (let ((_%e1206712140%_
                                                            (gx#syntax-e
                                                             _%hd1206412134%_)))
                                                       (let ((_%lp-tl1206912147%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e1206712140%_)))
                     (_%lp-hd1206812144%_
                      (let () (declare (not safe)) (##car _%e1206712140%_))))
                 (_%loop1206612130%_
                  _%lp-tl1206912147%_
                  (cons _%lp-hd1206812144%_ _%body1207012137%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%body1207112150%_
                                                            (reverse _%body1207012137%_)))
                                                       (_%__kont1964619647%_
                                                        _%body1207112150%_
                                                        _%datum1206212120%_))))))
                                       (_%loop1206612130%_
                                        _%target1206312124%_
                                        '()))
                                     (let ()
                                       (declare (not safe))
                                       (_%g1200412077%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g1200412077%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1205712100%_
                                                  _%target1205412094%_
                                                  '()))))
                                            (_%__match1971219713%_
                                             (lambda (_%e1203112207%_
                                                      _%hd1203212211%_
                                                      _%tl1203312214%_
                                                      _%__splice1964419645%_
                                                      _%target1203412217%_
                                                      _%tl1203612220%_)
                                               (letrec ((_%loop1203712223%_
                                                         (lambda (_%hd1203512227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1204112230%_)
                   (if (gx#stx-pair? _%hd1203512227%_)
                       (let ((_%e1203812233%_ (gx#syntax-e _%hd1203512227%_)))
                         (let ((_%lp-tl1204012240%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1203812233%_)))
                               (_%lp-hd1203912237%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1203812233%_))))
                           (_%loop1203712223%_
                            _%lp-tl1204012240%_
                            (cons _%lp-hd1203912237%_ _%datum1204112230%_))))
                       (let ((_%datum1204212243%_
                              (reverse _%datum1204112230%_)))
                         (if (gx#stx-pair? _%tl1203312214%_)
                             (let ((_%e1204312247%_
                                    (gx#syntax-e _%tl1203312214%_)))
                               (let ((_%tl1204512254%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1204312247%_)))
                                     (_%hd1204412251%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1204312247%_))))
                                 (if (gx#identifier? _%hd1204412251%_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core/sugar~Sugar-2[1]#_g20999_|
                                          _%hd1204412251%_)
                                         (if (gx#stx-pair? _%tl1204512254%_)
                                             (let ((_%e1204612257%_
                                                    (gx#syntax-e
                                                     _%tl1204512254%_)))
                                               (let ((_%tl1204812264%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1204612257%_)))
                                                     (_%hd1204712261%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1204612257%_))))
                                                 (if (gx#stx-null?
                                                      _%tl1204812264%_)
                                                     (_%__kont1964219643%_
                                                      _%hd1204712261%_
                                                      _%datum1204212243%_)
                                                     (_%__match1972619727%_
                                                      _%e1203112207%_
                                                      _%hd1203212211%_
                                                      _%tl1203312214%_
                                                      _%__splice1964419645%_
                                                      _%target1203412217%_
                                                      _%tl1203612220%_))))
                                             (_%__match1972619727%_
                                              _%e1203112207%_
                                              _%hd1203212211%_
                                              _%tl1203312214%_
                                              _%__splice1964419645%_
                                              _%target1203412217%_
                                              _%tl1203612220%_))
                                         (_%__match1972619727%_
                                          _%e1203112207%_
                                          _%hd1203212211%_
                                          _%tl1203312214%_
                                          _%__splice1964419645%_
                                          _%target1203412217%_
                                          _%tl1203612220%_))
                                     (_%__match1972619727%_
                                      _%e1203112207%_
                                      _%hd1203212211%_
                                      _%tl1203312214%_
                                      _%__splice1964419645%_
                                      _%target1203412217%_
                                      _%tl1203612220%_))))
                             (_%__match1972619727%_
                              _%e1203112207%_
                              _%hd1203212211%_
                              _%tl1203312214%_
                              _%__splice1964419645%_
                              _%target1203412217%_
                              _%tl1203612220%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1203712223%_
                                                  _%target1203412217%_
                                                  '()))))
                                            (_%__match1969819699%_
                                             (lambda (_%e1201712342%_
                                                      _%hd1201812346%_
                                                      _%tl1201912349%_
                                                      _%__splice1964019641%_
                                                      _%target1202012352%_
                                                      _%tl1202212355%_)
                                               (letrec ((_%loop1202312358%_
                                                         (lambda (_%hd1202112362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body1202712365%_)
                   (if (gx#stx-pair? _%hd1202112362%_)
                       (let ((_%e1202412368%_ (gx#syntax-e _%hd1202112362%_)))
                         (let ((_%lp-tl1202612375%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1202412368%_)))
                               (_%lp-hd1202512372%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1202412368%_))))
                           (_%loop1202312358%_
                            _%lp-tl1202612375%_
                            (cons _%lp-hd1202512372%_ _%body1202712365%_))))
                       (let ((_%body1202812378%_ (reverse _%body1202712365%_)))
                         (_%__kont1963819639%_ _%body1202812378%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1202312358%_
                                                  _%target1202012352%_
                                                  '())))))
                                       (if (gx#stx-pair? _%__stx1963319634%_)
                                           (let ((_%e1200712412%_
                                                  (gx#syntax-e
                                                   _%__stx1963319634%_)))
                                             (let ((_%tl1200912419%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e1200712412%_)))
                                                   (_%hd1200812416%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e1200712412%_))))
                                               (if (gx#identifier?
                                                    _%hd1200812416%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/sugar~Sugar-2[1]#_g21000_|
                                                        _%hd1200812416%_)
                                                       (if (gx#stx-pair?
                                                            _%tl1200912419%_)
                                                           (let ((_%e1201012422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl1200912419%_)))
                     (let ((_%tl1201212429%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1201012422%_)))
                           (_%hd1201112426%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1201012422%_))))
                       (if (gx#identifier? _%hd1201112426%_)
                           (if (gx#free-identifier=?
                                |gerbil/core/sugar~Sugar-2[1]#_g21001_|
                                _%hd1201112426%_)
                               (if (gx#stx-pair? _%tl1201212429%_)
                                   (let ((_%e1201312432%_
                                          (gx#syntax-e _%tl1201212429%_)))
                                     (let ((_%tl1201512439%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e1201312432%_)))
                                           (_%hd1201412436%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e1201312432%_))))
                                       (if (gx#stx-null? _%tl1201512439%_)
                                           (_%__kont1963619637%_
                                            _%hd1201412436%_)
                                           (if (gx#stx-pair/null?
                                                _%tl1200912419%_)
                                               (let ((_%__splice1964019641%_
                                                      (gx#syntax-split-splice
                                                       _%tl1200912419%_
                                                       '0)))
                                                 (let ((_%tl1202212355%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1964019641%_
                                                           '1)))
                                                       (_%target1202012352%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1964019641%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1202212355%_)
                                                       (_%__match1969819699%_
                                                        _%e1200712412%_
                                                        _%hd1200812416%_
                                                        _%tl1200912419%_
                                                        _%__splice1964019641%_
                                                        _%target1202012352%_
                                                        _%tl1202212355%_)
                                                       (if (gx#stx-pair/null?
                                                            _%hd1200812416%_)
                                                           (let ((_%__splice1964419645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%hd1200812416%_ '0)))
                     (let ((_%tl1203612220%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1964419645%_ '1)))
                           (_%target1203412217%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1964419645%_ '0))))
                       (if (gx#stx-null? _%tl1203612220%_)
                           (_%__match1971219713%_
                            _%e1200712412%_
                            _%hd1200812416%_
                            _%tl1200912419%_
                            _%__splice1964419645%_
                            _%target1203412217%_
                            _%tl1203612220%_)
                           (let () (declare (not safe)) (_%g1200412077%_)))))
                   (let () (declare (not safe)) (_%g1200412077%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _%hd1200812416%_)
                                                   (let ((_%__splice1964419645%_
                                                          (gx#syntax-split-splice
                                                           _%hd1200812416%_
                                                           '0)))
                                                     (let ((_%tl1203612220%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1964419645%_
                                                               '1)))
                                                           (_%target1203412217%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1964419645%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1203612220%_)
                                                           (_%__match1971219713%_
                                                            _%e1200712412%_
                                                            _%hd1200812416%_
                                                            _%tl1200912419%_
                                                            _%__splice1964419645%_
                                                            _%target1203412217%_
                                                            _%tl1203612220%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1200412077%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1200412077%_)))))))
                                   (if (gx#stx-pair/null? _%tl1200912419%_)
                                       (let ((_%__splice1964019641%_
                                              (gx#syntax-split-splice
                                               _%tl1200912419%_
                                               '0)))
                                         (let ((_%tl1202212355%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1964019641%_
                                                   '1)))
                                               (_%target1202012352%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1964019641%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1202212355%_)
                                               (_%__match1969819699%_
                                                _%e1200712412%_
                                                _%hd1200812416%_
                                                _%tl1200912419%_
                                                _%__splice1964019641%_
                                                _%target1202012352%_
                                                _%tl1202212355%_)
                                               (if (gx#stx-pair/null?
                                                    _%hd1200812416%_)
                                                   (let ((_%__splice1964419645%_
                                                          (gx#syntax-split-splice
                                                           _%hd1200812416%_
                                                           '0)))
                                                     (let ((_%tl1203612220%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1964419645%_
                                                               '1)))
                                                           (_%target1203412217%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1964419645%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1203612220%_)
                                                           (_%__match1971219713%_
                                                            _%e1200712412%_
                                                            _%hd1200812416%_
                                                            _%tl1200912419%_
                                                            _%__splice1964419645%_
                                                            _%target1203412217%_
                                                            _%tl1203612220%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1200412077%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1200412077%_))))))
                                       (if (gx#stx-pair/null? _%hd1200812416%_)
                                           (let ((_%__splice1964419645%_
                                                  (gx#syntax-split-splice
                                                   _%hd1200812416%_
                                                   '0)))
                                             (let ((_%tl1203612220%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1964419645%_
                                                       '1)))
                                                   (_%target1203412217%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1964419645%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1203612220%_)
                                                   (_%__match1971219713%_
                                                    _%e1200712412%_
                                                    _%hd1200812416%_
                                                    _%tl1200912419%_
                                                    _%__splice1964419645%_
                                                    _%target1203412217%_
                                                    _%tl1203612220%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1200412077%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1200412077%_)))))
                               (if (gx#stx-pair/null? _%tl1200912419%_)
                                   (let ((_%__splice1964019641%_
                                          (gx#syntax-split-splice
                                           _%tl1200912419%_
                                           '0)))
                                     (let ((_%tl1202212355%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1964019641%_
                                               '1)))
                                           (_%target1202012352%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1964019641%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1202212355%_)
                                           (_%__match1969819699%_
                                            _%e1200712412%_
                                            _%hd1200812416%_
                                            _%tl1200912419%_
                                            _%__splice1964019641%_
                                            _%target1202012352%_
                                            _%tl1202212355%_)
                                           (if (gx#stx-pair/null?
                                                _%hd1200812416%_)
                                               (let ((_%__splice1964419645%_
                                                      (gx#syntax-split-splice
                                                       _%hd1200812416%_
                                                       '0)))
                                                 (let ((_%tl1203612220%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1964419645%_
                                                           '1)))
                                                       (_%target1203412217%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1964419645%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1203612220%_)
                                                       (_%__match1971219713%_
                                                        _%e1200712412%_
                                                        _%hd1200812416%_
                                                        _%tl1200912419%_
                                                        _%__splice1964419645%_
                                                        _%target1203412217%_
                                                        _%tl1203612220%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g1200412077%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1200412077%_))))))
                                   (if (gx#stx-pair/null? _%hd1200812416%_)
                                       (let ((_%__splice1964419645%_
                                              (gx#syntax-split-splice
                                               _%hd1200812416%_
                                               '0)))
                                         (let ((_%tl1203612220%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1964419645%_
                                                   '1)))
                                               (_%target1203412217%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1964419645%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1203612220%_)
                                               (_%__match1971219713%_
                                                _%e1200712412%_
                                                _%hd1200812416%_
                                                _%tl1200912419%_
                                                _%__splice1964419645%_
                                                _%target1203412217%_
                                                _%tl1203612220%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1200412077%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g1200412077%_)))))
                           (if (gx#stx-pair/null? _%tl1200912419%_)
                               (let ((_%__splice1964019641%_
                                      (gx#syntax-split-splice
                                       _%tl1200912419%_
                                       '0)))
                                 (let ((_%tl1202212355%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1964019641%_
                                           '1)))
                                       (_%target1202012352%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1964019641%_
                                           '0))))
                                   (if (gx#stx-null? _%tl1202212355%_)
                                       (_%__match1969819699%_
                                        _%e1200712412%_
                                        _%hd1200812416%_
                                        _%tl1200912419%_
                                        _%__splice1964019641%_
                                        _%target1202012352%_
                                        _%tl1202212355%_)
                                       (if (gx#stx-pair/null? _%hd1200812416%_)
                                           (let ((_%__splice1964419645%_
                                                  (gx#syntax-split-splice
                                                   _%hd1200812416%_
                                                   '0)))
                                             (let ((_%tl1203612220%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1964419645%_
                                                       '1)))
                                                   (_%target1203412217%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1964419645%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1203612220%_)
                                                   (_%__match1971219713%_
                                                    _%e1200712412%_
                                                    _%hd1200812416%_
                                                    _%tl1200912419%_
                                                    _%__splice1964419645%_
                                                    _%target1203412217%_
                                                    _%tl1203612220%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1200412077%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1200412077%_))))))
                               (if (gx#stx-pair/null? _%hd1200812416%_)
                                   (let ((_%__splice1964419645%_
                                          (gx#syntax-split-splice
                                           _%hd1200812416%_
                                           '0)))
                                     (let ((_%tl1203612220%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1964419645%_
                                               '1)))
                                           (_%target1203412217%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1964419645%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1203612220%_)
                                           (_%__match1971219713%_
                                            _%e1200712412%_
                                            _%hd1200812416%_
                                            _%tl1200912419%_
                                            _%__splice1964419645%_
                                            _%target1203412217%_
                                            _%tl1203612220%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1200412077%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1200412077%_)))))))
                   (if (gx#stx-pair/null? _%tl1200912419%_)
                       (let ((_%__splice1964019641%_
                              (gx#syntax-split-splice _%tl1200912419%_ '0)))
                         (let ((_%tl1202212355%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1964019641%_ '1)))
                               (_%target1202012352%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1964019641%_ '0))))
                           (if (gx#stx-null? _%tl1202212355%_)
                               (_%__match1969819699%_
                                _%e1200712412%_
                                _%hd1200812416%_
                                _%tl1200912419%_
                                _%__splice1964019641%_
                                _%target1202012352%_
                                _%tl1202212355%_)
                               (if (gx#stx-pair/null? _%hd1200812416%_)
                                   (let ((_%__splice1964419645%_
                                          (gx#syntax-split-splice
                                           _%hd1200812416%_
                                           '0)))
                                     (let ((_%tl1203612220%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1964419645%_
                                               '1)))
                                           (_%target1203412217%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1964419645%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1203612220%_)
                                           (_%__match1971219713%_
                                            _%e1200712412%_
                                            _%hd1200812416%_
                                            _%tl1200912419%_
                                            _%__splice1964419645%_
                                            _%target1203412217%_
                                            _%tl1203612220%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1200412077%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1200412077%_))))))
                       (if (gx#stx-pair/null? _%hd1200812416%_)
                           (let ((_%__splice1964419645%_
                                  (gx#syntax-split-splice
                                   _%hd1200812416%_
                                   '0)))
                             (let ((_%tl1203612220%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1964419645%_
                                       '1)))
                                   (_%target1203412217%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1964419645%_
                                       '0))))
                               (if (gx#stx-null? _%tl1203612220%_)
                                   (_%__match1971219713%_
                                    _%e1200712412%_
                                    _%hd1200812416%_
                                    _%tl1200912419%_
                                    _%__splice1964419645%_
                                    _%target1203412217%_
                                    _%tl1203612220%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g1200412077%_)))))
                           (let () (declare (not safe)) (_%g1200412077%_)))))
               (if (gx#stx-pair/null? _%hd1200812416%_)
                   (let ((_%__splice1964419645%_
                          (gx#syntax-split-splice _%hd1200812416%_ '0)))
                     (let ((_%tl1203612220%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1964419645%_ '1)))
                           (_%target1203412217%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1964419645%_ '0))))
                       (if (gx#stx-null? _%tl1203612220%_)
                           (_%__match1971219713%_
                            _%e1200712412%_
                            _%hd1200812416%_
                            _%tl1200912419%_
                            _%__splice1964419645%_
                            _%target1203412217%_
                            _%tl1203612220%_)
                           (let () (declare (not safe)) (_%g1200412077%_)))))
                   (let () (declare (not safe)) (_%g1200412077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%hd1200812416%_)
                                                       (let ((_%__splice1964419645%_
                                                              (gx#syntax-split-splice
                                                               _%hd1200812416%_
                                                               '0)))
                                                         (let ((_%tl1203612220%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice1964419645%_ '1)))
                       (_%target1203412217%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice1964419645%_ '0))))
                   (if (gx#stx-null? _%tl1203612220%_)
                       (_%__match1971219713%_
                        _%e1200712412%_
                        _%hd1200812416%_
                        _%tl1200912419%_
                        _%__splice1964419645%_
                        _%target1203412217%_
                        _%tl1203612220%_)
                       (let () (declare (not safe)) (_%g1200412077%_)))))
               (let () (declare (not safe)) (_%g1200412077%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_%g1200412077%_))))))))
                              (_%__kont1973419735%_
                               (lambda ()
                                 (_%check-duplicate-datums9453%_
                                  _%datums11935%_)
                                 (values (reverse _%datums11935%_)
                                         (reverse _%dispatch11936%_)
                                         (let ((_%$e11963%_ _%default11937%_))
                                           (if _%$e11963%_
                                               _%$e11963%_
                                               '#!void))))))
                          (let ((_%g1193911967%_
                                 (lambda ()
                                   (if (gx#stx-null? _%__stx1972919730%_)
                                       (_%__kont1973419735%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g1194011952%_))))))
                            (if (gx#stx-pair? _%__stx1972919730%_)
                                (let ((_%e1194411974%_
                                       (gx#syntax-e _%__stx1972919730%_)))
                                  (let ((_%tl1194611981%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1194411974%_)))
                                        (_%hd1194511978%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1194411974%_))))
                                    (_%__kont1973219733%_
                                     _%tl1194611981%_
                                     _%hd1194511978%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g1193911967%_)))))))))
                 (_%check-duplicate-datums9453%_
                  (lambda (_%datums11914%_)
                    (let ((_%ht11917%_ (make-hash-table)))
                      (for-each
                       (lambda (_%lst11920%_)
                         (for-each
                          (lambda (_%datum11923%_)
                            (if (hash-get _%ht11917%_ _%datum11923%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _%stx9448%_
                                 _%datum11923%_)
                                (hash-put! _%ht11917%_ _%datum11923%_ '#t)))
                          _%lst11920%_))
                       _%datums11914%_))))
                 (_%count-datums9454%_
                  (lambda (_%datums11907%_)
                    (foldl (lambda (_%lst11910%_ _%r11912%_)
                             (+ (length _%lst11910%_) _%r11912%_))
                           '0
                           _%datums11907%_)))
                 (_%symbolic-datums?9455%_
                  (lambda (_%datums11901%_)
                    (andmap (lambda (_%lst11904%_)
                              (andmap symbol? _%lst11904%_))
                            _%datums11901%_)))
                 (_%char-datums?9456%_
                  (lambda (_%datums11895%_)
                    (andmap (lambda (_%lst11898%_) (andmap char? _%lst11898%_))
                            _%datums11895%_)))
                 (_%fixnum-datums?9457%_
                  (lambda (_%datums11889%_)
                    (andmap (lambda (_%lst11892%_)
                              (andmap fixnum? _%lst11892%_))
                            _%datums11889%_)))
                 (_%eq-datums?9458%_
                  (lambda (_%datums11872%_)
                    (andmap (lambda (_%lst11875%_)
                              (andmap (lambda (_%x11878%_)
                                        (let ((_%$e11881%_
                                               (symbol? _%x11878%_)))
                                          (if _%$e11881%_
                                              _%$e11881%_
                                              (let ((_%$e11885%_
                                                     (keyword? _%x11878%_)))
                                                (if _%$e11885%_
                                                    _%$e11885%_
                                                    (immediate?
                                                     _%x11878%_))))))
                                      _%lst11875%_))
                            _%datums11872%_)))
                 (_%generate-simple-case9459%_
                  (lambda (_%e11636%_
                           _%datums11638%_
                           _%dispatch11639%_
                           _%default11640%_)
                    (let* ((_%g1164211650%_
                            (lambda (_%g1164311646%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1164311646%_)))
                           (_%g1164111868%_
                            (lambda (_%g1164311654%_)
                              ((lambda (_%L11657%_)
                                 (let _%recur11669%_ ((_%datums11672%_
                                                       _%datums11638%_)
                                                      (_%dispatch11674%_
                                                       _%dispatch11639%_))
                                   (let* ((_%__stx1974719748%_ _%datums11672%_)
                                          (_%g1167711698%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx1974719748%_))))
                                     (let ((_%__kont1975019751%_
                                            (lambda (_%L11756%_ _%L11758%_)
                                              (let* ((_%g1177811790%_
                                                      (lambda (_%g1177911786%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1177911786%_)))
                                                     (_%g1177711860%_
                                                      (lambda (_%g1177911794%_)
                                                        (if (gx#stx-pair?
                                                             _%g1177911794%_)
                                                            (let ((_%e1178211797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%g1177911794%_)))
                      (let ((_%hd1178311801%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1178211797%_)))
                            (_%tl1178411804%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1178211797%_))))
                        ((lambda (_%L11807%_ _%L11809%_)
                           (let* ((_%g1182111829%_
                                   (lambda (_%g1182211825%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g1182211825%_)))
                                  (_%g1182011856%_
                                   (lambda (_%g1182211833%_)
                                     ((lambda (_%L11836%_)
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'or)
                                                          (foldr (lambda (_%g1184711850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g1184811853%_)
                           (cons (cons (gx#datum->syntax '#f '~case-test)
                                       (cons _%g1184711850%_
                                             (cons _%L11657%_ '())))
                                 _%g1184811853%_))
                         '()
                         _%L11758%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L11809%_
                                                          (cons _%L11836%_
                                                                '())))))
                                      _%g1182211833%_))))
                             (_%g1182011856%_
                              (_%recur11669%_ _%L11756%_ _%L11807%_))))
                         _%tl1178411804%_
                         _%hd1178311801%_)))
                    (_%g1177811790%_ _%g1177911794%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1177711860%_
                                                 _%dispatch11674%_))))
                                           (_%__kont1975419755%_
                                            (lambda () _%default11640%_)))
                                       (let ((_%__match1977019771%_
                                              (lambda (_%e1168111716%_
                                                       _%hd1168211720%_
                                                       _%tl1168311723%_
                                                       _%__splice1975219753%_
                                                       _%target1168411726%_
                                                       _%tl1168611729%_)
                                                (letrec ((_%loop1168711732%_
                                                          (lambda (_%hd1168511736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%datum1169111739%_)
                    (if (gx#stx-pair? _%hd1168511736%_)
                        (let ((_%e1168811742%_ (gx#syntax-e _%hd1168511736%_)))
                          (let ((_%lp-tl1169011749%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1168811742%_)))
                                (_%lp-hd1168911746%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1168811742%_))))
                            (_%loop1168711732%_
                             _%lp-tl1169011749%_
                             (cons _%lp-hd1168911746%_ _%datum1169111739%_))))
                        (let ((_%datum1169211752%_
                               (reverse _%datum1169111739%_)))
                          (_%__kont1975019751%_
                           _%tl1168311723%_
                           _%datum1169211752%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1168711732%_
                                                   _%target1168411726%_
                                                   '())))))
                                         (if (gx#stx-pair? _%__stx1974719748%_)
                                             (let ((_%e1168111716%_
                                                    (gx#syntax-e
                                                     _%__stx1974719748%_)))
                                               (let ((_%tl1168311723%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1168111716%_)))
                                                     (_%hd1168211720%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1168111716%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%hd1168211720%_)
                                                     (let ((_%__splice1975219753%_
                                                            (gx#syntax-split-splice
                                                             _%hd1168211720%_
                                                             '0)))
                                                       (let ((_%tl1168611729%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice1975219753%_ '1)))
                     (_%target1168411726%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice1975219753%_ '0))))
                 (if (gx#stx-null? _%tl1168611729%_)
                     (_%__match1977019771%_
                      _%e1168111716%_
                      _%hd1168211720%_
                      _%tl1168311723%_
                      _%__splice1975219753%_
                      _%target1168411726%_
                      _%tl1168611729%_)
                     (_%__kont1975419755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont1975419755%_))))
                                             (_%__kont1975419755%_)))))))
                               _%g1164311654%_))))
                      (_%g1164111868%_ _%e11636%_))))
                 (_%datum-dispatch-index9460%_
                  (lambda (_%datums11508%_)
                    (let _%lp11511%_ ((_%rest11514%_ _%datums11508%_)
                                      (_%ix11516%_ '0)
                                      (_%r11517%_ '()))
                      (let* ((_%__stx1977319774%_ _%rest11514%_)
                             (_%g1152011541%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1977319774%_))))
                        (let ((_%__kont1977619777%_
                               (lambda (_%L11599%_ _%L11601%_)
                                 (_%lp11511%_
                                  _%L11599%_
                                  (fx1+ _%ix11516%_)
                                  (foldl (lambda (_%x11620%_ _%r11622%_)
                                           (cons (cons _%x11620%_ _%ix11516%_)
                                                 _%r11622%_))
                                         _%r11517%_
                                         (foldr (lambda (_%g1162311626%_
                                                         _%g1162411629%_)
                                                  (cons _%g1162311626%_
                                                        _%g1162411629%_))
                                                '()
                                                _%L11601%_)))))
                              (_%__kont1978019781%_ (lambda () _%r11517%_)))
                          (let ((_%__match1979619797%_
                                 (lambda (_%e1152411559%_
                                          _%hd1152511563%_
                                          _%tl1152611566%_
                                          _%__splice1977819779%_
                                          _%target1152711569%_
                                          _%tl1152911572%_)
                                   (letrec ((_%loop1153011575%_
                                             (lambda (_%hd1152811579%_
                                                      _%datum1153411582%_)
                                               (if (gx#stx-pair?
                                                    _%hd1152811579%_)
                                                   (let ((_%e1153111585%_
                                                          (gx#syntax-e
                                                           _%hd1152811579%_)))
                                                     (let ((_%lp-tl1153311592%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e1153111585%_)))
                                                           (_%lp-hd1153211589%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e1153111585%_))))
                                                       (_%loop1153011575%_
                                                        _%lp-tl1153311592%_
                                                        (cons _%lp-hd1153211589%_
                                                              _%datum1153411582%_))))
                                                   (let ((_%datum1153511595%_
                                                          (reverse _%datum1153411582%_)))
                                                     (_%__kont1977619777%_
                                                      _%tl1152611566%_
                                                      _%datum1153511595%_))))))
                                     (_%loop1153011575%_
                                      _%target1152711569%_
                                      '())))))
                            (if (gx#stx-pair? _%__stx1977319774%_)
                                (let ((_%e1152411559%_
                                       (gx#syntax-e _%__stx1977319774%_)))
                                  (let ((_%tl1152611566%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1152411559%_)))
                                        (_%hd1152511563%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1152411559%_))))
                                    (if (gx#stx-pair/null? _%hd1152511563%_)
                                        (let ((_%__splice1977819779%_
                                               (gx#syntax-split-splice
                                                _%hd1152511563%_
                                                '0)))
                                          (let ((_%tl1152911572%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1977819779%_
                                                    '1)))
                                                (_%target1152711569%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1977819779%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1152911572%_)
                                                (_%__match1979619797%_
                                                 _%e1152411559%_
                                                 _%hd1152511563%_
                                                 _%tl1152611566%_
                                                 _%__splice1977819779%_
                                                 _%target1152711569%_
                                                 _%tl1152911572%_)
                                                (_%__kont1978019781%_))))
                                        (_%__kont1978019781%_))))
                                (_%__kont1978019781%_))))))))
                 (_%duplicate-indexes?9461%_
                  (lambda (_%xs11489%_)
                    (let ((_%ht11492%_ (make-hash-table-eq)))
                      (let _%lp11495%_ ((_%rest11498%_ _%xs11489%_))
                        (if (pair? _%rest11498%_)
                            (let* ((_%ix11501%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest11498%_)))
                                   (_%$e11504%_
                                    (hash-get _%ht11492%_ _%ix11501%_)))
                              (if _%$e11504%_
                                  _%$e11504%_
                                  (begin
                                    (hash-put! _%ht11492%_ _%ix11501%_ '#t)
                                    (_%lp11495%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest11498%_))))))
                            '#f)))))
                 (_%generate-hash-dispatch-table9462%_
                  (lambda (_%indexes11458%_ _%hash-e11460%_)
                    (let _%lp11462%_ ((_%len11465%_
                                       (* '2 (length _%indexes11458%_))))
                      (let* ((_%hs11471%_
                              (map (lambda (_%x11468%_)
                                     (_%hash-e11460%_ (car _%x11468%_)))
                                   _%indexes11458%_))
                             (_%xs11477%_
                              (map (lambda (_%h11474%_)
                                     (fxmodulo _%h11474%_ _%len11465%_))
                                   _%hs11471%_)))
                        (if (_%duplicate-indexes?9461%_ _%xs11477%_)
                            (if (< _%len11465%_ '131072)
                                (_%lp11462%_
                                 (quotient
                                  (let ()
                                    (declare (not safe))
                                    (##fx* _%len11465%_ '3))
                                  '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _%stx9448%_
                                 _%indexes11458%_))
                            (let ((_%tab11482%_
                                   (make-vector _%len11465%_ '#f)))
                              (for-each
                               (lambda (_%entry11485%_ _%x11487%_)
                                 (vector-set!
                                  _%tab11482%_
                                  _%x11487%_
                                  _%entry11485%_))
                               _%indexes11458%_
                               _%xs11477%_)
                              _%tab11482%_))))))
                 (_%generate-symbolic-dispatch9463%_
                  (lambda (_%e11061%_
                           _%datums11063%_
                           _%dispatch11064%_
                           _%default11065%_)
                    (let* ((_%indexes11067%_
                            (_%datum-dispatch-index9460%_ _%datums11063%_))
                           (_%tab11070%_
                            (_%generate-hash-dispatch-table9462%_
                             _%indexes11067%_
                             symbol-hash)))
                      (if (= (length _%dispatch11064%_) '1)
                          (let* ((_%tab11078%_
                                  (vector-map
                                   (lambda (_%x11075%_)
                                     (if _%x11075%_ (car _%x11075%_) '#f))
                                   _%tab11070%_))
                                 (_%g1108111119%_
                                  (lambda (_%g1108211115%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1108211115%_)))
                                 (_%g1108011250%_
                                  (lambda (_%g1108211123%_)
                                    (if (gx#stx-pair? _%g1108211123%_)
                                        (let ((_%e1109011126%_
                                               (gx#syntax-e _%g1108211123%_)))
                                          (let ((_%hd1109111130%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1109011126%_)))
                                                (_%tl1109211133%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1109011126%_))))
                                            (if (gx#stx-pair? _%tl1109211133%_)
                                                (let ((_%e1109311136%_
                                                       (gx#syntax-e
                                                        _%tl1109211133%_)))
                                                  (let ((_%hd1109411140%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1109311136%_)))
                                                        (_%tl1109511143%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1109311136%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1109511143%_)
                                                        (let ((_%e1109611146%_
                                                               (gx#syntax-e
                                                                _%tl1109511143%_)))
                                                          (let ((_%hd1109711150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1109611146%_)))
                        (_%tl1109811153%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1109611146%_))))
                    (if (gx#stx-pair? _%tl1109811153%_)
                        (let ((_%e1109911156%_ (gx#syntax-e _%tl1109811153%_)))
                          (let ((_%hd1110011160%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1109911156%_)))
                                (_%tl1110111163%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1109911156%_))))
                            (if (gx#stx-pair? _%hd1110011160%_)
                                (let ((_%e1110211166%_
                                       (gx#syntax-e _%hd1110011160%_)))
                                  (let ((_%hd1110311170%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1110211166%_)))
                                        (_%tl1110411173%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1110211166%_))))
                                    (if (gx#stx-null? _%tl1110411173%_)
                                        (if (gx#stx-pair? _%tl1110111163%_)
                                            (let ((_%e1110511176%_
                                                   (gx#syntax-e
                                                    _%tl1110111163%_)))
                                              (let ((_%hd1110611180%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1110511176%_)))
                                                    (_%tl1110711183%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1110511176%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1110711183%_)
                                                    (let ((_%e1110811186%_
                                                           (gx#syntax-e
                                                            _%tl1110711183%_)))
                                                      (let ((_%hd1110911190%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1110811186%_)))
                    (_%tl1111011193%_
                     (let () (declare (not safe)) (##cdr _%e1110811186%_))))
                (if (gx#stx-pair? _%tl1111011193%_)
                    (let ((_%e1111111196%_ (gx#syntax-e _%tl1111011193%_)))
                      (let ((_%hd1111211200%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1111111196%_)))
                            (_%tl1111311203%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1111111196%_))))
                        (if (gx#stx-null? _%tl1111311203%_)
                            ((lambda (_%L11206%_
                                      _%L11208%_
                                      _%L11209%_
                                      _%L11210%_
                                      _%L11211%_
                                      _%L11212%_
                                      _%L11213%_)
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L11212%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _%L11209%_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L11211%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%L11208%_ '()))
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
                           (cons _%L11213%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'let*)
                                 (cons (cons (cons (gx#datum->syntax '#f 'h)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##symbol-hash)
                                                               (cons _%L11213%_
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
                                   (cons _%L11206%_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'q)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##vector-ref)
                                   (cons _%L11211%_
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
                             (cons _%L11213%_ '())))
                 (cons _%L11210%_ (cons (cons _%L11212%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _%L11212%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                             _%hd1111211200%_
                             _%hd1110911190%_
                             _%hd1110611180%_
                             _%hd1110311170%_
                             _%hd1109711150%_
                             _%hd1109411140%_
                             _%hd1109111130%_)
                            (_%g1108111119%_ _%g1108211123%_))))
                    (_%g1108111119%_ _%g1108211123%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1108111119%_
                                                     _%g1108211123%_))))
                                            (_%g1108111119%_ _%g1108211123%_))
                                        (_%g1108111119%_ _%g1108211123%_))))
                                (_%g1108111119%_ _%g1108211123%_))))
                        (_%g1108111119%_ _%g1108211123%_))))
                (_%g1108111119%_ _%g1108211123%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1108111119%_
                                                 _%g1108211123%_))))
                                        (_%g1108111119%_ _%g1108211123%_)))))
                            (_%g1108011250%_
                             (list _%e11061%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch11064%_
                                   _%default11065%_
                                   _%tab11078%_
                                   (vector-length _%tab11078%_))))
                          (let* ((_%g1125411298%_
                                  (lambda (_%g1125511294%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1125511294%_)))
                                 (_%g1125311454%_
                                  (lambda (_%g1125511302%_)
                                    (if (gx#stx-pair? _%g1125511302%_)
                                        (let ((_%e1126311305%_
                                               (gx#syntax-e _%g1125511302%_)))
                                          (let ((_%hd1126411309%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1126311305%_)))
                                                (_%tl1126511312%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1126311305%_))))
                                            (if (gx#stx-pair? _%tl1126511312%_)
                                                (let ((_%e1126611315%_
                                                       (gx#syntax-e
                                                        _%tl1126511312%_)))
                                                  (let ((_%hd1126711319%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1126611315%_)))
                                                        (_%tl1126811322%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1126611315%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1126811322%_)
                                                        (let ((_%e1126911325%_
                                                               (gx#syntax-e
                                                                _%tl1126811322%_)))
                                                          (let ((_%hd1127011329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1126911325%_)))
                        (_%tl1127111332%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1126911325%_))))
                    (if (gx#stx-pair? _%tl1127111332%_)
                        (let ((_%e1127211335%_ (gx#syntax-e _%tl1127111332%_)))
                          (let ((_%hd1127311339%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1127211335%_)))
                                (_%tl1127411342%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1127211335%_))))
                            (if (gx#stx-pair/null? _%hd1127311339%_)
                                (let ((_g21002_
                                       (gx#syntax-split-splice
                                        _%hd1127311339%_
                                        '0)))
                                  (begin
                                    (let ((_g21003_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g21002_)
                                                 (##vector-length _g21002_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21003_ 2)))
                                          (error "Context expects 2 values"
                                                 _g21003_)))
                                    (let ((_%target1127511345%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g21002_ 0)))
                                          (_%tl1127711348%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g21002_ 1))))
                                      (if (gx#stx-null? _%tl1127711348%_)
                                          (letrec ((_%loop1127811351%_
                                                    (lambda (_%hd1127611355%_
                                                             _%dispatch1128211358%_)
                                                      (if (gx#stx-pair?
                                                           _%hd1127611355%_)
                                                          (let ((_%e1127911361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd1127611355%_)))
                    (let ((_%lp-hd1128011365%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1127911361%_)))
                          (_%lp-tl1128111368%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1127911361%_))))
                      (_%loop1127811351%_
                       _%lp-tl1128111368%_
                       (cons _%lp-hd1128011365%_ _%dispatch1128211358%_))))
                  (let ((_%dispatch1128311371%_
                         (reverse _%dispatch1128211358%_)))
                    (if (gx#stx-pair? _%tl1127411342%_)
                        (let ((_%e1128411375%_ (gx#syntax-e _%tl1127411342%_)))
                          (let ((_%hd1128511379%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1128411375%_)))
                                (_%tl1128611382%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1128411375%_))))
                            (if (gx#stx-pair? _%tl1128611382%_)
                                (let ((_%e1128711385%_
                                       (gx#syntax-e _%tl1128611382%_)))
                                  (let ((_%hd1128811389%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1128711385%_)))
                                        (_%tl1128911392%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1128711385%_))))
                                    (if (gx#stx-pair? _%tl1128911392%_)
                                        (let ((_%e1129011395%_
                                               (gx#syntax-e _%tl1128911392%_)))
                                          (let ((_%hd1129111399%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1129011395%_)))
                                                (_%tl1129211402%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1129011395%_))))
                                            (if (gx#stx-null? _%tl1129211402%_)
                                                ((lambda (_%L11405%_
                                                          _%L11407%_
                                                          _%L11408%_
                                                          _%L11409%_
                                                          _%L11410%_
                                                          _%L11411%_
                                                          _%L11412%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _%L11411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons '()
                                                     (cons _%L11408%_ '())))
                                         '()))
                             (cons (cons _%L11410%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L11407%_ '()))
                                               '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f 'symbol?)
                                               (cons _%L11412%_ '()))
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
                                           (cons _%L11412%_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'ix)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##fxmodulo)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'h)
                                                       (cons _%L11405%_ '())))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'q)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _%L11410%_
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
                           (cons _%L11412%_ '())))
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
                                                   (foldr (lambda (_%g1144511448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1144611451%_)
                    (cons _%g1144511448%_ _%g1144611451%_))
                  '()
                  _%L11409%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons (cons _%L11411%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%L11411%_ '()) '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L11411%_ '())
                                                     '()))))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd1129111399%_
                                                 _%hd1128811389%_
                                                 _%hd1128511379%_
                                                 _%dispatch1128311371%_
                                                 _%hd1127011329%_
                                                 _%hd1126711319%_
                                                 _%hd1126411309%_)
                                                (_%g1125411298%_
                                                 _%g1125511302%_))))
                                        (_%g1125411298%_ _%g1125511302%_))))
                                (_%g1125411298%_ _%g1125511302%_))))
                        (_%g1125411298%_ _%g1125511302%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop1127811351%_
                                             _%target1127511345%_
                                             '()))
                                          (_%g1125411298%_ _%g1125511302%_)))))
                                (_%g1125411298%_ _%g1125511302%_))))
                        (_%g1125411298%_ _%g1125511302%_))))
                (_%g1125411298%_ _%g1125511302%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1125411298%_
                                                 _%g1125511302%_))))
                                        (_%g1125411298%_ _%g1125511302%_)))))
                            (_%g1125311454%_
                             (list _%e11061%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch11064%_
                                   _%default11065%_
                                   _%tab11070%_
                                   (vector-length _%tab11070%_))))))))
                 (_%max-char9464%_
                  (lambda (_%datums11050%_)
                    (foldl (lambda (_%lst11053%_ _%r11055%_)
                             (foldl (lambda (_%char11057%_ _%r11059%_)
                                      (max (char->integer _%char11057%_)
                                           _%r11059%_))
                                    _%r11055%_
                                    _%lst11053%_))
                           '0
                           _%datums11050%_)))
                 (_%generate-char-dispatch-table9465%_
                  (lambda (_%indexes11029%_)
                    (let* ((_%ixs11035%_
                            (map (lambda (_%x11032%_)
                                   (char->integer (car _%x11032%_)))
                                 _%indexes11029%_))
                           (_%len11038%_ (fx1+ (foldl max '0 _%ixs11035%_)))
                           (_%vec11041%_ (make-vector _%len11038%_ '#f)))
                      (for-each
                       (lambda (_%entry11046%_ _%x11048%_)
                         (vector-set!
                          _%vec11041%_
                          _%x11048%_
                          (cdr _%entry11046%_)))
                       _%indexes11029%_
                       _%ixs11035%_)
                      _%vec11041%_)))
                 (_%simple-char-range?9466%_
                  (lambda (_%tab11005%_)
                    (let ((_%end11008%_ (vector-length _%tab11005%_)))
                      (let _%lp11011%_ ((_%i11014%_ '0))
                        (let ((_%ix11017%_
                               (vector-ref _%tab11005%_ _%i11014%_)))
                          (if _%ix11017%_
                              (let _%lp211020%_ ((_%i11023%_
                                                  (fx1+ _%i11014%_)))
                                (if (fx< _%i11023%_ _%end11008%_)
                                    (let ((_%ix*11026%_
                                           (vector-ref
                                            _%tab11005%_
                                            _%i11023%_)))
                                      (if (eq? _%ix11017%_ _%ix*11026%_)
                                          (_%lp211020%_ (fx1+ _%i11023%_))
                                          '#f))
                                    '#t))
                              (_%lp11011%_ (fx1+ _%i11014%_))))))))
                 (_%char-range-start9467%_
                  (lambda (_%tab10996%_)
                    (let _%lp10999%_ ((_%i11002%_ '0))
                      (if (vector-ref _%tab10996%_ _%i11002%_)
                          _%i11002%_
                          (_%lp10999%_ (fx1+ _%i11002%_))))))
                 (_%generate-char-dispatch9468%_
                  (lambda (_%e10619%_
                           _%datums10621%_
                           _%dispatch10622%_
                           _%default10623%_)
                    (if (< (_%max-char9464%_ _%datums10621%_) '128)
                        (let* ((_%indexes10625%_
                                (_%datum-dispatch-index9460%_ _%datums10621%_))
                               (_%tab10628%_
                                (_%generate-char-dispatch-table9465%_
                                 _%indexes10625%_)))
                          (if (_%simple-char-range?9466%_ _%tab10628%_)
                              (let ((_%start10633%_
                                     (_%char-range-start9467%_ _%tab10628%_))
                                    (_%end10635%_
                                     (vector-length _%tab10628%_)))
                                (let* ((_%g1063710671%_
                                        (lambda (_%g1063810667%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g1063810667%_)))
                                       (_%g1063610788%_
                                        (lambda (_%g1063810675%_)
                                          (if (gx#stx-pair? _%g1063810675%_)
                                              (let ((_%e1064510678%_
                                                     (gx#syntax-e
                                                      _%g1063810675%_)))
                                                (let ((_%hd1064610682%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1064510678%_)))
                                                      (_%tl1064710685%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1064510678%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1064710685%_)
                                                      (let ((_%e1064810688%_
                                                             (gx#syntax-e
                                                              _%tl1064710685%_)))
                                                        (let ((_%hd1064910692%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1064810688%_)))
                      (_%tl1065010695%_
                       (let () (declare (not safe)) (##cdr _%e1064810688%_))))
                  (if (gx#stx-pair? _%tl1065010695%_)
                      (let ((_%e1065110698%_ (gx#syntax-e _%tl1065010695%_)))
                        (let ((_%hd1065210702%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1065110698%_)))
                              (_%tl1065310705%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1065110698%_))))
                          (if (gx#stx-pair? _%hd1065210702%_)
                              (let ((_%e1065410708%_
                                     (gx#syntax-e _%hd1065210702%_)))
                                (let ((_%hd1065510712%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1065410708%_)))
                                      (_%tl1065610715%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1065410708%_))))
                                  (if (gx#stx-null? _%tl1065610715%_)
                                      (if (gx#stx-pair? _%tl1065310705%_)
                                          (let ((_%e1065710718%_
                                                 (gx#syntax-e
                                                  _%tl1065310705%_)))
                                            (let ((_%hd1065810722%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1065710718%_)))
                                                  (_%tl1065910725%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1065710718%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1065910725%_)
                                                  (let ((_%e1066010728%_
                                                         (gx#syntax-e
                                                          _%tl1065910725%_)))
                                                    (let ((_%hd1066110732%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1066010728%_)))
                                                          (_%tl1066210735%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1066010728%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1066210735%_)
                                                          (let ((_%e1066310738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1066210735%_)))
                    (let ((_%hd1066410742%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1066310738%_)))
                          (_%tl1066510745%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1066310738%_))))
                      (if (gx#stx-null? _%tl1066510745%_)
                          ((lambda (_%L10748%_
                                    _%L10750%_
                                    _%L10751%_
                                    _%L10752%_
                                    _%L10753%_
                                    _%L10754%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons _%L10753%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L10751%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax '#f 'if)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'char?)
                         (cons _%L10754%_ '()))
                   (cons (cons (gx#datum->syntax '#f 'let)
                               (cons (cons (gx#datum->syntax '#f 'ix)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##char->integer)
                                                       (cons _%L10754%_ '()))
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
                                       (cons _%L10750%_ '())))
                           (cons (cons (gx#datum->syntax '#f '##fx<)
                                       (cons (gx#datum->syntax '#f 'ix)
                                             (cons _%L10748%_ '())))
                                 '())))
               (cons _%L10752%_ (cons (cons _%L10753%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (cons (cons _%L10753%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%hd1066410742%_
                           _%hd1066110732%_
                           _%hd1065810722%_
                           _%hd1065510712%_
                           _%hd1064910692%_
                           _%hd1064610682%_)
                          (_%g1063710671%_ _%g1063810675%_))))
                  (_%g1063710671%_ _%g1063810675%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1063710671%_
                                                   _%g1063810675%_))))
                                          (_%g1063710671%_ _%g1063810675%_))
                                      (_%g1063710671%_ _%g1063810675%_))))
                              (_%g1063710671%_ _%g1063810675%_))))
                      (_%g1063710671%_ _%g1063810675%_))))
              (_%g1063710671%_ _%g1063810675%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1063710671%_
                                               _%g1063810675%_)))))
                                  (_%g1063610788%_
                                   (list _%e10619%_
                                         (gx#genident 'default)
                                         _%dispatch10622%_
                                         _%default10623%_
                                         _%start10633%_
                                         _%end10635%_))))
                              (let* ((_%g1079210836%_
                                      (lambda (_%g1079310832%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g1079310832%_)))
                                     (_%g1079110992%_
                                      (lambda (_%g1079310840%_)
                                        (if (gx#stx-pair? _%g1079310840%_)
                                            (let ((_%e1080110843%_
                                                   (gx#syntax-e
                                                    _%g1079310840%_)))
                                              (let ((_%hd1080210847%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1080110843%_)))
                                                    (_%tl1080310850%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1080110843%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1080310850%_)
                                                    (let ((_%e1080410853%_
                                                           (gx#syntax-e
                                                            _%tl1080310850%_)))
                                                      (let ((_%hd1080510857%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1080410853%_)))
                    (_%tl1080610860%_
                     (let () (declare (not safe)) (##cdr _%e1080410853%_))))
                (if (gx#stx-pair? _%tl1080610860%_)
                    (let ((_%e1080710863%_ (gx#syntax-e _%tl1080610860%_)))
                      (let ((_%hd1080810867%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1080710863%_)))
                            (_%tl1080910870%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1080710863%_))))
                        (if (gx#stx-pair? _%tl1080910870%_)
                            (let ((_%e1081010873%_
                                   (gx#syntax-e _%tl1080910870%_)))
                              (let ((_%hd1081110877%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1081010873%_)))
                                    (_%tl1081210880%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1081010873%_))))
                                (if (gx#stx-pair/null? _%hd1081110877%_)
                                    (let ((_g21004_
                                           (gx#syntax-split-splice
                                            _%hd1081110877%_
                                            '0)))
                                      (begin
                                        (let ((_g21005_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g21004_)
                                                     (##vector-length _g21004_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g21005_ 2)))
                                              (error "Context expects 2 values"
                                                     _g21005_)))
                                        (let ((_%target1081310883%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g21004_ 0)))
                                              (_%tl1081510886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g21004_ 1))))
                                          (if (gx#stx-null? _%tl1081510886%_)
                                              (letrec ((_%loop1081610889%_
                                                        (lambda (_%hd1081410893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%dispatch1082010896%_)
                  (if (gx#stx-pair? _%hd1081410893%_)
                      (let ((_%e1081710899%_ (gx#syntax-e _%hd1081410893%_)))
                        (let ((_%lp-hd1081810903%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1081710899%_)))
                              (_%lp-tl1081910906%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1081710899%_))))
                          (_%loop1081610889%_
                           _%lp-tl1081910906%_
                           (cons _%lp-hd1081810903%_ _%dispatch1082010896%_))))
                      (let ((_%dispatch1082110909%_
                             (reverse _%dispatch1082010896%_)))
                        (if (gx#stx-pair? _%tl1081210880%_)
                            (let ((_%e1082210913%_
                                   (gx#syntax-e _%tl1081210880%_)))
                              (let ((_%hd1082310917%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1082210913%_)))
                                    (_%tl1082410920%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1082210913%_))))
                                (if (gx#stx-pair? _%tl1082410920%_)
                                    (let ((_%e1082510923%_
                                           (gx#syntax-e _%tl1082410920%_)))
                                      (let ((_%hd1082610927%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1082510923%_)))
                                            (_%tl1082710930%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1082510923%_))))
                                        (if (gx#stx-pair? _%tl1082710930%_)
                                            (let ((_%e1082810933%_
                                                   (gx#syntax-e
                                                    _%tl1082710930%_)))
                                              (let ((_%hd1082910937%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1082810933%_)))
                                                    (_%tl1083010940%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1082810933%_))))
                                                (if (gx#stx-null?
                                                     _%tl1083010940%_)
                                                    ((lambda (_%L10943%_
                                                              _%L10945%_
                                                              _%L10946%_
                                                              _%L10947%_
                                                              _%L10948%_
                                                              _%L10949%_
                                                              _%L10950%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons _%L10949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons '()
                                                         (cons _%L10946%_
                                                               '())))
                                             '()))
                                 (cons (cons _%L10948%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _%L10945%_ '()))
                                                   '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'char?)
                                                   (cons _%L10950%_ '()))
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
                                         (cons _%L10950%_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f '##fx<)
                                               (cons (gx#datum->syntax '#f 'ix)
                                                     (cons _%L10943%_ '())))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'x)
                         (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                     (cons _%L10948%_
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
                                                       (foldr (lambda (_%g1098310986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1098410989%_)
                        (cons _%g1098310986%_ _%g1098410989%_))
                      '()
                      _%L10947%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%L10949%_ '()) '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L10949%_ '())
                                                     '()))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _%L10949%_ '())
                                                         '()))))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd1082910937%_
                                                     _%hd1082610927%_
                                                     _%hd1082310917%_
                                                     _%dispatch1082110909%_
                                                     _%hd1080810867%_
                                                     _%hd1080510857%_
                                                     _%hd1080210847%_)
                                                    (_%g1079210836%_
                                                     _%g1079310840%_))))
                                            (_%g1079210836%_
                                             _%g1079310840%_))))
                                    (_%g1079210836%_ _%g1079310840%_))))
                            (_%g1079210836%_ _%g1079310840%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop1081610889%_
                                                 _%target1081310883%_
                                                 '()))
                                              (_%g1079210836%_
                                               _%g1079310840%_)))))
                                    (_%g1079210836%_ _%g1079310840%_))))
                            (_%g1079210836%_ _%g1079310840%_))))
                    (_%g1079210836%_ _%g1079310840%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1079210836%_
                                                     _%g1079310840%_))))
                                            (_%g1079210836%_
                                             _%g1079310840%_)))))
                                (_%g1079110992%_
                                 (list _%e10619%_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _%dispatch10622%_
                                       _%default10623%_
                                       _%tab10628%_
                                       (vector-length _%tab10628%_))))))
                        (_%generate-char-dispatch/hash9469%_
                         _%e10619%_
                         _%datums10621%_
                         _%dispatch10622%_
                         _%default10623%_))))
                 (_%generate-char-dispatch/hash9469%_
                  (lambda (_%e10397%_
                           _%datums10399%_
                           _%dispatch10400%_
                           _%default10401%_)
                    (let* ((_%indexes10403%_
                            (_%datum-dispatch-index9460%_ _%datums10399%_))
                           (_%tab10406%_
                            (_%generate-hash-dispatch-table9462%_
                             _%indexes10403%_
                             char->integer))
                           (_%g1041110455%_
                            (lambda (_%g1041210451%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1041210451%_)))
                           (_%g1041010615%_
                            (lambda (_%g1041210459%_)
                              (if (gx#stx-pair? _%g1041210459%_)
                                  (let ((_%e1042010462%_
                                         (gx#syntax-e _%g1041210459%_)))
                                    (let ((_%hd1042110466%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1042010462%_)))
                                          (_%tl1042210469%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1042010462%_))))
                                      (if (gx#stx-pair? _%tl1042210469%_)
                                          (let ((_%e1042310472%_
                                                 (gx#syntax-e
                                                  _%tl1042210469%_)))
                                            (let ((_%hd1042410476%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1042310472%_)))
                                                  (_%tl1042510479%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1042310472%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1042510479%_)
                                                  (let ((_%e1042610482%_
                                                         (gx#syntax-e
                                                          _%tl1042510479%_)))
                                                    (let ((_%hd1042710486%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1042610482%_)))
                                                          (_%tl1042810489%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1042610482%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1042810489%_)
                                                          (let ((_%e1042910492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1042810489%_)))
                    (let ((_%hd1043010496%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1042910492%_)))
                          (_%tl1043110499%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1042910492%_))))
                      (if (gx#stx-pair/null? _%hd1043010496%_)
                          (let ((_g21006_
                                 (gx#syntax-split-splice _%hd1043010496%_ '0)))
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
                              (let ((_%target1043210502%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g21006_ 0)))
                                    (_%tl1043410505%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g21006_ 1))))
                                (if (gx#stx-null? _%tl1043410505%_)
                                    (letrec ((_%loop1043510508%_
                                              (lambda (_%hd1043310512%_
                                                       _%dispatch1043910515%_)
                                                (if (gx#stx-pair?
                                                     _%hd1043310512%_)
                                                    (let ((_%e1043610518%_
                                                           (gx#syntax-e
                                                            _%hd1043310512%_)))
                                                      (let ((_%lp-hd1043710522%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1043610518%_)))
                    (_%lp-tl1043810525%_
                     (let () (declare (not safe)) (##cdr _%e1043610518%_))))
                (_%loop1043510508%_
                 _%lp-tl1043810525%_
                 (cons _%lp-hd1043710522%_ _%dispatch1043910515%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch1044010528%_
                                                           (reverse _%dispatch1043910515%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl1043110499%_)
                                                          (let ((_%e1044110532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1043110499%_)))
                    (let ((_%hd1044210536%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1044110532%_)))
                          (_%tl1044310539%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1044110532%_))))
                      (if (gx#stx-pair? _%tl1044310539%_)
                          (let ((_%e1044410542%_
                                 (gx#syntax-e _%tl1044310539%_)))
                            (let ((_%hd1044510546%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1044410542%_)))
                                  (_%tl1044610549%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1044410542%_))))
                              (if (gx#stx-pair? _%tl1044610549%_)
                                  (let ((_%e1044710552%_
                                         (gx#syntax-e _%tl1044610549%_)))
                                    (let ((_%hd1044810556%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1044710552%_)))
                                          (_%tl1044910559%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1044710552%_))))
                                      (if (gx#stx-null? _%tl1044910559%_)
                                          ((lambda (_%L10562%_
                                                    _%L10564%_
                                                    _%L10565%_
                                                    _%L10566%_
                                                    _%L10567%_
                                                    _%L10568%_
                                                    _%L10569%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L10568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%L10565%_ '())))
                                   '()))
                       (cons (cons _%L10567%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%L10564%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'char?)
                                         (cons _%L10569%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'h)
                         (cons (cons (gx#datum->syntax '#f '##char->integer)
                                     (cons _%L10569%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'ix)
                               (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                           (cons (gx#datum->syntax '#f 'h)
                                                 (cons _%L10562%_ '())))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'q)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##vector-ref)
                                                 (cons _%L10567%_
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
                     (cons _%L10569%_ '())))
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
                                             (foldr (lambda (_%g1060610609%_
                                                             _%g1060710612%_)
                                                      (cons _%g1060610609%_
                                                            _%g1060710612%_))
                                                    '()
                                                    _%L10566%_)))
                                 '())))
               (cons (cons _%L10568%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%L10568%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%L10568%_ '()) '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd1044810556%_
                                           _%hd1044510546%_
                                           _%hd1044210536%_
                                           _%dispatch1044010528%_
                                           _%hd1042710486%_
                                           _%hd1042410476%_
                                           _%hd1042110466%_)
                                          (_%g1041110455%_ _%g1041210459%_))))
                                  (_%g1041110455%_ _%g1041210459%_))))
                          (_%g1041110455%_ _%g1041210459%_))))
                  (_%g1041110455%_ _%g1041210459%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop1043510508%_
                                       _%target1043210502%_
                                       '()))
                                    (_%g1041110455%_ _%g1041210459%_)))))
                          (_%g1041110455%_ _%g1041210459%_))))
                  (_%g1041110455%_ _%g1041210459%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1041110455%_
                                                   _%g1041210459%_))))
                                          (_%g1041110455%_ _%g1041210459%_))))
                                  (_%g1041110455%_ _%g1041210459%_)))))
                      (_%g1041010615%_
                       (list _%e10397%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch10400%_
                             _%default10401%_
                             _%tab10406%_
                             (vector-length _%tab10406%_))))))
                 (_%min-fixnum9470%_
                  (lambda (_%datums10390%_)
                    (foldl (lambda (_%lst10393%_ _%r10395%_)
                             (foldl min _%r10395%_ _%lst10393%_))
                           ##max-fixnum
                           _%datums10390%_)))
                 (_%max-fixnum9471%_
                  (lambda (_%datums10383%_)
                    (foldl (lambda (_%lst10386%_ _%r10388%_)
                             (foldl max _%r10388%_ _%lst10386%_))
                           ##min-fixnum
                           _%datums10383%_)))
                 (_%generate-fixnum-dispatch-table9472%_
                  (lambda (_%indexes10365%_)
                    (let* ((_%ixs10368%_ (map car _%indexes10365%_))
                           (_%len10371%_ (fx1+ (foldl max '0 _%ixs10368%_)))
                           (_%vec10374%_ (make-vector _%len10371%_ '#f)))
                      (for-each
                       (lambda (_%entry10379%_ _%x10381%_)
                         (vector-set!
                          _%vec10374%_
                          _%x10381%_
                          (cdr _%entry10379%_)))
                       _%indexes10365%_
                       _%ixs10368%_)
                      _%vec10374%_)))
                 (_%generate-fixnum-dispatch9473%_
                  (lambda (_%e10099%_
                           _%datums10101%_
                           _%dispatch10102%_
                           _%default10103%_)
                    (if (and (>= (_%min-fixnum9470%_ _%datums10101%_) '0)
                             (< (_%max-fixnum9471%_ _%datums10101%_) '1024))
                        (let* ((_%indexes10105%_
                                (_%datum-dispatch-index9460%_ _%datums10101%_))
                               (_%tab10108%_
                                (_%generate-fixnum-dispatch-table9472%_
                                 _%indexes10105%_))
                               (_%dense?10111%_
                                (andmap values (vector->list _%tab10108%_)))
                               (_%g1011610160%_
                                (lambda (_%g1011710156%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1011710156%_)))
                               (_%g1011510361%_
                                (lambda (_%g1011710164%_)
                                  (if (gx#stx-pair? _%g1011710164%_)
                                      (let ((_%e1012510167%_
                                             (gx#syntax-e _%g1011710164%_)))
                                        (let ((_%hd1012610171%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1012510167%_)))
                                              (_%tl1012710174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1012510167%_))))
                                          (if (gx#stx-pair? _%tl1012710174%_)
                                              (let ((_%e1012810177%_
                                                     (gx#syntax-e
                                                      _%tl1012710174%_)))
                                                (let ((_%hd1012910181%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1012810177%_)))
                                                      (_%tl1013010184%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1012810177%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1013010184%_)
                                                      (let ((_%e1013110187%_
                                                             (gx#syntax-e
                                                              _%tl1013010184%_)))
                                                        (let ((_%hd1013210191%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1013110187%_)))
                      (_%tl1013310194%_
                       (let () (declare (not safe)) (##cdr _%e1013110187%_))))
                  (if (gx#stx-pair? _%tl1013310194%_)
                      (let ((_%e1013410197%_ (gx#syntax-e _%tl1013310194%_)))
                        (let ((_%hd1013510201%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1013410197%_)))
                              (_%tl1013610204%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1013410197%_))))
                          (if (gx#stx-pair/null? _%hd1013510201%_)
                              (let ((_g21008_
                                     (gx#syntax-split-splice
                                      _%hd1013510201%_
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
                                  (let ((_%target1013710207%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g21008_ 0)))
                                        (_%tl1013910210%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g21008_ 1))))
                                    (if (gx#stx-null? _%tl1013910210%_)
                                        (letrec ((_%loop1014010213%_
                                                  (lambda (_%hd1013810217%_
                                                           _%dispatch1014410220%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1013810217%_)
                                                        (let ((_%e1014110223%_
                                                               (gx#syntax-e
                                                                _%hd1013810217%_)))
                                                          (let ((_%lp-hd1014210227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1014110223%_)))
                        (_%lp-tl1014310230%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1014110223%_))))
                    (_%loop1014010213%_
                     _%lp-tl1014310230%_
                     (cons _%lp-hd1014210227%_ _%dispatch1014410220%_))))
                (let ((_%dispatch1014510233%_
                       (reverse _%dispatch1014410220%_)))
                  (if (gx#stx-pair? _%tl1013610204%_)
                      (let ((_%e1014610237%_ (gx#syntax-e _%tl1013610204%_)))
                        (let ((_%hd1014710241%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1014610237%_)))
                              (_%tl1014810244%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1014610237%_))))
                          (if (gx#stx-pair? _%tl1014810244%_)
                              (let ((_%e1014910247%_
                                     (gx#syntax-e _%tl1014810244%_)))
                                (let ((_%hd1015010251%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1014910247%_)))
                                      (_%tl1015110254%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1014910247%_))))
                                  (if (gx#stx-pair? _%tl1015110254%_)
                                      (let ((_%e1015210257%_
                                             (gx#syntax-e _%tl1015110254%_)))
                                        (let ((_%hd1015310261%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1015210257%_)))
                                              (_%tl1015410264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1015210257%_))))
                                          (if (gx#stx-null? _%tl1015410264%_)
                                              ((lambda (_%L10267%_
                                                        _%L10269%_
                                                        _%L10270%_
                                                        _%L10271%_
                                                        _%L10272%_
                                                        _%L10273%_
                                                        _%L10274%_)
                                                 (let* ((_%g1031310321%_
                                                         (lambda (_%g1031410317%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g1031410317%_)))
                                                        (_%g1031210341%_
                                                         (lambda (_%g1031410325%_)
                                                           ((lambda (_%L10328%_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'let)
                            (cons (cons (cons _%L10273%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons '()
                                                                (cons _%L10270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons _%L10272%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L10269%_ '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fixnum?)
                                                          (cons _%L10274%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons (cons (gx#datum->syntax '#f 'and)
                                    (cons (cons (gx#datum->syntax '#f '##fx>=)
                                                (cons _%L10274%_
                                                      (cons '0 '())))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx<)
                                                      (cons _%L10274%_
                                                            (cons _%L10267%_
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
                          (cons _%L10272%_ (cons _%L10274%_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%L10328%_ '())))
                                    (cons (cons _%L10273%_ '()) '()))))
                  (cons (cons _%L10273%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))
                    _%g1031410325%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g1031210341%_
                                                    (if _%dense?10111%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'x)
                            (foldr (lambda (_%g1034410347%_ _%g1034510350%_)
                                     (cons _%g1034410347%_ _%g1034510350%_))
                                   '()
                                   _%L10271%_)))
                (cons (gx#datum->syntax '#f 'if)
                      (cons (gx#datum->syntax '#f 'x)
                            (cons (cons (gx#datum->syntax '#f '~case-dispatch)
                                        (cons (gx#datum->syntax '#f 'x)
                                              (foldr (lambda (_%g1035210355%_
                                                              _%g1035310358%_)
                                                       (cons _%g1035210355%_
                                                             _%g1035310358%_))
                                                     '()
                                                     _%L10271%_)))
                                  (cons (cons _%L10273%_ '()) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1015310261%_
                                               _%hd1015010251%_
                                               _%hd1014710241%_
                                               _%dispatch1014510233%_
                                               _%hd1013210191%_
                                               _%hd1012910181%_
                                               _%hd1012610171%_)
                                              (_%g1011610160%_
                                               _%g1011710164%_))))
                                      (_%g1011610160%_ _%g1011710164%_))))
                              (_%g1011610160%_ _%g1011710164%_))))
                      (_%g1011610160%_ _%g1011710164%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop1014010213%_
                                           _%target1013710207%_
                                           '()))
                                        (_%g1011610160%_ _%g1011710164%_)))))
                              (_%g1011610160%_ _%g1011710164%_))))
                      (_%g1011610160%_ _%g1011710164%_))))
              (_%g1011610160%_ _%g1011710164%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1011610160%_
                                               _%g1011710164%_))))
                                      (_%g1011610160%_ _%g1011710164%_)))))
                          (_%g1011510361%_
                           (list _%e10099%_
                                 (gx#genident 'default)
                                 (gx#genident 'table)
                                 _%dispatch10102%_
                                 _%default10103%_
                                 _%tab10108%_
                                 (vector-length _%tab10108%_))))
                        (_%generate-fixnum-dispatch/hash9474%_
                         _%e10099%_
                         _%datums10101%_
                         _%dispatch10102%_
                         _%default10103%_))))
                 (_%generate-fixnum-dispatch/hash9474%_
                  (lambda (_%e9877%_
                           _%datums9879%_
                           _%dispatch9880%_
                           _%default9881%_)
                    (let* ((_%indexes9883%_
                            (_%datum-dispatch-index9460%_ _%datums9879%_))
                           (_%tab9886%_
                            (_%generate-hash-dispatch-table9462%_
                             _%indexes9883%_
                             values))
                           (_%g98919935%_
                            (lambda (_%g98929931%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g98929931%_)))
                           (_%g989010095%_
                            (lambda (_%g98929939%_)
                              (if (gx#stx-pair? _%g98929939%_)
                                  (let ((_%e99009942%_
                                         (gx#syntax-e _%g98929939%_)))
                                    (let ((_%hd99019946%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e99009942%_)))
                                          (_%tl99029949%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e99009942%_))))
                                      (if (gx#stx-pair? _%tl99029949%_)
                                          (let ((_%e99039952%_
                                                 (gx#syntax-e _%tl99029949%_)))
                                            (let ((_%hd99049956%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e99039952%_)))
                                                  (_%tl99059959%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e99039952%_))))
                                              (if (gx#stx-pair? _%tl99059959%_)
                                                  (let ((_%e99069962%_
                                                         (gx#syntax-e
                                                          _%tl99059959%_)))
                                                    (let ((_%hd99079966%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e99069962%_)))
                                                          (_%tl99089969%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e99069962%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl99089969%_)
                                                          (let ((_%e99099972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl99089969%_)))
                    (let ((_%hd99109976%_
                           (let () (declare (not safe)) (##car _%e99099972%_)))
                          (_%tl99119979%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e99099972%_))))
                      (if (gx#stx-pair/null? _%hd99109976%_)
                          (let ((_g21010_
                                 (gx#syntax-split-splice _%hd99109976%_ '0)))
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
                              (let ((_%target99129982%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g21010_ 0)))
                                    (_%tl99149985%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g21010_ 1))))
                                (if (gx#stx-null? _%tl99149985%_)
                                    (letrec ((_%loop99159988%_
                                              (lambda (_%hd99139992%_
                                                       _%dispatch99199995%_)
                                                (if (gx#stx-pair?
                                                     _%hd99139992%_)
                                                    (let ((_%e99169998%_
                                                           (gx#syntax-e
                                                            _%hd99139992%_)))
                                                      (let ((_%lp-hd991710002%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e99169998%_)))
                    (_%lp-tl991810005%_
                     (let () (declare (not safe)) (##cdr _%e99169998%_))))
                (_%loop99159988%_
                 _%lp-tl991810005%_
                 (cons _%lp-hd991710002%_ _%dispatch99199995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch992010008%_
                                                           (reverse _%dispatch99199995%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl99119979%_)
                                                          (let ((_%e992110012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl99119979%_)))
                    (let ((_%hd992210016%_
                           (let ()
                             (declare (not safe))
                             (##car _%e992110012%_)))
                          (_%tl992310019%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e992110012%_))))
                      (if (gx#stx-pair? _%tl992310019%_)
                          (let ((_%e992410022%_ (gx#syntax-e _%tl992310019%_)))
                            (let ((_%hd992510026%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e992410022%_)))
                                  (_%tl992610029%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e992410022%_))))
                              (if (gx#stx-pair? _%tl992610029%_)
                                  (let ((_%e992710032%_
                                         (gx#syntax-e _%tl992610029%_)))
                                    (let ((_%hd992810036%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e992710032%_)))
                                          (_%tl992910039%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e992710032%_))))
                                      (if (gx#stx-null? _%tl992910039%_)
                                          ((lambda (_%L10042%_
                                                    _%L10044%_
                                                    _%L10045%_
                                                    _%L10046%_
                                                    _%L10047%_
                                                    _%L10048%_
                                                    _%L10049%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L10048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%L10045%_ '())))
                                   '()))
                       (cons (cons _%L10047%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%L10044%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                         (cons _%L10049%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ix)
                         (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                     (cons _%L10049%_ (cons _%L10042%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'q)
                               (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                           (cons _%L10047%_
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
                     (cons _%L10049%_ '())))
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
                                             (foldr (lambda (_%g1008610089%_
                                                             _%g1008710092%_)
                                                      (cons _%g1008610089%_
                                                            _%g1008710092%_))
                                                    '()
                                                    _%L10046%_)))
                                 '())))
               (cons (cons _%L10048%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%L10048%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%L10048%_ '()) '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd992810036%_
                                           _%hd992510026%_
                                           _%hd992210016%_
                                           _%dispatch992010008%_
                                           _%hd99079966%_
                                           _%hd99049956%_
                                           _%hd99019946%_)
                                          (_%g98919935%_ _%g98929939%_))))
                                  (_%g98919935%_ _%g98929939%_))))
                          (_%g98919935%_ _%g98929939%_))))
                  (_%g98919935%_ _%g98929939%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop99159988%_
                                       _%target99129982%_
                                       '()))
                                    (_%g98919935%_ _%g98929939%_)))))
                          (_%g98919935%_ _%g98929939%_))))
                  (_%g98919935%_ _%g98929939%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g98919935%_
                                                   _%g98929939%_))))
                                          (_%g98919935%_ _%g98929939%_))))
                                  (_%g98919935%_ _%g98929939%_)))))
                      (_%g989010095%_
                       (list _%e9877%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch9880%_
                             _%default9881%_
                             _%tab9886%_
                             (vector-length _%tab9886%_))))))
                 (_%generate-generic-dispatch9475%_
                  (lambda (_%e9613%_
                           _%datums9615%_
                           _%dispatch9616%_
                           _%default9617%_)
                    (let ((_g21012_
                           (if (_%eq-datums?9458%_ _%datums9615%_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_%hash-e9619%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g21012_ 0)))
                              (_%hashf9621%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g21012_ 1)))
                              (_%eqf9622%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g21012_ 2))))
                          (let* ((_%indexes9624%_
                                  (_%datum-dispatch-index9460%_
                                   _%datums9615%_))
                                 (_%tab9627%_
                                  (_%generate-hash-dispatch-table9462%_
                                   _%indexes9624%_
                                   _%hash-e9619%_))
                                 (_%g96329684%_
                                  (lambda (_%g96339680%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g96339680%_)))
                                 (_%g96319873%_
                                  (lambda (_%g96339688%_)
                                    (if (gx#stx-pair? _%g96339688%_)
                                        (let ((_%e96439691%_
                                               (gx#syntax-e _%g96339688%_)))
                                          (let ((_%hd96449695%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e96439691%_)))
                                                (_%tl96459698%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e96439691%_))))
                                            (if (gx#stx-pair? _%tl96459698%_)
                                                (let ((_%e96469701%_
                                                       (gx#syntax-e
                                                        _%tl96459698%_)))
                                                  (let ((_%hd96479705%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e96469701%_)))
                                                        (_%tl96489708%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e96469701%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl96489708%_)
                                                        (let ((_%e96499711%_
                                                               (gx#syntax-e
                                                                _%tl96489708%_)))
                                                          (let ((_%hd96509715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e96499711%_)))
                        (_%tl96519718%_
                         (let () (declare (not safe)) (##cdr _%e96499711%_))))
                    (if (gx#stx-pair? _%tl96519718%_)
                        (let ((_%e96529721%_ (gx#syntax-e _%tl96519718%_)))
                          (let ((_%hd96539725%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e96529721%_)))
                                (_%tl96549728%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e96529721%_))))
                            (if (gx#stx-pair/null? _%hd96539725%_)
                                (let ((_g21013_
                                       (gx#syntax-split-splice
                                        _%hd96539725%_
                                        '0)))
                                  (begin
                                    (let ((_g21014_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g21013_)
                                                 (##vector-length _g21013_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21014_ 2)))
                                          (error "Context expects 2 values"
                                                 _g21014_)))
                                    (let ((_%target96559731%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g21013_ 0)))
                                          (_%tl96579734%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g21013_ 1))))
                                      (if (gx#stx-null? _%tl96579734%_)
                                          (letrec ((_%loop96589737%_
                                                    (lambda (_%hd96569741%_
                                                             _%dispatch96629744%_)
                                                      (if (gx#stx-pair?
                                                           _%hd96569741%_)
                                                          (let ((_%e96599747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd96569741%_)))
                    (let ((_%lp-hd96609751%_
                           (let () (declare (not safe)) (##car _%e96599747%_)))
                          (_%lp-tl96619754%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e96599747%_))))
                      (_%loop96589737%_
                       _%lp-tl96619754%_
                       (cons _%lp-hd96609751%_ _%dispatch96629744%_))))
                  (let ((_%dispatch96639757%_ (reverse _%dispatch96629744%_)))
                    (if (gx#stx-pair? _%tl96549728%_)
                        (let ((_%e96649761%_ (gx#syntax-e _%tl96549728%_)))
                          (let ((_%hd96659765%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e96649761%_)))
                                (_%tl96669768%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e96649761%_))))
                            (if (gx#stx-pair? _%tl96669768%_)
                                (let ((_%e96679771%_
                                       (gx#syntax-e _%tl96669768%_)))
                                  (let ((_%hd96689775%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e96679771%_)))
                                        (_%tl96699778%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e96679771%_))))
                                    (if (gx#stx-pair? _%tl96699778%_)
                                        (let ((_%e96709781%_
                                               (gx#syntax-e _%tl96699778%_)))
                                          (let ((_%hd96719785%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e96709781%_)))
                                                (_%tl96729788%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e96709781%_))))
                                            (if (gx#stx-pair? _%tl96729788%_)
                                                (let ((_%e96739791%_
                                                       (gx#syntax-e
                                                        _%tl96729788%_)))
                                                  (let ((_%hd96749795%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e96739791%_)))
                                                        (_%tl96759798%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e96739791%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl96759798%_)
                                                        (let ((_%e96769801%_
                                                               (gx#syntax-e
                                                                _%tl96759798%_)))
                                                          (let ((_%hd96779805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e96769801%_)))
                        (_%tl96789808%_
                         (let () (declare (not safe)) (##cdr _%e96769801%_))))
                    (if (gx#stx-null? _%tl96789808%_)
                        ((lambda (_%L9811%_
                                  _%L9813%_
                                  _%L9814%_
                                  _%L9815%_
                                  _%L9816%_
                                  _%L9817%_
                                  _%L9818%_
                                  _%L9819%_
                                  _%L9820%_)
                           (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (cons _%L9819%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L9816%_ '())))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _%L9818%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _%L9815%_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'h)
                             (cons (cons _%L9813%_ (cons _%L9820%_ '())) '()))
                       (cons (cons (gx#datum->syntax '#f 'ix)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##fxmodulo)
                                               (cons (gx#datum->syntax '#f 'h)
                                                     (cons _%L9814%_ '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'q)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##vector-ref)
                                                     (cons _%L9818%_
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
                                               (cons (cons _%L9811%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##car)
                               (cons (gx#datum->syntax '#f 'q) '()))
                         (cons _%L9820%_ '())))
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
                                                 (foldr (lambda (_%g98649867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g98659870%_)
                  (cons _%g98649867%_ _%g98659870%_))
                '()
                _%L9817%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons _%L9819%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%L9819%_ '()) '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))
                         _%hd96779805%_
                         _%hd96749795%_
                         _%hd96719785%_
                         _%hd96689775%_
                         _%hd96659765%_
                         _%dispatch96639757%_
                         _%hd96509715%_
                         _%hd96479705%_
                         _%hd96449695%_)
                        (_%g96329684%_ _%g96339688%_))))
                (_%g96329684%_ _%g96339688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g96329684%_
                                                 _%g96339688%_))))
                                        (_%g96329684%_ _%g96339688%_))))
                                (_%g96329684%_ _%g96339688%_))))
                        (_%g96329684%_ _%g96339688%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop96589737%_
                                             _%target96559731%_
                                             '()))
                                          (_%g96329684%_ _%g96339688%_)))))
                                (_%g96329684%_ _%g96339688%_))))
                        (_%g96329684%_ _%g96339688%_))))
                (_%g96329684%_ _%g96339688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g96329684%_
                                                 _%g96339688%_))))
                                        (_%g96329684%_ _%g96339688%_)))))
                            (_%g96319873%_
                             (list _%e9613%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch9616%_
                                   _%default9617%_
                                   _%tab9627%_
                                   (vector-length _%tab9627%_)
                                   _%hashf9621%_
                                   _%eqf9622%_)))))))))
          (let* ((_%g94779501%_
                  (lambda (_%g94789497%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g94789497%_)))
                 (_%g94769609%_
                  (lambda (_%g94789505%_)
                    (if (gx#stx-pair? _%g94789505%_)
                        (let ((_%e94819508%_ (gx#syntax-e _%g94789505%_)))
                          (let ((_%hd94829512%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e94819508%_)))
                                (_%tl94839515%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e94819508%_))))
                            (if (gx#stx-pair? _%tl94839515%_)
                                (let ((_%e94849518%_
                                       (gx#syntax-e _%tl94839515%_)))
                                  (let ((_%hd94859522%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e94849518%_)))
                                        (_%tl94869525%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e94849518%_))))
                                    (if (gx#stx-pair/null? _%tl94869525%_)
                                        (let ((_g21015_
                                               (gx#syntax-split-splice
                                                _%tl94869525%_
                                                '0)))
                                          (begin
                                            (let ((_g21016_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g21015_)
                                                         (##vector-length
                                                          _g21015_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g21016_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g21016_)))
                                            (let ((_%target94879528%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g21015_
                                                      0)))
                                                  (_%tl94899531%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g21015_
                                                      1))))
                                              (if (gx#stx-null? _%tl94899531%_)
                                                  (letrec ((_%loop94909534%_
                                                            (lambda (_%hd94889538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause94949541%_)
                      (if (gx#stx-pair? _%hd94889538%_)
                          (let ((_%e94919544%_ (gx#syntax-e _%hd94889538%_)))
                            (let ((_%lp-hd94929548%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e94919544%_)))
                                  (_%lp-tl94939551%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e94919544%_))))
                              (_%loop94909534%_
                               _%lp-tl94939551%_
                               (cons _%lp-hd94929548%_ _%clause94949541%_))))
                          (let ((_%clause94959554%_
                                 (reverse _%clause94949541%_)))
                            ((lambda (_%L9558%_ _%L9560%_)
                               (let ((_g21017_
                                      (_%parse-clauses9451%_
                                       _%L9560%_
                                       (foldr (lambda (_%g95789581%_
                                                       _%g95799584%_)
                                                (cons _%g95789581%_
                                                      _%g95799584%_))
                                              '()
                                              _%L9558%_))))
                                 (begin
                                   (let ((_g21018_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g21017_)
                                                (##vector-length _g21017_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g21018_ 3)))
                                         (error "Context expects 3 values"
                                                _g21018_)))
                                   (let ((_%datums9587%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g21017_ 0)))
                                         (_%dispatch9589%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g21017_ 1)))
                                         (_%default9590%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g21017_ 2))))
                                     (let ((_%datum-count9592%_
                                            (_%count-datums9454%_
                                             _%datums9587%_)))
                                       (if (< _%datum-count9592%_ '6)
                                           (_%generate-simple-case9459%_
                                            _%L9560%_
                                            _%datums9587%_
                                            _%dispatch9589%_
                                            _%default9590%_)
                                           (if (_%char-datums?9456%_
                                                _%datums9587%_)
                                               (_%generate-char-dispatch9468%_
                                                _%L9560%_
                                                _%datums9587%_
                                                _%dispatch9589%_
                                                _%default9590%_)
                                               (if (_%fixnum-datums?9457%_
                                                    _%datums9587%_)
                                                   (_%generate-fixnum-dispatch9473%_
                                                    _%L9560%_
                                                    _%datums9587%_
                                                    _%dispatch9589%_
                                                    _%default9590%_)
                                                   (if (< _%datum-count9592%_
                                                          '12)
                                                       (_%generate-simple-case9459%_
                                                        _%L9560%_
                                                        _%datums9587%_
                                                        _%dispatch9589%_
                                                        _%default9590%_)
                                                       (if (_%symbolic-datums?9455%_
                                                            _%datums9587%_)
                                                           (_%generate-symbolic-dispatch9463%_
                                                            _%L9560%_
                                                            _%datums9587%_
                                                            _%dispatch9589%_
                                                            _%default9590%_)
                                                           (_%generate-generic-dispatch9475%_
                                                            _%L9560%_
                                                            _%datums9587%_
                                                            _%dispatch9589%_
                                                            _%default9590%_)))))))))))
                             _%clause94959554%_
                             _%hd94859522%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop94909534%_
                                                     _%target94879528%_
                                                     '()))
                                                  (_%g94779501%_
                                                   _%g94789505%_)))))
                                        (_%g94779501%_ _%g94789505%_))))
                                (_%g94779501%_ _%g94789505%_))))
                        (_%g94779501%_ _%g94789505%_)))))
            (_%g94769609%_ _%stx9448%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-test|
      (lambda (_%stx12511%_)
        (let* ((_%g1251412532%_
                (lambda (_%g1251512528%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1251512528%_)))
               (_%g1251312604%_
                (lambda (_%g1251512536%_)
                  (if (gx#stx-pair? _%g1251512536%_)
                      (let ((_%e1251812539%_ (gx#syntax-e _%g1251512536%_)))
                        (let ((_%hd1251912543%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1251812539%_)))
                              (_%tl1252012546%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1251812539%_))))
                          (if (gx#stx-pair? _%tl1252012546%_)
                              (let ((_%e1252112549%_
                                     (gx#syntax-e _%tl1252012546%_)))
                                (let ((_%hd1252212553%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1252112549%_)))
                                      (_%tl1252312556%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1252112549%_))))
                                  (if (gx#stx-pair? _%tl1252312556%_)
                                      (let ((_%e1252412559%_
                                             (gx#syntax-e _%tl1252312556%_)))
                                        (let ((_%hd1252512563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1252412559%_)))
                                              (_%tl1252612566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1252412559%_))))
                                          (if (gx#stx-null? _%tl1252612566%_)
                                              ((lambda (_%L12569%_ _%L12571%_)
                                                 (let ((_%datum-e12587%_
                                                        (gx#stx-e _%L12571%_)))
                                                   (if (or (symbol? _%datum-e12587%_)
                                                           (keyword?
                                                            _%datum-e12587%_)
                                                           (immediate?
                                                            _%datum-e12587%_))
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%L12571%_ '()))
                           (cons _%L12569%_ '())))
               (if (number? _%datum-e12587%_)
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L12571%_ '()))
                               (cons _%L12569%_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L12571%_ '()))
                               (cons _%L12569%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1252512563%_
                                               _%hd1252212553%_)
                                              (_%g1251412532%_
                                               _%g1251512536%_))))
                                      (_%g1251412532%_ _%g1251512536%_))))
                              (_%g1251412532%_ _%g1251512536%_))))
                      (_%g1251412532%_ _%g1251512536%_)))))
          (_%g1251312604%_ _%stx12511%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch|
      (lambda (_%$stx12608%_)
        (let* ((_%g1261212636%_
                (lambda (_%g1261312632%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1261312632%_)))
               (_%g1261112721%_
                (lambda (_%g1261312640%_)
                  (if (gx#stx-pair? _%g1261312640%_)
                      (let ((_%e1261612643%_ (gx#syntax-e _%g1261312640%_)))
                        (let ((_%hd1261712647%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1261612643%_)))
                              (_%tl1261812650%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1261612643%_))))
                          (if (gx#stx-pair? _%tl1261812650%_)
                              (let ((_%e1261912653%_
                                     (gx#syntax-e _%tl1261812650%_)))
                                (let ((_%hd1262012657%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1261912653%_)))
                                      (_%tl1262112660%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1261912653%_))))
                                  (if (gx#stx-pair/null? _%tl1262112660%_)
                                      (let ((_g21019_
                                             (gx#syntax-split-splice
                                              _%tl1262112660%_
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
                                          (let ((_%target1262212663%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21019_ 0)))
                                                (_%tl1262412666%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21019_ 1))))
                                            (if (gx#stx-null? _%tl1262412666%_)
                                                (letrec ((_%loop1262512669%_
                                                          (lambda (_%hd1262312673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%K1262912676%_)
                    (if (gx#stx-pair? _%hd1262312673%_)
                        (let ((_%e1262612679%_ (gx#syntax-e _%hd1262312673%_)))
                          (let ((_%lp-hd1262712683%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1262612679%_)))
                                (_%lp-tl1262812686%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1262612679%_))))
                            (_%loop1262512669%_
                             _%lp-tl1262812686%_
                             (cons _%lp-hd1262712683%_ _%K1262912676%_))))
                        (let ((_%K1263012689%_ (reverse _%K1262912676%_)))
                          ((lambda (_%L12693%_ _%L12695%_)
                             (cons (gx#datum->syntax '#f '~case-dispatch*)
                                   (cons '0
                                         (cons _%L12695%_
                                               (foldr (lambda (_%g1271212715%_
                                                               _%g1271312718%_)
                                                        (cons _%g1271212715%_
                                                              _%g1271312718%_))
                                                      '()
                                                      _%L12693%_)))))
                           _%K1263012689%_
                           _%hd1262012657%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1262512669%_
                                                   _%target1262212663%_
                                                   '()))
                                                (_%g1261212636%_
                                                 _%g1261312640%_)))))
                                      (_%g1261212636%_ _%g1261312640%_))))
                              (_%g1261212636%_ _%g1261312640%_))))
                      (_%g1261212636%_ _%g1261312640%_)))))
          (_%g1261112721%_ _%$stx12608%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch*|
      (lambda (_%stx12726%_)
        (let* ((_%__stx1979919800%_ _%stx12726%_)
               (_%g1273312829%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1979919800%_))))
          (let ((_%__kont1980219803%_
                 (lambda (_%L13306%_ _%L13308%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons '#!void '()))))
                (_%__kont1980419805%_
                 (lambda (_%L13248%_ _%L13250%_ _%L13251%_) _%L13248%_))
                (_%__kont1980619807%_
                 (lambda (_%L13145%_ _%L13147%_ _%L13148%_ _%L13149%_)
                   (let* ((_%g1317013178%_
                           (lambda (_%g1317113174%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1317113174%_)))
                          (_%g1316913197%_
                           (lambda (_%g1317113182%_)
                             ((lambda (_%L13185%_)
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons _%L13148%_
                                                        (cons _%L13185%_ '())))
                                            (cons _%L13147%_
                                                  (cons _%L13145%_ '())))))
                              _%g1317113182%_))))
                     (_%g1316913197%_ (gx#stx-e _%L13149%_)))))
                (_%__kont1980819809%_
                 (lambda (_%L12995%_
                          _%L12997%_
                          _%L12998%_
                          _%L12999%_
                          _%L13000%_)
                   (let* ((_%g1302413039%_
                           (lambda (_%g1302513035%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1302513035%_)))
                          (_%g1302313084%_
                           (lambda (_%g1302513043%_)
                             (if (gx#stx-pair? _%g1302513043%_)
                                 (let ((_%e1302813046%_
                                        (gx#syntax-e _%g1302513043%_)))
                                   (let ((_%hd1302913050%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e1302813046%_)))
                                         (_%tl1303013053%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e1302813046%_))))
                                     (if (gx#stx-pair? _%tl1303013053%_)
                                         (let ((_%e1303113056%_
                                                (gx#syntax-e
                                                 _%tl1303013053%_)))
                                           (let ((_%hd1303213060%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e1303113056%_)))
                                                 (_%tl1303313063%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e1303113056%_))))
                                             (if (gx#stx-null?
                                                  _%tl1303313063%_)
                                                 ((lambda (_%L13066%_
                                                           _%L13068%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons _%L12999%_ (cons _%L13068%_ '())))
                        (cons _%L12998%_
                              (cons (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx=)
                                                      (cons _%L12999%_
                                                            (cons _%L13066%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%L12997%_
                                                      (cons _%L12995%_ '()))))
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd1303213060%_
                                                  _%hd1302913050%_)
                                                 (_%g1302413039%_
                                                  _%g1302513043%_))))
                                         (_%g1302413039%_ _%g1302513043%_))))
                                 (_%g1302413039%_ _%g1302513043%_)))))
                     (_%g1302313084%_
                      (list (gx#stx-e _%L13000%_)
                            (fx1+ (gx#stx-e _%L13000%_)))))))
                (_%__kont1981019811%_
                 (lambda (_%L12896%_ _%L12898%_ _%L12899%_)
                   (cons (gx#datum->syntax '#f '~case-dispatch-bsearch)
                         (cons _%L12899%_
                               (cons _%L12898%_
                                     (foldr (lambda (_%g1291912922%_
                                                     _%g1292012925%_)
                                              (cons _%g1291912922%_
                                                    _%g1292012925%_))
                                            '()
                                            _%L12896%_)))))))
            (let ((_%__match1995619957%_
                   (lambda (_%e1280612836%_
                            _%hd1280712840%_
                            _%tl1280812843%_
                            _%e1280912846%_
                            _%hd1281012850%_
                            _%tl1281112853%_
                            _%e1281212856%_
                            _%hd1281312860%_
                            _%tl1281412863%_
                            _%__splice1981219813%_
                            _%target1281512866%_
                            _%tl1281712869%_)
                     (letrec ((_%loop1281812872%_
                               (lambda (_%hd1281612876%_ _%K1282212879%_)
                                 (if (gx#stx-pair? _%hd1281612876%_)
                                     (let ((_%e1281912882%_
                                            (gx#syntax-e _%hd1281612876%_)))
                                       (let ((_%lp-tl1282112889%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1281912882%_)))
                                             (_%lp-hd1282012886%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1281912882%_))))
                                         (_%loop1281812872%_
                                          _%lp-tl1282112889%_
                                          (cons _%lp-hd1282012886%_
                                                _%K1282212879%_))))
                                     (let ((_%K1282312892%_
                                            (reverse _%K1282212879%_)))
                                       (_%__kont1981019811%_
                                        _%K1282312892%_
                                        _%hd1281312860%_
                                        _%hd1281012850%_))))))
                       (_%loop1281812872%_ _%target1281512866%_ '())))))
              (if (gx#stx-pair? _%__stx1979919800%_)
                  (let ((_%e1273713276%_ (gx#syntax-e _%__stx1979919800%_)))
                    (let ((_%tl1273913283%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1273713276%_)))
                          (_%hd1273813280%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1273713276%_))))
                      (if (gx#stx-pair? _%tl1273913283%_)
                          (let ((_%e1274013286%_
                                 (gx#syntax-e _%tl1273913283%_)))
                            (let ((_%tl1274213293%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1274013286%_)))
                                  (_%hd1274113290%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1274013286%_))))
                              (if (gx#stx-pair? _%tl1274213293%_)
                                  (let ((_%e1274313296%_
                                         (gx#syntax-e _%tl1274213293%_)))
                                    (let ((_%tl1274513303%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1274313296%_)))
                                          (_%hd1274413300%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1274313296%_))))
                                      (if (gx#stx-null? _%tl1274513303%_)
                                          (_%__kont1980219803%_
                                           _%hd1274413300%_
                                           _%hd1274113290%_)
                                          (if (gx#stx-pair? _%tl1274513303%_)
                                              (let ((_%e1275813238%_
                                                     (gx#syntax-e
                                                      _%tl1274513303%_)))
                                                (let ((_%tl1276013245%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1275813238%_)))
                                                      (_%hd1275913242%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1275813238%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1276013245%_)
                                                      (_%__kont1980419805%_
                                                       _%hd1275913242%_
                                                       _%hd1274413300%_
                                                       _%hd1274113290%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1276013245%_)
                                                          (let ((_%e1277713135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1276013245%_)))
                    (let ((_%tl1277913142%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1277713135%_)))
                          (_%hd1277813139%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1277713135%_))))
                      (if (gx#stx-null? _%tl1277913142%_)
                          (_%__kont1980619807%_
                           _%hd1277813139%_
                           _%hd1275913242%_
                           _%hd1274413300%_
                           _%hd1274113290%_)
                          (if (gx#stx-pair? _%tl1277913142%_)
                              (let ((_%e1280012985%_
                                     (gx#syntax-e _%tl1277913142%_)))
                                (let ((_%tl1280212992%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1280012985%_)))
                                      (_%hd1280112989%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1280012985%_))))
                                  (if (gx#stx-null? _%tl1280212992%_)
                                      (_%__kont1980819809%_
                                       _%hd1280112989%_
                                       _%hd1277813139%_
                                       _%hd1275913242%_
                                       _%hd1274413300%_
                                       _%hd1274113290%_)
                                      (if (gx#stx-pair/null? _%tl1274513303%_)
                                          (let ((_%__splice1981219813%_
                                                 (gx#syntax-split-splice
                                                  _%tl1274513303%_
                                                  '0)))
                                            (let ((_%tl1281712869%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1981219813%_
                                                      '1)))
                                                  (_%target1281512866%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1981219813%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1281712869%_)
                                                  (_%__match1995619957%_
                                                   _%e1273713276%_
                                                   _%hd1273813280%_
                                                   _%tl1273913283%_
                                                   _%e1274013286%_
                                                   _%hd1274113290%_
                                                   _%tl1274213293%_
                                                   _%e1274313296%_
                                                   _%hd1274413300%_
                                                   _%tl1274513303%_
                                                   _%__splice1981219813%_
                                                   _%target1281512866%_
                                                   _%tl1281712869%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1273312829%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1273312829%_))))))
                              (if (gx#stx-pair/null? _%tl1274513303%_)
                                  (let ((_%__splice1981219813%_
                                         (gx#syntax-split-splice
                                          _%tl1274513303%_
                                          '0)))
                                    (let ((_%tl1281712869%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1981219813%_
                                              '1)))
                                          (_%target1281512866%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1981219813%_
                                              '0))))
                                      (if (gx#stx-null? _%tl1281712869%_)
                                          (_%__match1995619957%_
                                           _%e1273713276%_
                                           _%hd1273813280%_
                                           _%tl1273913283%_
                                           _%e1274013286%_
                                           _%hd1274113290%_
                                           _%tl1274213293%_
                                           _%e1274313296%_
                                           _%hd1274413300%_
                                           _%tl1274513303%_
                                           _%__splice1981219813%_
                                           _%target1281512866%_
                                           _%tl1281712869%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g1273312829%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1273312829%_)))))))
                  (if (gx#stx-pair/null? _%tl1274513303%_)
                      (let ((_%__splice1981219813%_
                             (gx#syntax-split-splice _%tl1274513303%_ '0)))
                        (let ((_%tl1281712869%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1981219813%_ '1)))
                              (_%target1281512866%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1981219813%_ '0))))
                          (if (gx#stx-null? _%tl1281712869%_)
                              (_%__match1995619957%_
                               _%e1273713276%_
                               _%hd1273813280%_
                               _%tl1273913283%_
                               _%e1274013286%_
                               _%hd1274113290%_
                               _%tl1274213293%_
                               _%e1274313296%_
                               _%hd1274413300%_
                               _%tl1274513303%_
                               _%__splice1981219813%_
                               _%target1281512866%_
                               _%tl1281712869%_)
                              (let ()
                                (declare (not safe))
                                (_%g1273312829%_)))))
                      (let () (declare (not safe)) (_%g1273312829%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl1274513303%_)
                                                  (let ((_%__splice1981219813%_
                                                         (gx#syntax-split-splice
                                                          _%tl1274513303%_
                                                          '0)))
                                                    (let ((_%tl1281712869%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1981219813%_
                                                              '1)))
                                                          (_%target1281512866%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1981219813%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl1281712869%_)
                                                          (_%__match1995619957%_
                                                           _%e1273713276%_
                                                           _%hd1273813280%_
                                                           _%tl1273913283%_
                                                           _%e1274013286%_
                                                           _%hd1274113290%_
                                                           _%tl1274213293%_
                                                           _%e1274313296%_
                                                           _%hd1274413300%_
                                                           _%tl1274513303%_
                                                           _%__splice1981219813%_
                                                           _%target1281512866%_
                                                           _%tl1281712869%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g1273312829%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1273312829%_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1273312829%_)))))
                          (let () (declare (not safe)) (_%g1273312829%_)))))
                  (let () (declare (not safe)) (_%g1273312829%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch-bsearch|
      (lambda (_%stx13328%_)
        (letrec ((_%split13331%_
                  (lambda (_%lst13692%_ _%mid13694%_)
                    (let _%lp13696%_ ((_%i13699%_ '0)
                                      (_%rest13701%_ _%lst13692%_)
                                      (_%left13702%_ '()))
                      (if (fx< _%i13699%_ _%mid13694%_)
                          (_%lp13696%_
                           (fx1+ _%i13699%_)
                           (cdr _%rest13701%_)
                           (cons (car _%rest13701%_) _%left13702%_))
                          (values (reverse _%left13702%_) _%rest13701%_))))))
          (let* ((_%g1333413362%_
                  (lambda (_%g1333513358%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1333513358%_)))
                 (_%g1333313688%_
                  (lambda (_%g1333513366%_)
                    (if (gx#stx-pair? _%g1333513366%_)
                        (let ((_%e1333913369%_ (gx#syntax-e _%g1333513366%_)))
                          (let ((_%hd1334013373%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1333913369%_)))
                                (_%tl1334113376%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1333913369%_))))
                            (if (gx#stx-pair? _%tl1334113376%_)
                                (let ((_%e1334213379%_
                                       (gx#syntax-e _%tl1334113376%_)))
                                  (let ((_%hd1334313383%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1334213379%_)))
                                        (_%tl1334413386%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1334213379%_))))
                                    (if (gx#stx-pair? _%tl1334413386%_)
                                        (let ((_%e1334513389%_
                                               (gx#syntax-e _%tl1334413386%_)))
                                          (let ((_%hd1334613393%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1334513389%_)))
                                                (_%tl1334713396%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1334513389%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl1334713396%_)
                                                (let ((_g21021_
                                                       (gx#syntax-split-splice
                                                        _%tl1334713396%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g21022_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g21021_)
                         (##vector-length _g21021_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g21022_ 2)))
                  (error "Context expects 2 values" _g21022_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target1334813399%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g21021_
                                                              0)))
                                                          (_%tl1335013402%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g21021_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl1335013402%_)
                                                          (letrec ((_%loop1335113405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd1334913409%_ _%K1335513412%_)
                              (if (gx#stx-pair? _%hd1334913409%_)
                                  (let ((_%e1335213415%_
                                         (gx#syntax-e _%hd1334913409%_)))
                                    (let ((_%lp-hd1335313419%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1335213415%_)))
                                          (_%lp-tl1335413422%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1335213415%_))))
                                      (_%loop1335113405%_
                                       _%lp-tl1335413422%_
                                       (cons _%lp-hd1335313419%_
                                             _%K1335513412%_))))
                                  (let ((_%K1335613425%_
                                         (reverse _%K1335513412%_)))
                                    ((lambda (_%L13429%_ _%L13431%_ _%L13432%_)
                                       (let* ((_%len13462%_
                                               (length (foldr (lambda (_%g1345313456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1345413459%_)
                        (cons _%g1345313456%_ _%g1345413459%_))
                      '()
                      _%L13429%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%mid13465%_
                                               (quotient _%len13462%_ '2))
                                              (_g21023_
                                               (_%split13331%_
                                                (foldr (lambda (_%g1346713470%_
                                                                _%g1346813473%_)
                                                         (cons _%g1346713470%_
                                                               _%g1346813473%_))
                                                       '()
                                                       _%L13429%_)
                                                _%mid13465%_)))
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
                                           (let ((_%left13476%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g21023_ 0)))
                                                 (_%right13478%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g21023_
                                                     1))))
                                             (let* ((_%g1348213523%_
                                                     (lambda (_%g1348313519%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g1348313519%_)))
                                                    (_%g1348113684%_
                                                     (lambda (_%g1348313527%_)
                                                       (if (gx#stx-pair?
                                                            _%g1348313527%_)
                                                           (let ((_%e1348813530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g1348313527%_)))
                     (let ((_%hd1348913534%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1348813530%_)))
                           (_%tl1349013537%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1348813530%_))))
                       (if (gx#stx-pair? _%tl1349013537%_)
                           (let ((_%e1349113540%_
                                  (gx#syntax-e _%tl1349013537%_)))
                             (let ((_%hd1349213544%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1349113540%_)))
                                   (_%tl1349313547%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1349113540%_))))
                               (if (gx#stx-pair/null? _%hd1349213544%_)
                                   (let ((_g21025_
                                          (gx#syntax-split-splice
                                           _%hd1349213544%_
                                           '0)))
                                     (begin
                                       (let ((_g21026_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21025_)
                                                    (##vector-length _g21025_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21026_ 2)))
                                             (error "Context expects 2 values"
                                                    _g21026_)))
                                       (let ((_%target1349413550%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21025_ 0)))
                                             (_%tl1349613553%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21025_ 1))))
                                         (if (gx#stx-null? _%tl1349613553%_)
                                             (letrec ((_%loop1349713556%_
                                                       (lambda (_%hd1349513560%_
                                                                _%K-left1350113563%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1349513560%_)
                                                             (let ((_%e1349813566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1349513560%_)))
                       (let ((_%lp-hd1349913570%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1349813566%_)))
                             (_%lp-tl1350013573%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1349813566%_))))
                         (_%loop1349713556%_
                          _%lp-tl1350013573%_
                          (cons _%lp-hd1349913570%_ _%K-left1350113563%_))))
                     (let ((_%K-left1350213576%_
                            (reverse _%K-left1350113563%_)))
                       (if (gx#stx-pair? _%tl1349313547%_)
                           (let ((_%e1350313580%_
                                  (gx#syntax-e _%tl1349313547%_)))
                             (let ((_%hd1350413584%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1350313580%_)))
                                   (_%tl1350513587%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1350313580%_))))
                               (if (gx#stx-pair/null? _%hd1350413584%_)
                                   (let ((_g21027_
                                          (gx#syntax-split-splice
                                           _%hd1350413584%_
                                           '0)))
                                     (begin
                                       (let ((_g21028_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21027_)
                                                    (##vector-length _g21027_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21028_ 2)))
                                             (error "Context expects 2 values"
                                                    _g21028_)))
                                       (let ((_%target1350613590%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21027_ 0)))
                                             (_%tl1350813593%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21027_ 1))))
                                         (if (gx#stx-null? _%tl1350813593%_)
                                             (letrec ((_%loop1350913596%_
                                                       (lambda (_%hd1350713600%_
                                                                _%K-right1351313603%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1350713600%_)
                                                             (let ((_%e1351013606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1350713600%_)))
                       (let ((_%lp-hd1351113610%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1351013606%_)))
                             (_%lp-tl1351213613%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1351013606%_))))
                         (_%loop1350913596%_
                          _%lp-tl1351213613%_
                          (cons _%lp-hd1351113610%_ _%K-right1351313603%_))))
                     (let ((_%K-right1351413616%_
                            (reverse _%K-right1351313603%_)))
                       (if (gx#stx-pair? _%tl1350513587%_)
                           (let ((_%e1351513620%_
                                  (gx#syntax-e _%tl1350513587%_)))
                             (let ((_%hd1351613624%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1351513620%_)))
                                   (_%tl1351713627%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1351513620%_))))
                               (if (gx#stx-null? _%tl1351713627%_)
                                   ((lambda (_%L13630%_
                                             _%L13632%_
                                             _%L13633%_
                                             _%L13634%_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '##fx<)
                                                        (cons _%L13431%_
                                                              (cons _%L13630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch*)
                                                              (cons _%L13432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L13431%_
                                  (foldr (lambda (_%g1366913672%_
                                                  _%g1367013675%_)
                                           (cons _%g1366913672%_
                                                 _%g1367013675%_))
                                         '()
                                         _%L13633%_))))
                (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                            (cons _%L13630%_
                                  (cons _%L13431%_
                                        (foldr (lambda (_%g1366713678%_
                                                        _%g1366813681%_)
                                                 (cons _%g1366713678%_
                                                       _%g1366813681%_))
                                               '()
                                               _%L13632%_))))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%hd1351613624%_
                                    _%K-right1351413616%_
                                    _%K-left1350213576%_
                                    _%hd1348913534%_)
                                   (_%g1348213523%_ _%g1348313527%_))))
                           (_%g1348213523%_ _%g1348313527%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1350913596%_
                                                _%target1350613590%_
                                                '()))
                                             (_%g1348213523%_
                                              _%g1348313527%_)))))
                                   (_%g1348213523%_ _%g1348313527%_))))
                           (_%g1348213523%_ _%g1348313527%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1349713556%_
                                                _%target1349413550%_
                                                '()))
                                             (_%g1348213523%_
                                              _%g1348313527%_)))))
                                   (_%g1348213523%_ _%g1348313527%_))))
                           (_%g1348213523%_ _%g1348313527%_))))
                   (_%g1348213523%_ _%g1348313527%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g1348113684%_
                                                (list _%mid13465%_
                                                      _%left13476%_
                                                      _%right13478%_
                                                      (fx+ _%mid13465%_
                                                           (gx#stx-e
                                                            _%L13432%_)))))))))
                                     _%K1335613425%_
                                     _%hd1334613393%_
                                     _%hd1334313383%_))))))
                    (_%loop1335113405%_ _%target1334813399%_ '()))
                  (_%g1333413362%_ _%g1333513366%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1333413362%_
                                                 _%g1333513366%_))))
                                        (_%g1333413362%_ _%g1333513366%_))))
                                (_%g1333413362%_ _%g1333513366%_))))
                        (_%g1333413362%_ _%g1333513366%_)))))
            (_%g1333313688%_ _%stx13328%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#do|
      (lambda (_%$stx13708%_)
        (let* ((_%g1371213783%_
                (lambda (_%g1371313779%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1371313779%_)))
               (_%g1371114072%_
                (lambda (_%g1371313787%_)
                  (if (gx#stx-pair? _%g1371313787%_)
                      (let ((_%e1372013790%_ (gx#syntax-e _%g1371313787%_)))
                        (let ((_%hd1372113794%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1372013790%_)))
                              (_%tl1372213797%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1372013790%_))))
                          (if (gx#stx-pair? _%tl1372213797%_)
                              (let ((_%e1372313800%_
                                     (gx#syntax-e _%tl1372213797%_)))
                                (let ((_%hd1372413804%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1372313800%_)))
                                      (_%tl1372513807%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1372313800%_))))
                                  (if (gx#stx-pair/null? _%hd1372413804%_)
                                      (let ((_g21029_
                                             (gx#syntax-split-splice
                                              _%hd1372413804%_
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
                                          (let ((_%target1372613810%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21029_ 0)))
                                                (_%tl1372813813%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21029_ 1))))
                                            (if (gx#stx-null? _%tl1372813813%_)
                                                (letrec ((_%loop1372913816%_
                                                          (lambda (_%hd1372713820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step1373313823%_
                           _%init1373413825%_
                           _%var1373513827%_)
                    (if (gx#stx-pair? _%hd1372713820%_)
                        (let ((_%e1373013830%_ (gx#syntax-e _%hd1372713820%_)))
                          (let ((_%lp-hd1373113834%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1373013830%_)))
                                (_%lp-tl1373213837%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1373013830%_))))
                            (if (gx#stx-pair? _%lp-hd1373113834%_)
                                (let ((_%e1376313840%_
                                       (gx#syntax-e _%lp-hd1373113834%_)))
                                  (let ((_%hd1376413844%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1376313840%_)))
                                        (_%tl1376513847%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1376313840%_))))
                                    (if (gx#stx-pair? _%tl1376513847%_)
                                        (let ((_%e1376613850%_
                                               (gx#syntax-e _%tl1376513847%_)))
                                          (let ((_%hd1376713854%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1376613850%_)))
                                                (_%tl1376813857%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1376613850%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl1376813857%_)
                                                (let ((_g21031_
                                                       (gx#syntax-split-splice
                                                        _%tl1376813857%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g21032_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g21031_)
                         (##vector-length _g21031_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g21032_ 2)))
                  (error "Context expects 2 values" _g21032_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target1376913860%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g21031_
                                                              0)))
                                                          (_%tl1377113863%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g21031_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl1377113863%_)
                                                          (letrec ((_%loop1377213866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd1377013870%_ _%step1377613873%_)
                              (if (gx#stx-pair? _%hd1377013870%_)
                                  (let ((_%e1377313876%_
                                         (gx#syntax-e _%hd1377013870%_)))
                                    (let ((_%lp-hd1377413880%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1377313876%_)))
                                          (_%lp-tl1377513883%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1377313876%_))))
                                      (_%loop1377213866%_
                                       _%lp-tl1377513883%_
                                       (cons _%lp-hd1377413880%_
                                             _%step1377613873%_))))
                                  (let ((_%step1377713886%_
                                         (reverse _%step1377613873%_)))
                                    (_%loop1372913816%_
                                     _%lp-tl1373213837%_
                                     (cons _%step1377713886%_
                                           _%step1373313823%_)
                                     (cons _%hd1376713854%_ _%init1373413825%_)
                                     (cons _%hd1376413844%_
                                           _%var1373513827%_)))))))
                    (_%loop1377213866%_ _%target1376913860%_ '()))
                  (_%g1371213783%_ _%g1371313787%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1371213783%_
                                                 _%g1371313787%_))))
                                        (_%g1371213783%_ _%g1371313787%_))))
                                (_%g1371213783%_ _%g1371313787%_))))
                        (let ((_%step1373613890%_ (reverse _%step1373313823%_))
                              (_%init1373713893%_ (reverse _%init1373413825%_))
                              (_%var1373813895%_ (reverse _%var1373513827%_)))
                          (if (gx#stx-pair? _%tl1372513807%_)
                              (let ((_%e1373913898%_
                                     (gx#syntax-e _%tl1372513807%_)))
                                (let ((_%hd1374013902%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1373913898%_)))
                                      (_%tl1374113905%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1373913898%_))))
                                  (if (gx#stx-pair? _%hd1374013902%_)
                                      (let ((_%e1374213908%_
                                             (gx#syntax-e _%hd1374013902%_)))
                                        (let ((_%hd1374313912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1374213908%_)))
                                              (_%tl1374413915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1374213908%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1374413915%_)
                                              (let ((_g21033_
                                                     (gx#syntax-split-splice
                                                      _%tl1374413915%_
                                                      '0)))
                                                (begin
                                                  (let ((_g21034_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g21033_)
                                                               (##vector-length
                                                                _g21033_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g21034_ 2)))
                (error "Context expects 2 values" _g21034_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1374513918%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g21033_
                                                            0)))
                                                        (_%tl1374713921%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g21033_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1374713921%_)
                                                        (letrec ((_%loop1374813924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1374613928%_ _%fini1375213931%_)
                            (if (gx#stx-pair? _%hd1374613928%_)
                                (let ((_%e1374913934%_
                                       (gx#syntax-e _%hd1374613928%_)))
                                  (let ((_%lp-hd1375013938%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1374913934%_)))
                                        (_%lp-tl1375113941%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1374913934%_))))
                                    (_%loop1374813924%_
                                     _%lp-tl1375113941%_
                                     (cons _%lp-hd1375013938%_
                                           _%fini1375213931%_))))
                                (let ((_%fini1375313944%_
                                       (reverse _%fini1375213931%_)))
                                  (if (gx#stx-pair/null? _%tl1374113905%_)
                                      (let ((_g21035_
                                             (gx#syntax-split-splice
                                              _%tl1374113905%_
                                              '0)))
                                        (begin
                                          (let ((_g21036_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21035_)
                                                       (##vector-length
                                                        _g21035_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21036_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21036_)))
                                          (let ((_%target1375413948%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21035_ 0)))
                                                (_%tl1375613951%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21035_ 1))))
                                            (if (gx#stx-null? _%tl1375613951%_)
                                                (letrec ((_%loop1375713954%_
                                                          (lambda (_%hd1375513958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body1376113961%_)
                    (if (gx#stx-pair? _%hd1375513958%_)
                        (let ((_%e1375813964%_ (gx#syntax-e _%hd1375513958%_)))
                          (let ((_%lp-hd1375913968%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1375813964%_)))
                                (_%lp-tl1376013971%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1375813964%_))))
                            (_%loop1375713954%_
                             _%lp-tl1376013971%_
                             (cons _%lp-hd1375913968%_ _%body1376113961%_))))
                        (let ((_%body1376213974%_
                               (reverse _%body1376113961%_)))
                          ((lambda (_%L13978%_
                                    _%L13980%_
                                    _%L13981%_
                                    _%L13982%_
                                    _%L13983%_
                                    _%L13984%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g1401714020%_
                                                  _%g1401814023%_)
                                           (cons _%g1401714020%_
                                                 _%g1401814023%_))
                                         '()
                                         _%L13984%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%L13983%_
                                                      _%L13984%_)
                                                     (foldr (lambda (_%g1403414038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g1403514041%_
                             _%g1403614043%_)
                      (cons (cons _%g1403514041%_ (cons _%g1403414038%_ '()))
                            _%g1403614043%_))
                    '()
                    _%L13983%_
                    _%L13984%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _%L13981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_%g1403214046%_
                                                               _%g1403314049%_)
                                                        (cons _%g1403214046%_
                                                              _%g1403314049%_))
                                                      '()
                                                      _%L13980%_)))
                                   (cons (cons (gx#datum->syntax '#f 'begin)
                                               (foldr (lambda (_%g1402514052%_
                                                               _%g1402614055%_)
                                                        (cons _%g1402514052%_
                                                              _%g1402614055%_))
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$loop)
                          (begin
                            (gx#syntax-check-splice-targets
                             _%L13982%_
                             _%L13984%_)
                            (foldr (lambda (_%g1402714058%_
                                            _%g1402814061%_
                                            _%g1402914063%_)
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons _%g1402814061%_
                                                       (foldr (lambda (_%g1403014066%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1403114069%_)
                        (cons _%g1403014066%_ _%g1403114069%_))
                      '()
                      _%g1402714058%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g1402914063%_))
                                   '()
                                   _%L13982%_
                                   _%L13984%_)))
                    '())
              _%L13978%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g1371213783%_ _%g1371313787%_)))
                           _%body1376213974%_
                           _%fini1375313944%_
                           _%hd1374313912%_
                           _%step1373613890%_
                           _%init1373713893%_
                           _%var1373813895%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1375713954%_
                                                   _%target1375413948%_
                                                   '()))
                                                (_%g1371213783%_
                                                 _%g1371313787%_)))))
                                      (_%g1371213783%_ _%g1371313787%_)))))))
                  (_%loop1374813924%_ _%target1374513918%_ '()))
                (_%g1371213783%_ _%g1371313787%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1371213783%_
                                               _%g1371313787%_))))
                                      (_%g1371213783%_ _%g1371313787%_))))
                              (_%g1371213783%_ _%g1371313787%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1372913816%_
                                                   _%target1372613810%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g1371213783%_
                                                 _%g1371313787%_)))))
                                      (_%g1371213783%_ _%g1371313787%_))))
                              (_%g1371213783%_ _%g1371313787%_))))
                      (_%g1371213783%_ _%g1371313787%_)))))
          (_%g1371114072%_ _%$stx13708%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#do-while|
      (lambda (_%$stx14080%_)
        (let* ((_%g1408414107%_
                (lambda (_%g1408514103%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1408514103%_)))
               (_%g1408314178%_
                (lambda (_%g1408514111%_)
                  (if (gx#stx-pair? _%g1408514111%_)
                      (let ((_%e1409014114%_ (gx#syntax-e _%g1408514111%_)))
                        (let ((_%hd1409114118%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1409014114%_)))
                              (_%tl1409214121%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1409014114%_))))
                          (if (gx#stx-pair? _%tl1409214121%_)
                              (let ((_%e1409314124%_
                                     (gx#syntax-e _%tl1409214121%_)))
                                (let ((_%hd1409414128%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1409314124%_)))
                                      (_%tl1409514131%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1409314124%_))))
                                  (if (gx#stx-pair? _%tl1409514131%_)
                                      (let ((_%e1409614134%_
                                             (gx#syntax-e _%tl1409514131%_)))
                                        (let ((_%hd1409714138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1409614134%_)))
                                              (_%tl1409814141%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1409614134%_))))
                                          (if (gx#stx-pair? _%hd1409714138%_)
                                              (let ((_%e1409914144%_
                                                     (gx#syntax-e
                                                      _%hd1409714138%_)))
                                                (let ((_%hd1410014148%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1409914144%_)))
                                                      (_%tl1410114151%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1409914144%_))))
                                                  ((lambda (_%L14154%_
                                                            _%L14156%_
                                                            _%L14157%_
                                                            _%L14158%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'do)
                                                           (cons _%L14158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (gx#datum->syntax '#f 'not)
                                           (cons _%L14157%_ '()))
                                     _%L14156%_)
                               _%L14154%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%tl1409814141%_
                                                   _%tl1410114151%_
                                                   _%hd1410014148%_
                                                   _%hd1409414128%_)))
                                              (_%g1408414107%_
                                               _%g1408514111%_))))
                                      (_%g1408414107%_ _%g1408514111%_))))
                              (_%g1408414107%_ _%g1408514111%_))))
                      (_%g1408414107%_ _%g1408514111%_)))))
          (_%g1408314178%_ _%$stx14080%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#begin0|
      (lambda (_%$stx14182%_)
        (let* ((_%__stx1995919960%_ _%$stx14182%_)
               (_%g1418714218%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1995919960%_))))
          (let ((_%__kont1996219963%_ (lambda (_%L14330%_) _%L14330%_))
                (_%__kont1996419965%_
                 (lambda (_%L14275%_ _%L14277%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$r)
                                     (cons _%L14277%_ '()))
                               (cons (cons (gx#datum->syntax '#f '%#expression)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1429414297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1429514300%_)
                        (cons _%g1429414297%_ _%g1429514300%_))
                      '()
                      _%L14275%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (gx#datum->syntax '#f '$r)
                                           '())))))))
            (let ((_%__match2000220003%_
                   (lambda (_%e1419814225%_
                            _%hd1419914229%_
                            _%tl1420014232%_
                            _%e1420114235%_
                            _%hd1420214239%_
                            _%tl1420314242%_
                            _%__splice1996619967%_
                            _%target1420414245%_
                            _%tl1420614248%_)
                     (letrec ((_%loop1420714251%_
                               (lambda (_%hd1420514255%_ _%rest1421114258%_)
                                 (if (gx#stx-pair? _%hd1420514255%_)
                                     (let ((_%e1420814261%_
                                            (gx#syntax-e _%hd1420514255%_)))
                                       (let ((_%lp-tl1421014268%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1420814261%_)))
                                             (_%lp-hd1420914265%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1420814261%_))))
                                         (_%loop1420714251%_
                                          _%lp-tl1421014268%_
                                          (cons _%lp-hd1420914265%_
                                                _%rest1421114258%_))))
                                     (let ((_%rest1421214271%_
                                            (reverse _%rest1421114258%_)))
                                       (_%__kont1996419965%_
                                        _%rest1421214271%_
                                        _%hd1420214239%_))))))
                       (_%loop1420714251%_ _%target1420414245%_ '())))))
              (if (gx#stx-pair? _%__stx1995919960%_)
                  (let ((_%e1419014310%_ (gx#syntax-e _%__stx1995919960%_)))
                    (let ((_%tl1419214317%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1419014310%_)))
                          (_%hd1419114314%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1419014310%_))))
                      (if (gx#stx-pair? _%tl1419214317%_)
                          (let ((_%e1419314320%_
                                 (gx#syntax-e _%tl1419214317%_)))
                            (let ((_%tl1419514327%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1419314320%_)))
                                  (_%hd1419414324%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1419314320%_))))
                              (if (gx#stx-null? _%tl1419514327%_)
                                  (_%__kont1996219963%_ _%hd1419414324%_)
                                  (if (gx#stx-pair/null? _%tl1419514327%_)
                                      (let ((_%__splice1996619967%_
                                             (gx#syntax-split-splice
                                              _%tl1419514327%_
                                              '0)))
                                        (let ((_%tl1420614248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1996619967%_
                                                  '1)))
                                              (_%target1420414245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1996619967%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1420614248%_)
                                              (_%__match2000220003%_
                                               _%e1419014310%_
                                               _%hd1419114314%_
                                               _%tl1419214317%_
                                               _%e1419314320%_
                                               _%hd1419414324%_
                                               _%tl1419514327%_
                                               _%__splice1996619967%_
                                               _%target1420414245%_
                                               _%tl1420614248%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1418714218%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1418714218%_))))))
                          (let () (declare (not safe)) (_%g1418714218%_)))))
                  (let () (declare (not safe)) (_%g1418714218%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#rec|
      (lambda (_%$stx14348%_)
        (let* ((_%__stx2000520006%_ _%$stx14348%_)
               (_%g1435414407%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2000520006%_))))
          (let ((_%__kont2000820009%_
                 (lambda (_%L14609%_ _%L14611%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%L14611%_ (cons _%L14609%_ '()))
                                     '())
                               (cons _%L14611%_ '())))))
                (_%__kont2001020011%_
                 (lambda (_%L14553%_ _%L14555%_)
                   (cons (gx#datum->syntax '#f 'letrec-values)
                         (cons (cons (cons _%L14555%_ (cons _%L14553%_ '()))
                                     '())
                               (cons (cons (gx#datum->syntax '#f 'values)
                                           _%L14555%_)
                                     '())))))
                (_%__kont2001220013%_
                 (lambda (_%L14474%_ _%L14476%_ _%L14477%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%L14477%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons _%L14476%_
                                                             (foldr (lambda (_%g1449714500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1449814503%_)
                              (cons _%g1449714500%_ _%g1449814503%_))
                            '()
                            _%L14474%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons _%L14477%_ '()))))))
            (let* ((_%__match2009220093%_
                    (lambda (_%e1438414414%_
                             _%hd1438514418%_
                             _%tl1438614421%_
                             _%e1438714424%_
                             _%hd1438814428%_
                             _%tl1438914431%_
                             _%e1439014434%_
                             _%hd1439114438%_
                             _%tl1439214441%_
                             _%__splice2001420015%_
                             _%target1439314444%_
                             _%tl1439514447%_)
                      (letrec ((_%loop1439614450%_
                                (lambda (_%hd1439414454%_ _%body1440014457%_)
                                  (if (gx#stx-pair? _%hd1439414454%_)
                                      (let ((_%e1439714460%_
                                             (gx#syntax-e _%hd1439414454%_)))
                                        (let ((_%lp-tl1439914467%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1439714460%_)))
                                              (_%lp-hd1439814464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1439714460%_))))
                                          (_%loop1439614450%_
                                           _%lp-tl1439914467%_
                                           (cons _%lp-hd1439814464%_
                                                 _%body1440014457%_))))
                                      (let ((_%body1440114470%_
                                             (reverse _%body1440014457%_)))
                                        (let ((_%L14474%_ _%body1440114470%_)
                                              (_%L14476%_ _%tl1439214441%_)
                                              (_%L14477%_ _%hd1439114438%_))
                                          (if (gx#identifier? _%L14477%_)
                                              (_%__kont2001220013%_
                                               _%L14474%_
                                               _%L14476%_
                                               _%L14477%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1435414407%_)))))))))
                        (_%loop1439614450%_ _%target1439314444%_ '()))))
                   (_%__match2006620067%_
                    (lambda (_%e1436914513%_
                             _%hd1437014517%_
                             _%tl1437114520%_
                             _%e1437214523%_
                             _%hd1437314527%_
                             _%tl1437414530%_
                             _%e1437514533%_
                             _%hd1437614537%_
                             _%tl1437714540%_
                             _%e1437814543%_
                             _%hd1437914547%_
                             _%tl1438014550%_)
                      (let ((_%L14553%_ _%hd1437914547%_)
                            (_%L14555%_ _%tl1437714540%_))
                        (if (gx#identifier-list? _%L14555%_)
                            (_%__kont2001020011%_ _%L14553%_ _%L14555%_)
                            (if (gx#stx-pair/null? _%tl1437414530%_)
                                (let ((_%__splice2001420015%_
                                       (gx#syntax-split-splice
                                        _%tl1437414530%_
                                        '0)))
                                  (let ((_%tl1439514447%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2001420015%_
                                            '1)))
                                        (_%target1439314444%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2001420015%_
                                            '0))))
                                    (if (gx#stx-null? _%tl1439514447%_)
                                        (_%__match2009220093%_
                                         _%e1436914513%_
                                         _%hd1437014517%_
                                         _%tl1437114520%_
                                         _%e1437214523%_
                                         _%hd1437314527%_
                                         _%tl1437414530%_
                                         _%e1437514533%_
                                         _%hd1437614537%_
                                         _%tl1437714540%_
                                         _%__splice2001420015%_
                                         _%target1439314444%_
                                         _%tl1439514447%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1435414407%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1435414407%_)))))))
                   (_%__match2003620037%_
                    (lambda (_%e1435814579%_
                             _%hd1435914583%_
                             _%tl1436014586%_
                             _%e1436114589%_
                             _%hd1436214593%_
                             _%tl1436314596%_
                             _%e1436414599%_
                             _%hd1436514603%_
                             _%tl1436614606%_)
                      (let ((_%L14609%_ _%hd1436514603%_)
                            (_%L14611%_ _%hd1436214593%_))
                        (if (gx#identifier? _%L14611%_)
                            (_%__kont2000820009%_ _%L14609%_ _%L14611%_)
                            (if (gx#stx-pair? _%hd1436214593%_)
                                (let ((_%e1437514533%_
                                       (gx#syntax-e _%hd1436214593%_)))
                                  (let ((_%tl1437714540%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1437514533%_)))
                                        (_%hd1437614537%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1437514533%_))))
                                    (if (gx#identifier? _%hd1437614537%_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core/sugar~Sugar-2[1]#_g21037_|
                                             _%hd1437614537%_)
                                            (_%__match2006620067%_
                                             _%e1435814579%_
                                             _%hd1435914583%_
                                             _%tl1436014586%_
                                             _%e1436114589%_
                                             _%hd1436214593%_
                                             _%tl1436314596%_
                                             _%e1437514533%_
                                             _%hd1437614537%_
                                             _%tl1437714540%_
                                             _%e1436414599%_
                                             _%hd1436514603%_
                                             _%tl1436614606%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl1436314596%_)
                                                (let ((_%__splice2001420015%_
                                                       (gx#syntax-split-splice
                                                        _%tl1436314596%_
                                                        '0)))
                                                  (let ((_%tl1439514447%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2001420015%_
                                                            '1)))
                                                        (_%target1439314444%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2001420015%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl1439514447%_)
                                                        (_%__match2009220093%_
                                                         _%e1435814579%_
                                                         _%hd1435914583%_
                                                         _%tl1436014586%_
                                                         _%e1436114589%_
                                                         _%hd1436214593%_
                                                         _%tl1436314596%_
                                                         _%e1437514533%_
                                                         _%hd1437614537%_
                                                         _%tl1437714540%_
                                                         _%__splice2001420015%_
                                                         _%target1439314444%_
                                                         _%tl1439514447%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g1435414407%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1435414407%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl1436314596%_)
                                            (let ((_%__splice2001420015%_
                                                   (gx#syntax-split-splice
                                                    _%tl1436314596%_
                                                    '0)))
                                              (let ((_%tl1439514447%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2001420015%_
                                                        '1)))
                                                    (_%target1439314444%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2001420015%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1439514447%_)
                                                    (_%__match2009220093%_
                                                     _%e1435814579%_
                                                     _%hd1435914583%_
                                                     _%tl1436014586%_
                                                     _%e1436114589%_
                                                     _%hd1436214593%_
                                                     _%tl1436314596%_
                                                     _%e1437514533%_
                                                     _%hd1437614537%_
                                                     _%tl1437714540%_
                                                     _%__splice2001420015%_
                                                     _%target1439314444%_
                                                     _%tl1439514447%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1435414407%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g1435414407%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1435414407%_))))))))
              (if (gx#stx-pair? _%__stx2000520006%_)
                  (let ((_%e1435814579%_ (gx#syntax-e _%__stx2000520006%_)))
                    (let ((_%tl1436014586%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1435814579%_)))
                          (_%hd1435914583%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1435814579%_))))
                      (if (gx#stx-pair? _%tl1436014586%_)
                          (let ((_%e1436114589%_
                                 (gx#syntax-e _%tl1436014586%_)))
                            (let ((_%tl1436314596%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1436114589%_)))
                                  (_%hd1436214593%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1436114589%_))))
                              (if (gx#stx-pair? _%tl1436314596%_)
                                  (let ((_%e1436414599%_
                                         (gx#syntax-e _%tl1436314596%_)))
                                    (let ((_%tl1436614606%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1436414599%_)))
                                          (_%hd1436514603%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1436414599%_))))
                                      (if (gx#stx-null? _%tl1436614606%_)
                                          (_%__match2003620037%_
                                           _%e1435814579%_
                                           _%hd1435914583%_
                                           _%tl1436014586%_
                                           _%e1436114589%_
                                           _%hd1436214593%_
                                           _%tl1436314596%_
                                           _%e1436414599%_
                                           _%hd1436514603%_
                                           _%tl1436614606%_)
                                          (if (gx#stx-pair? _%hd1436214593%_)
                                              (let ((_%e1437514533%_
                                                     (gx#syntax-e
                                                      _%hd1436214593%_)))
                                                (let ((_%tl1437714540%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1437514533%_)))
                                                      (_%hd1437614537%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1437514533%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl1436314596%_)
                                                      (let ((_%__splice2001420015%_
                                                             (gx#syntax-split-splice
                                                              _%tl1436314596%_
                                                              '0)))
                                                        (let ((_%tl1439514447%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice2001420015%_ '1)))
                      (_%target1439314444%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice2001420015%_ '0))))
                  (if (gx#stx-null? _%tl1439514447%_)
                      (_%__match2009220093%_
                       _%e1435814579%_
                       _%hd1435914583%_
                       _%tl1436014586%_
                       _%e1436114589%_
                       _%hd1436214593%_
                       _%tl1436314596%_
                       _%e1437514533%_
                       _%hd1437614537%_
                       _%tl1437714540%_
                       _%__splice2001420015%_
                       _%target1439314444%_
                       _%tl1439514447%_)
                      (let () (declare (not safe)) (_%g1435414407%_)))))
              (let () (declare (not safe)) (_%g1435414407%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1435414407%_))))))
                                  (if (gx#stx-pair? _%hd1436214593%_)
                                      (let ((_%e1437514533%_
                                             (gx#syntax-e _%hd1436214593%_)))
                                        (let ((_%tl1437714540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1437514533%_)))
                                              (_%hd1437614537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1437514533%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1436314596%_)
                                              (let ((_%__splice2001420015%_
                                                     (gx#syntax-split-splice
                                                      _%tl1436314596%_
                                                      '0)))
                                                (let ((_%tl1439514447%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2001420015%_
                                                          '1)))
                                                      (_%target1439314444%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2001420015%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1439514447%_)
                                                      (_%__match2009220093%_
                                                       _%e1435814579%_
                                                       _%hd1435914583%_
                                                       _%tl1436014586%_
                                                       _%e1436114589%_
                                                       _%hd1436214593%_
                                                       _%tl1436314596%_
                                                       _%e1437514533%_
                                                       _%hd1437614537%_
                                                       _%tl1437714540%_
                                                       _%__splice2001420015%_
                                                       _%target1439314444%_
                                                       _%tl1439514447%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1435414407%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1435414407%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1435414407%_))))))
                          (let () (declare (not safe)) (_%g1435414407%_)))))
                  (let () (declare (not safe)) (_%g1435414407%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet|
      (lambda (_%stx14631%_)
        (letrec ((_%let-bind?14634%_
                  (lambda (_%x15557%_)
                    (let* ((_%__stx2009520096%_ _%x15557%_)
                           (_%g1556215581%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2009520096%_))))
                      (let ((_%__kont2009820099%_
                             (lambda (_%L15649%_ _%L15651%_)
                               (_%let-head?14637%_ _%L15651%_)))
                            (_%__kont2010020101%_ (lambda (_%L15609%_) '#t))
                            (_%__kont2010220103%_ (lambda () '#f)))
                        (if (gx#stx-pair? _%__stx2009520096%_)
                            (let ((_%e1556615629%_
                                   (gx#syntax-e _%__stx2009520096%_)))
                              (let ((_%tl1556815636%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1556615629%_)))
                                    (_%hd1556715633%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1556615629%_))))
                                (if (gx#stx-pair? _%tl1556815636%_)
                                    (let ((_%e1556915639%_
                                           (gx#syntax-e _%tl1556815636%_)))
                                      (let ((_%tl1557115646%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1556915639%_)))
                                            (_%hd1557015643%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1556915639%_))))
                                        (if (gx#stx-null? _%tl1557115646%_)
                                            (_%__kont2009820099%_
                                             _%hd1557015643%_
                                             _%hd1556715633%_)
                                            (_%__kont2010220103%_))))
                                    (if (gx#stx-null? _%tl1556815636%_)
                                        (_%__kont2010020101%_ _%hd1556715633%_)
                                        (_%__kont2010220103%_)))))
                            (_%__kont2010220103%_))))))
                 (_%let-bind14636%_
                  (lambda (_%x15459%_)
                    (let* ((_%__stx2012920130%_ _%x15459%_)
                           (_%g1546315482%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2012920130%_))))
                      (let ((_%__kont2013220133%_
                             (lambda (_%L15538%_ _%L15540%_) _%x15459%_))
                            (_%__kont2013420135%_
                             (lambda (_%L15499%_)
                               (cons (gx#datum->syntax '#f '_)
                                     (cons _%L15499%_ '())))))
                        (if (gx#stx-pair? _%__stx2012920130%_)
                            (let ((_%e1546715518%_
                                   (gx#syntax-e _%__stx2012920130%_)))
                              (let ((_%tl1546915525%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1546715518%_)))
                                    (_%hd1546815522%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1546715518%_))))
                                (if (gx#stx-pair? _%tl1546915525%_)
                                    (let ((_%e1547015528%_
                                           (gx#syntax-e _%tl1546915525%_)))
                                      (let ((_%tl1547215535%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1547015528%_)))
                                            (_%hd1547115532%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1547015528%_))))
                                        (if (gx#stx-null? _%tl1547215535%_)
                                            (_%__kont2013220133%_
                                             _%hd1547115532%_
                                             _%hd1546815522%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1546315482%_)))))
                                    (if (gx#stx-null? _%tl1546915525%_)
                                        (_%__kont2013420135%_ _%hd1546815522%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1546315482%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g1546315482%_)))))))
                 (_%let-head?14637%_
                  (lambda (_%x15399%_)
                    (let* ((_%__stx2016120162%_ _%x15399%_)
                           (_%g1540315414%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2016120162%_))))
                      (let ((_%__kont2016420165%_
                             (lambda (_%L15442%_)
                               (gx#stx-andmap gx#identifier? _%L15442%_)))
                            (_%__kont2016620167%_
                             (lambda () (gx#identifier? _%x15399%_))))
                        (if (gx#stx-pair? _%__stx2016120162%_)
                            (let ((_%e1540615432%_
                                   (gx#syntax-e _%__stx2016120162%_)))
                              (let ((_%tl1540815439%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1540615432%_)))
                                    (_%hd1540715436%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1540615432%_))))
                                (if (gx#identifier? _%hd1540715436%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g21038_|
                                         _%hd1540715436%_)
                                        (_%__kont2016420165%_ _%tl1540815439%_)
                                        (_%__kont2016620167%_))
                                    (_%__kont2016620167%_))))
                            (_%__kont2016620167%_))))))
                 (_%let-head14638%_
                  (lambda (_%x15339%_)
                    (let* ((_%__stx2018120182%_ _%x15339%_)
                           (_%g1534315354%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2018120182%_))))
                      (let ((_%__kont2018420185%_
                             (lambda (_%L15382%_) _%L15382%_))
                            (_%__kont2018620187%_
                             (lambda () (list _%x15339%_))))
                        (if (gx#stx-pair? _%__stx2018120182%_)
                            (let ((_%e1534615372%_
                                   (gx#syntax-e _%__stx2018120182%_)))
                              (let ((_%tl1534815379%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1534615372%_)))
                                    (_%hd1534715376%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1534615372%_))))
                                (if (gx#identifier? _%hd1534715376%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g21039_|
                                         _%hd1534715376%_)
                                        (_%__kont2018420185%_ _%tl1534815379%_)
                                        (_%__kont2018620187%_))
                                    (_%__kont2018620187%_))))
                            (_%__kont2018620187%_)))))))
          (let* ((_%__stx2020120202%_ _%stx14631%_)
                 (_%g1464214714%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2020120202%_))))
            (let ((_%__kont2020420205%_
                   (lambda (_%L15312%_ _%L15314%_ _%L15315%_ _%L15316%_)
                     (cons _%L15316%_
                           (cons (cons (cons _%L15315%_ (cons _%L15314%_ '()))
                                       '())
                                 _%L15312%_))))
                  (_%__kont2020620207%_
                   (lambda (_%L15234%_ _%L15236%_)
                     (cons (gx#datum->syntax '#f 'and)
                           (cons _%L15236%_
                                 (cons (cons (gx#datum->syntax '#f 'let)
                                             (cons '()
                                                   (foldr (lambda (_%g1525615259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1525715262%_)
                    (cons _%g1525615259%_ _%g1525715262%_))
                  '()
                  _%L15234%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                  (_%__kont2021020211%_
                   (lambda (_%L14801%_ _%L14803%_)
                     (let* ((_%g1483414860%_
                             (lambda (_%g1483514856%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g1483514856%_)))
                            (_%g1483315145%_
                             (lambda (_%g1483514864%_)
                               (if (gx#stx-pair/null? _%g1483514864%_)
                                   (let ((_g21040_
                                          (gx#syntax-split-splice
                                           _%g1483514864%_
                                           '0)))
                                     (begin
                                       (let ((_g21041_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21040_)
                                                    (##vector-length _g21040_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21041_ 2)))
                                             (error "Context expects 2 values"
                                                    _g21041_)))
                                       (let ((_%target1483814867%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21040_ 0)))
                                             (_%tl1484014870%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21040_ 1))))
                                         (if (gx#stx-null? _%tl1484014870%_)
                                             (letrec ((_%loop1484114873%_
                                                       (lambda (_%hd1483914877%_
                                                                _%e1484514880%_
                                                                _%hd1484614882%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1483914877%_)
                                                             (let ((_%e1484214885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1483914877%_)))
                       (let ((_%lp-hd1484314889%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1484214885%_)))
                             (_%lp-tl1484414892%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1484214885%_))))
                         (if (gx#stx-pair? _%lp-hd1484314889%_)
                             (let ((_%e1484914895%_
                                    (gx#syntax-e _%lp-hd1484314889%_)))
                               (let ((_%hd1485014899%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1484914895%_)))
                                     (_%tl1485114902%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1484914895%_))))
                                 (if (gx#stx-pair? _%tl1485114902%_)
                                     (let ((_%e1485214905%_
                                            (gx#syntax-e _%tl1485114902%_)))
                                       (let ((_%hd1485314909%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1485214905%_)))
                                             (_%tl1485414912%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1485214905%_))))
                                         (if (gx#stx-null? _%tl1485414912%_)
                                             (_%loop1484114873%_
                                              _%lp-tl1484414892%_
                                              (cons _%hd1485314909%_
                                                    _%e1484514880%_)
                                              (cons _%hd1485014899%_
                                                    _%hd1484614882%_))
                                             (_%g1483414860%_
                                              _%g1483514864%_))))
                                     (_%g1483414860%_ _%g1483514864%_))))
                             (_%g1483414860%_ _%g1483514864%_))))
                     (let ((_%e1484714915%_ (reverse _%e1484514880%_))
                           (_%hd1484814918%_ (reverse _%hd1484614882%_)))
                       ((lambda (_%L14921%_ _%L14923%_)
                          (let* ((_%g1493914956%_
                                  (lambda (_%g1494014952%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1494014952%_)))
                                 (_%g1493815133%_
                                  (lambda (_%g1494014960%_)
                                    (if (gx#stx-pair/null? _%g1494014960%_)
                                        (let ((_g21042_
                                               (gx#syntax-split-splice
                                                _%g1494014960%_
                                                '0)))
                                          (begin
                                            (let ((_g21043_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g21042_)
                                                         (##vector-length
                                                          _g21042_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g21043_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g21043_)))
                                            (let ((_%target1494214963%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g21042_
                                                      0)))
                                                  (_%tl1494414966%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g21042_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl1494414966%_)
                                                  (letrec ((_%loop1494514969%_
                                                            (lambda (_%hd1494314973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$e1494914976%_)
                      (if (gx#stx-pair? _%hd1494314973%_)
                          (let ((_%e1494614979%_
                                 (gx#syntax-e _%hd1494314973%_)))
                            (let ((_%lp-hd1494714983%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1494614979%_)))
                                  (_%lp-tl1494814986%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1494614979%_))))
                              (_%loop1494514969%_
                               _%lp-tl1494814986%_
                               (cons _%lp-hd1494714983%_ _%$e1494914976%_))))
                          (let ((_%$e1495014989%_ (reverse _%$e1494914976%_)))
                            ((lambda (_%L14993%_)
                               (let* ((_%g1501015027%_
                                       (lambda (_%g1501115023%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1501115023%_)))
                                      (_%g1500915121%_
                                       (lambda (_%g1501115031%_)
                                         (if (gx#stx-pair/null?
                                              _%g1501115031%_)
                                             (let ((_g21044_
                                                    (gx#syntax-split-splice
                                                     _%g1501115031%_
                                                     '0)))
                                               (begin
                                                 (let ((_g21045_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g21044_)
                                                              (##vector-length
                                                               _g21044_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g21045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g21045_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target1501315034%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g21044_
                                                           0)))
                                                       (_%tl1501515037%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g21044_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl1501515037%_)
                                                       (letrec ((_%loop1501615040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd1501415044%_ _%hd-bind1502015047%_)
                           (if (gx#stx-pair? _%hd1501415044%_)
                               (let ((_%e1501715050%_
                                      (gx#syntax-e _%hd1501415044%_)))
                                 (let ((_%lp-hd1501815054%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1501715050%_)))
                                       (_%lp-tl1501915057%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1501715050%_))))
                                   (_%loop1501615040%_
                                    _%lp-tl1501915057%_
                                    (cons _%lp-hd1501815054%_
                                          _%hd-bind1502015047%_))))
                               (let ((_%hd-bind1502115060%_
                                      (reverse _%hd-bind1502015047%_)))
                                 ((lambda (_%L15064%_)
                                    (cons (gx#datum->syntax '#f 'let-values)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%L14921%_
                                                   _%L14993%_)
                                                  (foldr (lambda (_%g1508915093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1509015096%_
                          _%g1509115098%_)
                   (cons (cons (cons _%g1509015096%_ '())
                               (cons _%g1508915093%_ '()))
                         _%g1509115098%_))
                 '()
                 _%L14921%_
                 _%L14993%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'and)
                                                            (foldr (lambda (_%g1508215101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1508315104%_)
                             (cons _%g1508215101%_ _%g1508315104%_))
                           (cons (cons (gx#datum->syntax '#f 'let-values)
                                       (cons (begin
                                               (gx#syntax-check-splice-targets
                                                _%L14993%_
                                                _%L15064%_)
                                               (foldr (lambda (_%g1508615107%_
                                                               _%g1508715110%_
                                                               _%g1508815112%_)
                                                        (cons (cons _%g1508715110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g1508615107%_ '()))
                      _%g1508815112%_))
              '()
              _%L14993%_
              _%L15064%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (foldr (lambda (_%g1508415115%_
                                                             _%g1508515118%_)
                                                      (cons _%g1508415115%_
                                                            _%g1508515118%_))
                                                    '()
                                                    _%L14801%_)))
                                 '())
                           _%L14993%_))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%hd-bind1502115060%_))))))
                 (_%loop1501615040%_ _%target1501315034%_ '()))
               (_%g1501015027%_ _%g1501115031%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g1501015027%_
                                              _%g1501115031%_)))))
                                 (_%g1500915121%_
                                  (gx#stx-map
                                   _%let-head14638%_
                                   (foldr (lambda (_%g1512415127%_
                                                   _%g1512515130%_)
                                            (cons _%g1512415127%_
                                                  _%g1512515130%_))
                                          '()
                                          _%L14923%_)))))
                             _%$e1495014989%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop1494514969%_
                                                     _%target1494214963%_
                                                     '()))
                                                  (_%g1493914956%_
                                                   _%g1494014960%_)))))
                                        (_%g1493914956%_ _%g1494014960%_)))))
                            (_%g1493815133%_
                             (gx#gentemps
                              (foldr (lambda (_%g1513615139%_ _%g1513715142%_)
                                       (cons _%g1513615139%_ _%g1513715142%_))
                                     '()
                                     _%L14923%_)))))
                        _%e1484714915%_
                        _%hd1484814918%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1484114873%_
                                                _%target1483814867%_
                                                '()
                                                '()))
                                             (_%g1483414860%_
                                              _%g1483514864%_)))))
                                   (_%g1483414860%_ _%g1483514864%_)))))
                       (_%g1483315145%_
                        (gx#stx-map
                         _%let-bind14636%_
                         (foldr (lambda (_%g1514815151%_ _%g1514915154%_)
                                  (cons _%g1514815151%_ _%g1514915154%_))
                                '()
                                _%L14803%_)))))))
              (let* ((_%__match2029820299%_
                      (lambda (_%e1468514721%_
                               _%hd1468614725%_
                               _%tl1468714728%_
                               _%e1468814731%_
                               _%hd1468914735%_
                               _%tl1469014738%_
                               _%__splice2021220213%_
                               _%target1469114741%_
                               _%tl1469314744%_)
                        (letrec ((_%loop1469414747%_
                                  (lambda (_%hd1469214751%_ _%bind1469814754%_)
                                    (if (gx#stx-pair? _%hd1469214751%_)
                                        (let ((_%e1469514757%_
                                               (gx#syntax-e _%hd1469214751%_)))
                                          (let ((_%lp-tl1469714764%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1469514757%_)))
                                                (_%lp-hd1469614761%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1469514757%_))))
                                            (_%loop1469414747%_
                                             _%lp-tl1469714764%_
                                             (cons _%lp-hd1469614761%_
                                                   _%bind1469814754%_))))
                                        (let ((_%bind1469914767%_
                                               (reverse _%bind1469814754%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl1469014738%_)
                                              (let ((_%__splice2021420215%_
                                                     (gx#syntax-split-splice
                                                      _%tl1469014738%_
                                                      '0)))
                                                (let ((_%tl1470214774%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2021420215%_
                                                          '1)))
                                                      (_%target1470014771%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2021420215%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1470214774%_)
                                                      (letrec ((_%loop1470314777%_
                                                                (lambda (_%hd1470114781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body1470714784%_)
                          (if (gx#stx-pair? _%hd1470114781%_)
                              (let ((_%e1470414787%_
                                     (gx#syntax-e _%hd1470114781%_)))
                                (let ((_%lp-tl1470614794%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1470414787%_)))
                                      (_%lp-hd1470514791%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1470414787%_))))
                                  (_%loop1470314777%_
                                   _%lp-tl1470614794%_
                                   (cons _%lp-hd1470514791%_
                                         _%body1470714784%_))))
                              (let ((_%body1470814797%_
                                     (reverse _%body1470714784%_)))
                                (let ((_%L14801%_ _%body1470814797%_)
                                      (_%L14803%_ _%bind1469914767%_))
                                  (if (gx#stx-andmap
                                       _%let-bind?14634%_
                                       (foldr (lambda (_%g1482514828%_
                                                       _%g1482614831%_)
                                                (cons _%g1482514828%_
                                                      _%g1482614831%_))
                                              '()
                                              _%L14803%_))
                                      (_%__kont2021020211%_
                                       _%L14801%_
                                       _%L14803%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g1464214714%_)))))))))
                (_%loop1470314777%_ _%target1470014771%_ '()))
              (let () (declare (not safe)) (_%g1464214714%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1464214714%_))))))))
                          (_%loop1469414747%_ _%target1469114741%_ '()))))
                     (_%__match2027820279%_
                      (lambda (_%e1466215164%_
                               _%hd1466315168%_
                               _%tl1466415171%_
                               _%e1466515174%_
                               _%hd1466615178%_
                               _%tl1466715181%_
                               _%e1466815184%_
                               _%hd1466915188%_
                               _%tl1467015191%_
                               _%e1467115194%_
                               _%hd1467215198%_
                               _%tl1467315201%_
                               _%__splice2020820209%_
                               _%target1467415204%_
                               _%tl1467615207%_)
                        (letrec ((_%loop1467715210%_
                                  (lambda (_%hd1467515214%_ _%body1468115217%_)
                                    (if (gx#stx-pair? _%hd1467515214%_)
                                        (let ((_%e1467815220%_
                                               (gx#syntax-e _%hd1467515214%_)))
                                          (let ((_%lp-tl1468015227%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1467815220%_)))
                                                (_%lp-hd1467915224%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1467815220%_))))
                                            (_%loop1467715210%_
                                             _%lp-tl1468015227%_
                                             (cons _%lp-hd1467915224%_
                                                   _%body1468115217%_))))
                                        (let ((_%body1468215230%_
                                               (reverse _%body1468115217%_)))
                                          (_%__kont2020620207%_
                                           _%body1468215230%_
                                           _%hd1467215198%_))))))
                          (_%loop1467715210%_ _%target1467415204%_ '()))))
                     (_%__match2024220243%_
                      (lambda (_%e1464815272%_
                               _%hd1464915276%_
                               _%tl1465015279%_
                               _%e1465115282%_
                               _%hd1465215286%_
                               _%tl1465315289%_
                               _%e1465415292%_
                               _%hd1465515296%_
                               _%tl1465615299%_
                               _%e1465715302%_
                               _%hd1465815306%_
                               _%tl1465915309%_)
                        (let ((_%L15312%_ _%tl1465315289%_)
                              (_%L15314%_ _%hd1465815306%_)
                              (_%L15315%_ _%hd1465515296%_)
                              (_%L15316%_ _%hd1464915276%_))
                          (if (_%let-head?14637%_ _%L15315%_)
                              (_%__kont2020420205%_
                               _%L15312%_
                               _%L15314%_
                               _%L15315%_
                               _%L15316%_)
                              (if (gx#stx-pair? _%hd1465515296%_)
                                  (let ((_%e1467115194%_
                                         (gx#syntax-e _%hd1465515296%_)))
                                    (let ((_%tl1467315201%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1467115194%_)))
                                          (_%hd1467215198%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1467115194%_))))
                                      (if (gx#stx-pair/null? _%hd1465215286%_)
                                          (let ((_%__splice2021220213%_
                                                 (gx#syntax-split-splice
                                                  _%hd1465215286%_
                                                  '0)))
                                            (let ((_%tl1469314744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2021220213%_
                                                      '1)))
                                                  (_%target1469114741%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2021220213%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1469314744%_)
                                                  (_%__match2029820299%_
                                                   _%e1464815272%_
                                                   _%hd1464915276%_
                                                   _%tl1465015279%_
                                                   _%e1465115282%_
                                                   _%hd1465215286%_
                                                   _%tl1465315289%_
                                                   _%__splice2021220213%_
                                                   _%target1469114741%_
                                                   _%tl1469314744%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1464214714%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1464214714%_)))))
                                  (if (gx#stx-pair/null? _%hd1465215286%_)
                                      (let ((_%__splice2021220213%_
                                             (gx#syntax-split-splice
                                              _%hd1465215286%_
                                              '0)))
                                        (let ((_%tl1469314744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2021220213%_
                                                  '1)))
                                              (_%target1469114741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2021220213%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1469314744%_)
                                              (_%__match2029820299%_
                                               _%e1464815272%_
                                               _%hd1464915276%_
                                               _%tl1465015279%_
                                               _%e1465115282%_
                                               _%hd1465215286%_
                                               _%tl1465315289%_
                                               _%__splice2021220213%_
                                               _%target1469114741%_
                                               _%tl1469314744%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1464214714%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1464214714%_)))))))))
                (if (gx#stx-pair? _%__stx2020120202%_)
                    (let ((_%e1464815272%_ (gx#syntax-e _%__stx2020120202%_)))
                      (let ((_%tl1465015279%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1464815272%_)))
                            (_%hd1464915276%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1464815272%_))))
                        (if (gx#stx-pair? _%tl1465015279%_)
                            (let ((_%e1465115282%_
                                   (gx#syntax-e _%tl1465015279%_)))
                              (let ((_%tl1465315289%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1465115282%_)))
                                    (_%hd1465215286%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1465115282%_))))
                                (if (gx#stx-pair? _%hd1465215286%_)
                                    (let ((_%e1465415292%_
                                           (gx#syntax-e _%hd1465215286%_)))
                                      (let ((_%tl1465615299%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1465415292%_)))
                                            (_%hd1465515296%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1465415292%_))))
                                        (if (gx#stx-pair? _%tl1465615299%_)
                                            (let ((_%e1465715302%_
                                                   (gx#syntax-e
                                                    _%tl1465615299%_)))
                                              (let ((_%tl1465915309%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1465715302%_)))
                                                    (_%hd1465815306%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1465715302%_))))
                                                (if (gx#stx-null?
                                                     _%tl1465915309%_)
                                                    (_%__match2024220243%_
                                                     _%e1464815272%_
                                                     _%hd1464915276%_
                                                     _%tl1465015279%_
                                                     _%e1465115282%_
                                                     _%hd1465215286%_
                                                     _%tl1465315289%_
                                                     _%e1465415292%_
                                                     _%hd1465515296%_
                                                     _%tl1465615299%_
                                                     _%e1465715302%_
                                                     _%hd1465815306%_
                                                     _%tl1465915309%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1465515296%_)
                                                        (let ((_%e1467115194%_
                                                               (gx#syntax-e
                                                                _%hd1465515296%_)))
                                                          (let ((_%tl1467315201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e1467115194%_)))
                        (_%hd1467215198%_
                         (let ()
                           (declare (not safe))
                           (##car _%e1467115194%_))))
                    (if (gx#stx-pair/null? _%hd1465215286%_)
                        (let ((_%__splice2021220213%_
                               (gx#syntax-split-splice _%hd1465215286%_ '0)))
                          (let ((_%tl1469314744%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2021220213%_ '1)))
                                (_%target1469114741%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2021220213%_ '0))))
                            (if (gx#stx-null? _%tl1469314744%_)
                                (_%__match2029820299%_
                                 _%e1464815272%_
                                 _%hd1464915276%_
                                 _%tl1465015279%_
                                 _%e1465115282%_
                                 _%hd1465215286%_
                                 _%tl1465315289%_
                                 _%__splice2021220213%_
                                 _%target1469114741%_
                                 _%tl1469314744%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1464214714%_)))))
                        (let () (declare (not safe)) (_%g1464214714%_)))))
                (if (gx#stx-pair/null? _%hd1465215286%_)
                    (let ((_%__splice2021220213%_
                           (gx#syntax-split-splice _%hd1465215286%_ '0)))
                      (let ((_%tl1469314744%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2021220213%_ '1)))
                            (_%target1469114741%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2021220213%_ '0))))
                        (if (gx#stx-null? _%tl1469314744%_)
                            (_%__match2029820299%_
                             _%e1464815272%_
                             _%hd1464915276%_
                             _%tl1465015279%_
                             _%e1465115282%_
                             _%hd1465215286%_
                             _%tl1465315289%_
                             _%__splice2021220213%_
                             _%target1469114741%_
                             _%tl1469314744%_)
                            (let () (declare (not safe)) (_%g1464214714%_)))))
                    (let () (declare (not safe)) (_%g1464214714%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%hd1465515296%_)
                                                (let ((_%e1467115194%_
                                                       (gx#syntax-e
                                                        _%hd1465515296%_)))
                                                  (let ((_%tl1467315201%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1467115194%_)))
                                                        (_%hd1467215198%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1467115194%_))))
                                                    (if (gx#stx-null?
                                                         _%tl1467315201%_)
                                                        (if (gx#stx-null?
                                                             _%tl1465615299%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl1465315289%_)
                        (let ((_%__splice2020820209%_
                               (gx#syntax-split-splice _%tl1465315289%_ '0)))
                          (let ((_%tl1467615207%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2020820209%_ '1)))
                                (_%target1467415204%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2020820209%_ '0))))
                            (if (gx#stx-null? _%tl1467615207%_)
                                (_%__match2027820279%_
                                 _%e1464815272%_
                                 _%hd1464915276%_
                                 _%tl1465015279%_
                                 _%e1465115282%_
                                 _%hd1465215286%_
                                 _%tl1465315289%_
                                 _%e1465415292%_
                                 _%hd1465515296%_
                                 _%tl1465615299%_
                                 _%e1467115194%_
                                 _%hd1467215198%_
                                 _%tl1467315201%_
                                 _%__splice2020820209%_
                                 _%target1467415204%_
                                 _%tl1467615207%_)
                                (if (gx#stx-pair/null? _%hd1465215286%_)
                                    (let ((_%__splice2021220213%_
                                           (gx#syntax-split-splice
                                            _%hd1465215286%_
                                            '0)))
                                      (let ((_%tl1469314744%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2021220213%_
                                                '1)))
                                            (_%target1469114741%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2021220213%_
                                                '0))))
                                        (if (gx#stx-null? _%tl1469314744%_)
                                            (_%__match2029820299%_
                                             _%e1464815272%_
                                             _%hd1464915276%_
                                             _%tl1465015279%_
                                             _%e1465115282%_
                                             _%hd1465215286%_
                                             _%tl1465315289%_
                                             _%__splice2021220213%_
                                             _%target1469114741%_
                                             _%tl1469314744%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1464214714%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g1464214714%_))))))
                        (if (gx#stx-pair/null? _%hd1465215286%_)
                            (let ((_%__splice2021220213%_
                                   (gx#syntax-split-splice
                                    _%hd1465215286%_
                                    '0)))
                              (let ((_%tl1469314744%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2021220213%_
                                        '1)))
                                    (_%target1469114741%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2021220213%_
                                        '0))))
                                (if (gx#stx-null? _%tl1469314744%_)
                                    (_%__match2029820299%_
                                     _%e1464815272%_
                                     _%hd1464915276%_
                                     _%tl1465015279%_
                                     _%e1465115282%_
                                     _%hd1465215286%_
                                     _%tl1465315289%_
                                     _%__splice2021220213%_
                                     _%target1469114741%_
                                     _%tl1469314744%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g1464214714%_)))))
                            (let () (declare (not safe)) (_%g1464214714%_))))
                    (if (gx#stx-pair/null? _%hd1465215286%_)
                        (let ((_%__splice2021220213%_
                               (gx#syntax-split-splice _%hd1465215286%_ '0)))
                          (let ((_%tl1469314744%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2021220213%_ '1)))
                                (_%target1469114741%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2021220213%_ '0))))
                            (if (gx#stx-null? _%tl1469314744%_)
                                (_%__match2029820299%_
                                 _%e1464815272%_
                                 _%hd1464915276%_
                                 _%tl1465015279%_
                                 _%e1465115282%_
                                 _%hd1465215286%_
                                 _%tl1465315289%_
                                 _%__splice2021220213%_
                                 _%target1469114741%_
                                 _%tl1469314744%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1464214714%_)))))
                        (let () (declare (not safe)) (_%g1464214714%_))))
                (if (gx#stx-pair/null? _%hd1465215286%_)
                    (let ((_%__splice2021220213%_
                           (gx#syntax-split-splice _%hd1465215286%_ '0)))
                      (let ((_%tl1469314744%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2021220213%_ '1)))
                            (_%target1469114741%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2021220213%_ '0))))
                        (if (gx#stx-null? _%tl1469314744%_)
                            (_%__match2029820299%_
                             _%e1464815272%_
                             _%hd1464915276%_
                             _%tl1465015279%_
                             _%e1465115282%_
                             _%hd1465215286%_
                             _%tl1465315289%_
                             _%__splice2021220213%_
                             _%target1469114741%_
                             _%tl1469314744%_)
                            (let () (declare (not safe)) (_%g1464214714%_)))))
                    (let () (declare (not safe)) (_%g1464214714%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%hd1465215286%_)
                                                    (let ((_%__splice2021220213%_
                                                           (gx#syntax-split-splice
                                                            _%hd1465215286%_
                                                            '0)))
                                                      (let ((_%tl1469314744%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice2021220213%_ '1)))
                    (_%target1469114741%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice2021220213%_ '0))))
                (if (gx#stx-null? _%tl1469314744%_)
                    (_%__match2029820299%_
                     _%e1464815272%_
                     _%hd1464915276%_
                     _%tl1465015279%_
                     _%e1465115282%_
                     _%hd1465215286%_
                     _%tl1465315289%_
                     _%__splice2021220213%_
                     _%target1469114741%_
                     _%tl1469314744%_)
                    (let () (declare (not safe)) (_%g1464214714%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1464214714%_)))))))
                                    (if (gx#stx-pair/null? _%hd1465215286%_)
                                        (let ((_%__splice2021220213%_
                                               (gx#syntax-split-splice
                                                _%hd1465215286%_
                                                '0)))
                                          (let ((_%tl1469314744%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2021220213%_
                                                    '1)))
                                                (_%target1469114741%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2021220213%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1469314744%_)
                                                (_%__match2029820299%_
                                                 _%e1464815272%_
                                                 _%hd1464915276%_
                                                 _%tl1465015279%_
                                                 _%e1465115282%_
                                                 _%hd1465215286%_
                                                 _%tl1465315289%_
                                                 _%__splice2021220213%_
                                                 _%target1469114741%_
                                                 _%tl1469314744%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1464214714%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g1464214714%_))))))
                            (let () (declare (not safe)) (_%g1464214714%_)))))
                    (let () (declare (not safe)) (_%g1464214714%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet*|
      (lambda (_%$stx15674%_)
        (let* ((_%__stx2030120302%_ _%$stx15674%_)
               (_%g1568015731%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2030120302%_))))
          (let ((_%__kont2030420305%_ (lambda () '#t))
                (_%__kont2030620307%_
                 (lambda (_%L15889%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g1590515908%_ _%g1590615911%_)
                                        (cons _%g1590515908%_ _%g1590615911%_))
                                      '()
                                      _%L15889%_)))))
                (_%__kont2031020311%_
                 (lambda (_%L15798%_ _%L15800%_ _%L15801%_ _%L15802%_)
                   (cons (gx#datum->syntax '#f 'alet)
                         (cons (cons _%L15801%_ '())
                               (cons (cons _%L15802%_
                                           (cons _%L15800%_
                                                 (foldr (lambda (_%g1582315826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1582415829%_)
                  (cons _%g1582315826%_ _%g1582415829%_))
                '()
                _%L15798%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match2037820379%_
                    (lambda (_%e1570815738%_
                             _%hd1570915742%_
                             _%tl1571015745%_
                             _%e1571115748%_
                             _%hd1571215752%_
                             _%tl1571315755%_
                             _%e1571415758%_
                             _%hd1571515762%_
                             _%tl1571615765%_
                             _%__splice2031220313%_
                             _%target1571715768%_
                             _%tl1571915771%_)
                      (letrec ((_%loop1572015774%_
                                (lambda (_%hd1571815778%_ _%body1572415781%_)
                                  (if (gx#stx-pair? _%hd1571815778%_)
                                      (let ((_%e1572115784%_
                                             (gx#syntax-e _%hd1571815778%_)))
                                        (let ((_%lp-tl1572315791%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1572115784%_)))
                                              (_%lp-hd1572215788%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1572115784%_))))
                                          (_%loop1572015774%_
                                           _%lp-tl1572315791%_
                                           (cons _%lp-hd1572215788%_
                                                 _%body1572415781%_))))
                                      (let ((_%body1572515794%_
                                             (reverse _%body1572415781%_)))
                                        (_%__kont2031020311%_
                                         _%body1572515794%_
                                         _%tl1571615765%_
                                         _%hd1571515762%_
                                         _%hd1570915742%_))))))
                        (_%loop1572015774%_ _%target1571715768%_ '()))))
                   (_%__match2035220353%_
                    (lambda (_%e1568915839%_
                             _%hd1569015843%_
                             _%tl1569115846%_
                             _%e1569215849%_
                             _%hd1569315853%_
                             _%tl1569415856%_
                             _%__splice2030820309%_
                             _%target1569515859%_
                             _%tl1569715862%_)
                      (letrec ((_%loop1569815865%_
                                (lambda (_%hd1569615869%_ _%body1570215872%_)
                                  (if (gx#stx-pair? _%hd1569615869%_)
                                      (let ((_%e1569915875%_
                                             (gx#syntax-e _%hd1569615869%_)))
                                        (let ((_%lp-tl1570115882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1569915875%_)))
                                              (_%lp-hd1570015879%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1569915875%_))))
                                          (_%loop1569815865%_
                                           _%lp-tl1570115882%_
                                           (cons _%lp-hd1570015879%_
                                                 _%body1570215872%_))))
                                      (let ((_%body1570315885%_
                                             (reverse _%body1570215872%_)))
                                        (_%__kont2030620307%_
                                         _%body1570315885%_))))))
                        (_%loop1569815865%_ _%target1569515859%_ '())))))
              (if (gx#stx-pair? _%__stx2030120302%_)
                  (let ((_%e1568215921%_ (gx#syntax-e _%__stx2030120302%_)))
                    (let ((_%tl1568415928%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1568215921%_)))
                          (_%hd1568315925%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1568215921%_))))
                      (if (gx#stx-pair? _%tl1568415928%_)
                          (let ((_%e1568515931%_
                                 (gx#syntax-e _%tl1568415928%_)))
                            (let ((_%tl1568715938%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1568515931%_)))
                                  (_%hd1568615935%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1568515931%_))))
                              (if (gx#stx-null? _%hd1568615935%_)
                                  (if (gx#stx-null? _%tl1568715938%_)
                                      (_%__kont2030420305%_)
                                      (if (gx#stx-pair/null? _%tl1568715938%_)
                                          (let ((_%__splice2030820309%_
                                                 (gx#syntax-split-splice
                                                  _%tl1568715938%_
                                                  '0)))
                                            (let ((_%tl1569715862%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2030820309%_
                                                      '1)))
                                                  (_%target1569515859%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2030820309%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1569715862%_)
                                                  (_%__match2035220353%_
                                                   _%e1568215921%_
                                                   _%hd1568315925%_
                                                   _%tl1568415928%_
                                                   _%e1568515931%_
                                                   _%hd1568615935%_
                                                   _%tl1568715938%_
                                                   _%__splice2030820309%_
                                                   _%target1569515859%_
                                                   _%tl1569715862%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1568015731%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1568015731%_))))
                                  (if (gx#stx-pair? _%hd1568615935%_)
                                      (let ((_%e1571415758%_
                                             (gx#syntax-e _%hd1568615935%_)))
                                        (let ((_%tl1571615765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1571415758%_)))
                                              (_%hd1571515762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1571415758%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1568715938%_)
                                              (let ((_%__splice2031220313%_
                                                     (gx#syntax-split-splice
                                                      _%tl1568715938%_
                                                      '0)))
                                                (let ((_%tl1571915771%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2031220313%_
                                                          '1)))
                                                      (_%target1571715768%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2031220313%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1571915771%_)
                                                      (_%__match2037820379%_
                                                       _%e1568215921%_
                                                       _%hd1568315925%_
                                                       _%tl1568415928%_
                                                       _%e1568515931%_
                                                       _%hd1568615935%_
                                                       _%tl1568715938%_
                                                       _%e1571415758%_
                                                       _%hd1571515762%_
                                                       _%tl1571615765%_
                                                       _%__splice2031220313%_
                                                       _%target1571715768%_
                                                       _%tl1571915771%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1568015731%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1568015731%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1568015731%_))))))
                          (let () (declare (not safe)) (_%g1568015731%_)))))
                  (let () (declare (not safe)) (_%g1568015731%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#@list|
      (lambda (_%$stx15951%_)
        (let* ((_%__stx2038120382%_ _%$stx15951%_)
               (_%g1596216040%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2038120382%_))))
          (let ((_%__kont2038420385%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'quote) (cons '() '()))))
                (_%__kont2038620387%_
                 (lambda (_%L16371%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _%L16371%_ '()))))
                (_%__kont2038820389%_
                 (lambda (_%L16319%_)
                   (cons (gx#datum->syntax '#f 'quasiquote)
                         (cons _%L16319%_ '()))))
                (_%__kont2039020391%_ (lambda (_%L16266%_) _%L16266%_))
                (_%__kont2039220393%_
                 (lambda (_%L16208%_ _%L16210%_) _%L16210%_))
                (_%__kont2039420395%_
                 (lambda (_%L16150%_ _%L16152%_ _%L16153%_ _%L16154%_)
                   (cons (gx#datum->syntax '#f 'foldr)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (cons _%L16154%_ _%L16150%_)
                                     (cons _%L16153%_ '()))))))
                (_%__kont2039620397%_
                 (lambda (_%L16096%_ _%L16098%_ _%L16099%_)
                   (cons (gx#datum->syntax '#f 'cons)
                         (cons _%L16098%_
                               (cons (cons _%L16099%_ _%L16096%_) '())))))
                (_%__kont2039820399%_ (lambda (_%L16057%_) _%L16057%_)))
            (let* ((_%__match2052020521%_
                    (lambda (_%e1601316120%_
                             _%hd1601416124%_
                             _%tl1601516127%_
                             _%e1601616130%_
                             _%hd1601716134%_
                             _%tl1601816137%_
                             _%e1601916140%_
                             _%hd1602016144%_
                             _%tl1602116147%_)
                      (let ((_%L16150%_ _%tl1602116147%_)
                            (_%L16152%_ _%hd1602016144%_)
                            (_%L16153%_ _%hd1601716134%_)
                            (_%L16154%_ _%hd1601416124%_))
                        (if (gx#ellipsis? _%L16152%_)
                            (_%__kont2039420395%_
                             _%L16150%_
                             _%L16152%_
                             _%L16153%_
                             _%L16154%_)
                            (_%__kont2039620397%_
                             _%tl1601816137%_
                             _%hd1601716134%_
                             _%hd1601416124%_)))))
                   (_%__match2050220503%_
                    (lambda (_%e1600016178%_
                             _%hd1600116182%_
                             _%tl1600216185%_
                             _%e1600316188%_
                             _%hd1600416192%_
                             _%tl1600516195%_
                             _%e1600616198%_
                             _%hd1600716202%_
                             _%tl1600816205%_)
                      (let ((_%L16208%_ _%hd1600716202%_)
                            (_%L16210%_ _%hd1600416192%_))
                        (if (gx#ellipsis? _%L16208%_)
                            (_%__kont2039220393%_ _%L16208%_ _%L16210%_)
                            (_%__match2052020521%_
                             _%e1600016178%_
                             _%hd1600116182%_
                             _%tl1600216185%_
                             _%e1600316188%_
                             _%hd1600416192%_
                             _%tl1600516195%_
                             _%e1600616198%_
                             _%hd1600716202%_
                             _%tl1600816205%_))))))
              (if (gx#stx-pair? _%__stx2038120382%_)
                  (let ((_%e1596416393%_ (gx#syntax-e _%__stx2038120382%_)))
                    (let ((_%tl1596616400%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1596416393%_)))
                          (_%hd1596516397%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1596416393%_))))
                      (if (gx#stx-null? _%tl1596616400%_)
                          (_%__kont2038420385%_)
                          (if (gx#stx-pair? _%tl1596616400%_)
                              (let ((_%e1597116351%_
                                     (gx#syntax-e _%tl1596616400%_)))
                                (let ((_%tl1597316358%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1597116351%_)))
                                      (_%hd1597216355%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1597116351%_))))
                                  (if (gx#identifier? _%hd1597216355%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21046_|
                                           _%hd1597216355%_)
                                          (if (gx#stx-pair? _%tl1597316358%_)
                                              (let ((_%e1597416361%_
                                                     (gx#syntax-e
                                                      _%tl1597316358%_)))
                                                (let ((_%tl1597616368%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1597416361%_)))
                                                      (_%hd1597516365%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1597416361%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1597616368%_)
                                                      (_%__kont2038620387%_
                                                       _%hd1597516365%_)
                                                      (_%__match2052020521%_
                                                       _%e1596416393%_
                                                       _%hd1596516397%_
                                                       _%tl1596616400%_
                                                       _%e1597116351%_
                                                       _%hd1597216355%_
                                                       _%tl1597316358%_
                                                       _%e1597416361%_
                                                       _%hd1597516365%_
                                                       _%tl1597616368%_))))
                                              (_%__kont2039620397%_
                                               _%tl1597316358%_
                                               _%hd1597216355%_
                                               _%hd1596516397%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21047_|
                                               _%hd1597216355%_)
                                              (if (gx#stx-pair?
                                                   _%tl1597316358%_)
                                                  (let ((_%e1598416309%_
                                                         (gx#syntax-e
                                                          _%tl1597316358%_)))
                                                    (let ((_%tl1598616316%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1598416309%_)))
                                                          (_%hd1598516313%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1598416309%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1598616316%_)
                                                          (_%__kont2038820389%_
                                                           _%hd1598516313%_)
                                                          (_%__match2052020521%_
                                                           _%e1596416393%_
                                                           _%hd1596516397%_
                                                           _%tl1596616400%_
                                                           _%e1597116351%_
                                                           _%hd1597216355%_
                                                           _%tl1597316358%_
                                                           _%e1598416309%_
                                                           _%hd1598516313%_
                                                           _%tl1598616316%_))))
                                                  (_%__kont2039620397%_
                                                   _%tl1597316358%_
                                                   _%hd1597216355%_
                                                   _%hd1596516397%_))
                                              (if (gx#stx-pair?
                                                   _%tl1597316358%_)
                                                  (let ((_%e1600616198%_
                                                         (gx#syntax-e
                                                          _%tl1597316358%_)))
                                                    (let ((_%tl1600816205%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1600616198%_)))
                                                          (_%hd1600716202%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1600616198%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1600816205%_)
                                                          (_%__match2050220503%_
                                                           _%e1596416393%_
                                                           _%hd1596516397%_
                                                           _%tl1596616400%_
                                                           _%e1597116351%_
                                                           _%hd1597216355%_
                                                           _%tl1597316358%_
                                                           _%e1600616198%_
                                                           _%hd1600716202%_
                                                           _%tl1600816205%_)
                                                          (_%__match2052020521%_
                                                           _%e1596416393%_
                                                           _%hd1596516397%_
                                                           _%tl1596616400%_
                                                           _%e1597116351%_
                                                           _%hd1597216355%_
                                                           _%tl1597316358%_
                                                           _%e1600616198%_
                                                           _%hd1600716202%_
                                                           _%tl1600816205%_))))
                                                  (_%__kont2039620397%_
                                                   _%tl1597316358%_
                                                   _%hd1597216355%_
                                                   _%hd1596516397%_))))
                                      (if (gx#stx-datum? _%hd1597216355%_)
                                          (let ((_%e1599416252%_
                                                 (gx#stx-e _%hd1597216355%_)))
                                            (if (equal? _%e1599416252%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl1597316358%_)
                                                    (let ((_%e1599516256%_
                                                           (gx#syntax-e
                                                            _%tl1597316358%_)))
                                                      (let ((_%tl1599716263%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1599516256%_)))
                    (_%hd1599616260%_
                     (let () (declare (not safe)) (##car _%e1599516256%_))))
                (if (gx#stx-null? _%tl1599716263%_)
                    (_%__kont2039020391%_ _%hd1599616260%_)
                    (_%__match2052020521%_
                     _%e1596416393%_
                     _%hd1596516397%_
                     _%tl1596616400%_
                     _%e1597116351%_
                     _%hd1597216355%_
                     _%tl1597316358%_
                     _%e1599516256%_
                     _%hd1599616260%_
                     _%tl1599716263%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2039620397%_
                                                     _%tl1597316358%_
                                                     _%hd1597216355%_
                                                     _%hd1596516397%_))
                                                (if (gx#stx-pair?
                                                     _%tl1597316358%_)
                                                    (let ((_%e1600616198%_
                                                           (gx#syntax-e
                                                            _%tl1597316358%_)))
                                                      (let ((_%tl1600816205%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1600616198%_)))
                    (_%hd1600716202%_
                     (let () (declare (not safe)) (##car _%e1600616198%_))))
                (if (gx#stx-null? _%tl1600816205%_)
                    (_%__match2050220503%_
                     _%e1596416393%_
                     _%hd1596516397%_
                     _%tl1596616400%_
                     _%e1597116351%_
                     _%hd1597216355%_
                     _%tl1597316358%_
                     _%e1600616198%_
                     _%hd1600716202%_
                     _%tl1600816205%_)
                    (_%__match2052020521%_
                     _%e1596416393%_
                     _%hd1596516397%_
                     _%tl1596616400%_
                     _%e1597116351%_
                     _%hd1597216355%_
                     _%tl1597316358%_
                     _%e1600616198%_
                     _%hd1600716202%_
                     _%tl1600816205%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2039620397%_
                                                     _%tl1597316358%_
                                                     _%hd1597216355%_
                                                     _%hd1596516397%_))))
                                          (if (gx#stx-pair? _%tl1597316358%_)
                                              (let ((_%e1600616198%_
                                                     (gx#syntax-e
                                                      _%tl1597316358%_)))
                                                (let ((_%tl1600816205%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1600616198%_)))
                                                      (_%hd1600716202%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1600616198%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1600816205%_)
                                                      (_%__match2050220503%_
                                                       _%e1596416393%_
                                                       _%hd1596516397%_
                                                       _%tl1596616400%_
                                                       _%e1597116351%_
                                                       _%hd1597216355%_
                                                       _%tl1597316358%_
                                                       _%e1600616198%_
                                                       _%hd1600716202%_
                                                       _%tl1600816205%_)
                                                      (_%__match2052020521%_
                                                       _%e1596416393%_
                                                       _%hd1596516397%_
                                                       _%tl1596616400%_
                                                       _%e1597116351%_
                                                       _%hd1597216355%_
                                                       _%tl1597316358%_
                                                       _%e1600616198%_
                                                       _%hd1600716202%_
                                                       _%tl1600816205%_))))
                                              (_%__kont2039620397%_
                                               _%tl1597316358%_
                                               _%hd1597216355%_
                                               _%hd1596516397%_))))))
                              (_%__kont2039820399%_ _%tl1596616400%_)))))
                  (let () (declare (not safe)) (_%g1596216040%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#quasiquote|
      (lambda (_%stx16411%_)
        (letrec ((_%simple-quote?16414%_
                  (lambda (_%e17106%_)
                    (let* ((_%__stx2054120542%_ _%e17106%_)
                           (_%g1711417151%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2054120542%_))))
                      (let ((_%__kont2054420545%_ (lambda () '#f))
                            (_%__kont2054620547%_ (lambda () '#f))
                            (_%__kont2054820549%_
                             (lambda (_%L17265%_ _%L17267%_)
                               (if (_%simple-quote?16414%_ _%L17267%_)
                                   (_%simple-quote?16414%_ _%L17265%_)
                                   '#f)))
                            (_%__kont2055020551%_
                             (lambda (_%L17226%_)
                               (_%simple-quote?16414%_
                                (foldr (lambda (_%g1723917242%_
                                                _%g1724017245%_)
                                         (cons _%g1723917242%_
                                               _%g1724017245%_))
                                       '()
                                       _%L17226%_))))
                            (_%__kont2055420555%_
                             (lambda (_%L17173%_)
                               (_%simple-quote?16414%_ _%L17173%_)))
                            (_%__kont2055620557%_ (lambda () '#t)))
                        (let* ((_%g1711217185%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2054120542%_)
                                      (let ((_%e1714517169%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2054120542%_))))
                                        (_%__kont2055420555%_ _%e1714517169%_))
                                      (_%__kont2055620557%_))))
                               (_%__match2061220613%_
                                (lambda (_%e1713417192%_
                                         _%__splice2055220553%_
                                         _%target1713517196%_
                                         _%tl1713717199%_)
                                  (letrec ((_%loop1713817202%_
                                            (lambda (_%hd1713617206%_
                                                     _%e1714217209%_)
                                              (if (gx#stx-pair?
                                                   _%hd1713617206%_)
                                                  (let ((_%e1713917212%_
                                                         (gx#syntax-e
                                                          _%hd1713617206%_)))
                                                    (let ((_%lp-tl1714117219%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1713917212%_)))
                                                          (_%lp-hd1714017216%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1713917212%_))))
                                                      (_%loop1713817202%_
                                                       _%lp-tl1714117219%_
                                                       (cons _%lp-hd1714017216%_
                                                             _%e1714217209%_))))
                                                  (let ((_%e1714317222%_
                                                         (reverse _%e1714217209%_)))
                                                    (_%__kont2055020551%_
                                                     _%e1714317222%_))))))
                                    (_%loop1713817202%_
                                     _%target1713517196%_
                                     '()))))
                               (_%g1711117248%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2054120542%_)
                                      (let ((_%e1713417192%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2054120542%_))))
                                        (if (gx#stx-pair/null? _%e1713417192%_)
                                            (let ((_%__splice2055220553%_
                                                   (gx#syntax-split-splice
                                                    _%e1713417192%_
                                                    '0)))
                                              (let ((_%tl1713717199%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2055220553%_
                                                        '1)))
                                                    (_%target1713517196%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2055220553%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1713717199%_)
                                                    (_%__match2061220613%_
                                                     _%e1713417192%_
                                                     _%__splice2055220553%_
                                                     _%target1713517196%_
                                                     _%tl1713717199%_)
                                                    (_%__kont2055620557%_))))
                                            (_%__kont2055620557%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1711217185%_))))))
                          (if (gx#stx-pair? _%__stx2054120542%_)
                              (let ((_%e1711617316%_
                                     (gx#syntax-e _%__stx2054120542%_)))
                                (let ((_%tl1711817323%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1711617316%_)))
                                      (_%hd1711717320%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1711617316%_))))
                                  (if (gx#identifier? _%hd1711717320%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21048_|
                                           _%hd1711717320%_)
                                          (if (gx#stx-pair? _%tl1711817323%_)
                                              (let ((_%e1711917326%_
                                                     (gx#syntax-e
                                                      _%tl1711817323%_)))
                                                (let ((_%tl1712117333%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1711917326%_)))
                                                      (_%hd1712017330%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1711917326%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1712117333%_)
                                                      (_%__kont2054420545%_)
                                                      (_%__kont2054820549%_
                                                       _%tl1711817323%_
                                                       _%hd1711717320%_))))
                                              (_%__kont2054820549%_
                                               _%tl1711817323%_
                                               _%hd1711717320%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21049_|
                                               _%hd1711717320%_)
                                              (if (gx#stx-pair?
                                                   _%tl1711817323%_)
                                                  (let ((_%e1712517295%_
                                                         (gx#syntax-e
                                                          _%tl1711817323%_)))
                                                    (let ((_%tl1712717302%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1712517295%_)))
                                                          (_%hd1712617299%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1712517295%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1712717302%_)
                                                          (_%__kont2054620547%_)
                                                          (_%__kont2054820549%_
                                                           _%tl1711817323%_
                                                           _%hd1711717320%_))))
                                                  (_%__kont2054820549%_
                                                   _%tl1711817323%_
                                                   _%hd1711717320%_))
                                              (_%__kont2054820549%_
                                               _%tl1711817323%_
                                               _%hd1711717320%_)))
                                      (_%__kont2054820549%_
                                       _%tl1711817323%_
                                       _%hd1711717320%_))))
                              (let ()
                                (declare (not safe))
                                (_%g1711117248%_))))))))
                 (_%generate16416%_
                  (lambda (_%e16478%_ _%d16480%_)
                    (let* ((_%__stx2061920620%_ _%e16478%_)
                           (_%g1648916547%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2061920620%_))))
                      (let ((_%__kont2062220623%_
                             (lambda (_%L17058%_)
                               (let* ((_%g1707117079%_
                                       (lambda (_%g1707217075%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1707217075%_)))
                                      (_%g1707017098%_
                                       (lambda (_%g1707217083%_)
                                         ((lambda (_%L17086%_)
                                            (cons (gx#datum->syntax '#f 'list)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quasiquote)
                            '()))
                (cons _%L17086%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1707217083%_))))
                                 (_%g1707017098%_
                                  (_%generate16416%_
                                   _%L17058%_
                                   (fx1+ _%d16480%_))))))
                            (_%__kont2062420625%_
                             (lambda (_%L16987%_)
                               (if (fxzero? _%d16480%_)
                                   _%L16987%_
                                   (let* ((_%g1700017008%_
                                           (lambda (_%g1700117004%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1700117004%_)))
                                          (_%g1699917027%_
                                           (lambda (_%g1700117012%_)
                                             ((lambda (_%L17015%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote) '()))
                    (cons _%L17015%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1700117012%_))))
                                     (_%g1699917027%_
                                      (_%generate16416%_
                                       _%L16987%_
                                       (fx1- _%d16480%_)))))))
                            (_%__kont2062620627%_
                             (lambda (_%L16916%_)
                               (if (fxzero? _%d16480%_)
                                   (cons (gx#datum->syntax '#f 'foldr)
                                         (cons (gx#datum->syntax '#f 'cons)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons '() '()))
                                                     (cons _%L16916%_ '()))))
                                   (let* ((_%g1692916937%_
                                           (lambda (_%g1693016933%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1693016933%_)))
                                          (_%g1692816956%_
                                           (lambda (_%g1693016941%_)
                                             ((lambda (_%L16944%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote-splicing) '()))
                    (cons _%L16944%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1693016941%_))))
                                     (_%g1692816956%_
                                      (_%generate16416%_
                                       _%L16916%_
                                       (fx1- _%d16480%_)))))))
                            (_%__kont2062820629%_
                             (lambda (_%L16841%_ _%L16843%_)
                               (let* ((_%g1685816866%_
                                       (lambda (_%g1685916862%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1685916862%_)))
                                      (_%g1685716885%_
                                       (lambda (_%g1685916870%_)
                                         ((lambda (_%L16873%_)
                                            (cons (gx#datum->syntax '#f 'foldr)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'cons)
                                                        (cons _%L16873%_
                                                              (cons _%L16843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1685916870%_))))
                                 (_%g1685716885%_
                                  (_%generate16416%_ _%L16841%_ _%d16480%_)))))
                            (_%__kont2063020631%_
                             (lambda (_%L16727%_ _%L16729%_)
                               (let* ((_%g1674016755%_
                                       (lambda (_%g1674116751%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1674116751%_)))
                                      (_%g1673916800%_
                                       (lambda (_%g1674116759%_)
                                         (if (gx#stx-pair? _%g1674116759%_)
                                             (let ((_%e1674416762%_
                                                    (gx#syntax-e
                                                     _%g1674116759%_)))
                                               (let ((_%hd1674516766%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1674416762%_)))
                                                     (_%tl1674616769%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1674416762%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl1674616769%_)
                                                     (let ((_%e1674716772%_
                                                            (gx#syntax-e
                                                             _%tl1674616769%_)))
                                                       (let ((_%hd1674816776%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e1674716772%_)))
                     (_%tl1674916779%_
                      (let () (declare (not safe)) (##cdr _%e1674716772%_))))
                 (if (gx#stx-null? _%tl1674916779%_)
                     ((lambda (_%L16782%_ _%L16784%_)
                        (cons (gx#datum->syntax '#f 'cons)
                              (cons _%L16784%_ (cons _%L16782%_ '()))))
                      _%hd1674816776%_
                      _%hd1674516766%_)
                     (_%g1674016755%_ _%g1674116759%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1674016755%_
                                                      _%g1674116759%_))))
                                             (_%g1674016755%_
                                              _%g1674116759%_)))))
                                 (_%g1673916800%_
                                  (list (_%generate16416%_
                                         _%L16729%_
                                         _%d16480%_)
                                        (_%generate16416%_
                                         _%L16727%_
                                         _%d16480%_))))))
                            (_%__kont2063220633%_
                             (lambda (_%L16657%_)
                               (let* ((_%g1667116679%_
                                       (lambda (_%g1667216675%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1667216675%_)))
                                      (_%g1667016698%_
                                       (lambda (_%g1667216683%_)
                                         ((lambda (_%L16686%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'list->vector)
                                                  (cons _%L16686%_ '())))
                                          _%g1667216683%_))))
                                 (_%g1667016698%_
                                  (_%generate16416%_
                                   (foldr (lambda (_%g1670116704%_
                                                   _%g1670216707%_)
                                            (cons _%g1670116704%_
                                                  _%g1670216707%_))
                                          '()
                                          _%L16657%_)
                                   _%d16480%_)))))
                            (_%__kont2063620637%_
                             (lambda (_%L16575%_)
                               (let* ((_%g1658516593%_
                                       (lambda (_%g1658616589%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1658616589%_)))
                                      (_%g1658416612%_
                                       (lambda (_%g1658616597%_)
                                         ((lambda (_%L16600%_)
                                            (cons (gx#datum->syntax '#f 'box)
                                                  (cons _%L16600%_ '())))
                                          _%g1658616597%_))))
                                 (_%g1658416612%_
                                  (_%generate16416%_ _%L16575%_ _%d16480%_)))))
                            (_%__kont2063820639%_
                             (lambda (_%L16554%_)
                               (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L16554%_ '())))))
                        (let* ((_%g1648716616%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2061920620%_)
                                      (let ((_%e1654016571%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2061920620%_))))
                                        (_%__kont2063620637%_ _%e1654016571%_))
                                      (_%__kont2063820639%_
                                       _%__stx2061920620%_))))
                               (_%__match2073820739%_
                                (lambda (_%e1652916623%_
                                         _%__splice2063420635%_
                                         _%target1653016627%_
                                         _%tl1653216630%_)
                                  (letrec ((_%loop1653316633%_
                                            (lambda (_%hd1653116637%_
                                                     _%e1653716640%_)
                                              (if (gx#stx-pair?
                                                   _%hd1653116637%_)
                                                  (let ((_%e1653416643%_
                                                         (gx#syntax-e
                                                          _%hd1653116637%_)))
                                                    (let ((_%lp-tl1653616650%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1653416643%_)))
                                                          (_%lp-hd1653516647%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1653416643%_))))
                                                      (_%loop1653316633%_
                                                       _%lp-tl1653616650%_
                                                       (cons _%lp-hd1653516647%_
                                                             _%e1653716640%_))))
                                                  (let ((_%e1653816653%_
                                                         (reverse _%e1653716640%_)))
                                                    (_%__kont2063220633%_
                                                     _%e1653816653%_))))))
                                    (_%loop1653316633%_
                                     _%target1653016627%_
                                     '()))))
                               (_%g1648616710%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2061920620%_)
                                      (let ((_%e1652916623%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2061920620%_))))
                                        (if (gx#stx-pair/null? _%e1652916623%_)
                                            (let ((_%__splice2063420635%_
                                                   (gx#syntax-split-splice
                                                    _%e1652916623%_
                                                    '0)))
                                              (let ((_%tl1653216630%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2063420635%_
                                                        '1)))
                                                    (_%target1653016627%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2063420635%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1653216630%_)
                                                    (_%__match2073820739%_
                                                     _%e1652916623%_
                                                     _%__splice2063420635%_
                                                     _%target1653016627%_
                                                     _%tl1653216630%_)
                                                    (_%__kont2063820639%_
                                                     _%__stx2061920620%_))))
                                            (_%__kont2063820639%_
                                             _%__stx2061920620%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1648716616%_))))))
                          (if (gx#stx-pair? _%__stx2061920620%_)
                              (let ((_%e1649217038%_
                                     (gx#syntax-e _%__stx2061920620%_)))
                                (let ((_%tl1649417045%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1649217038%_)))
                                      (_%hd1649317042%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1649217038%_))))
                                  (if (gx#identifier? _%hd1649317042%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21050_|
                                           _%hd1649317042%_)
                                          (if (gx#stx-pair? _%tl1649417045%_)
                                              (let ((_%e1649517048%_
                                                     (gx#syntax-e
                                                      _%tl1649417045%_)))
                                                (let ((_%tl1649717055%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1649517048%_)))
                                                      (_%hd1649617052%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1649517048%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1649717055%_)
                                                      (_%__kont2062220623%_
                                                       _%hd1649617052%_)
                                                      (_%__kont2063020631%_
                                                       _%tl1649417045%_
                                                       _%hd1649317042%_))))
                                              (_%__kont2063020631%_
                                               _%tl1649417045%_
                                               _%hd1649317042%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21051_|
                                               _%hd1649317042%_)
                                              (if (gx#stx-pair?
                                                   _%tl1649417045%_)
                                                  (let ((_%e1650216977%_
                                                         (gx#syntax-e
                                                          _%tl1649417045%_)))
                                                    (let ((_%tl1650416984%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1650216977%_)))
                                                          (_%hd1650316981%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1650216977%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1650416984%_)
                                                          (_%__kont2062420625%_
                                                           _%hd1650316981%_)
                                                          (_%__kont2063020631%_
                                                           _%tl1649417045%_
                                                           _%hd1649317042%_))))
                                                  (_%__kont2063020631%_
                                                   _%tl1649417045%_
                                                   _%hd1649317042%_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21052_|
                                                   _%hd1649317042%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1649417045%_)
                                                      (let ((_%e1650916906%_
                                                             (gx#syntax-e
                                                              _%tl1649417045%_)))
                                                        (let ((_%tl1651116913%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1650916906%_)))
                      (_%hd1651016910%_
                       (let () (declare (not safe)) (##car _%e1650916906%_))))
                  (if (gx#stx-null? _%tl1651116913%_)
                      (_%__kont2062620627%_ _%hd1651016910%_)
                      (_%__kont2063020631%_
                       _%tl1649417045%_
                       _%hd1649317042%_))))
              (_%__kont2063020631%_ _%tl1649417045%_ _%hd1649317042%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2063020631%_
                                                   _%tl1649417045%_
                                                   _%hd1649317042%_))))
                                      (if (gx#stx-pair? _%hd1649317042%_)
                                          (let ((_%e1651716821%_
                                                 (gx#syntax-e
                                                  _%hd1649317042%_)))
                                            (let ((_%tl1651916828%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1651716821%_)))
                                                  (_%hd1651816825%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1651716821%_))))
                                              (if (gx#identifier?
                                                   _%hd1651816825%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-2[1]#_g21053_|
                                                       _%hd1651816825%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1651916828%_)
                                                          (let ((_%e1652016831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1651916828%_)))
                    (let ((_%tl1652216838%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1652016831%_)))
                          (_%hd1652116835%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1652016831%_))))
                      (if (gx#stx-null? _%tl1652216838%_)
                          (if (fxzero? _%d16480%_)
                              (let ((_%L16841%_ _%tl1649417045%_)
                                    (_%L16843%_ _%hd1652116835%_))
                                (_%__kont2062820629%_ _%L16841%_ _%L16843%_))
                              (_%__kont2063020631%_
                               _%tl1649417045%_
                               _%hd1649317042%_))
                          (_%__kont2063020631%_
                           _%tl1649417045%_
                           _%hd1649317042%_))))
                  (_%__kont2063020631%_ _%tl1649417045%_ _%hd1649317042%_))
              (_%__kont2063020631%_ _%tl1649417045%_ _%hd1649317042%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2063020631%_
                                                   _%tl1649417045%_
                                                   _%hd1649317042%_))))
                                          (_%__kont2063020631%_
                                           _%tl1649417045%_
                                           _%hd1649317042%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g1648616710%_)))))))))
          (let* ((_%g1641816432%_
                  (lambda (_%g1641916428%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1641916428%_)))
                 (_%g1641716474%_
                  (lambda (_%g1641916436%_)
                    (if (gx#stx-pair? _%g1641916436%_)
                        (let ((_%e1642116439%_ (gx#syntax-e _%g1641916436%_)))
                          (let ((_%hd1642216443%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1642116439%_)))
                                (_%tl1642316446%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1642116439%_))))
                            (if (gx#stx-pair? _%tl1642316446%_)
                                (let ((_%e1642416449%_
                                       (gx#syntax-e _%tl1642316446%_)))
                                  (let ((_%hd1642516453%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1642416449%_)))
                                        (_%tl1642616456%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1642416449%_))))
                                    (if (gx#stx-null? _%tl1642616456%_)
                                        ((lambda (_%L16459%_)
                                           (if (_%simple-quote?16414%_
                                                _%L16459%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L16459%_ '()))
                                               (_%generate16416%_
                                                _%L16459%_
                                                '0)))
                                         _%hd1642516453%_)
                                        (_%g1641816432%_ _%g1641916436%_))))
                                (_%g1641816432%_ _%g1641916436%_))))
                        (_%g1641816432%_ _%g1641916436%_)))))
            (_%g1641716474%_ _%stx16411%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay|
      (lambda (_%$stx17346%_)
        (let* ((_%__stx2074520746%_ _%$stx17346%_)
               (_%g1735117372%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2074520746%_))))
          (let ((_%__kont2074820749%_
                 (lambda (_%L17440%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _%L17440%_ '()))))
                (_%__kont2075020751%_
                 (lambda (_%L17399%_)
                   (cons (gx#datum->syntax '#f 'make-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%L17399%_ '())))
                               '())))))
            (let ((_%__match2076620767%_
                   (lambda (_%e1735417420%_
                            _%hd1735517424%_
                            _%tl1735617427%_
                            _%e1735717430%_
                            _%hd1735817434%_
                            _%tl1735917437%_)
                     (let ((_%L17440%_ _%hd1735817434%_))
                       (if (gx#stx-datum? _%L17440%_)
                           (_%__kont2074820749%_ _%L17440%_)
                           (_%__kont2075020751%_ _%hd1735817434%_))))))
              (if (gx#stx-pair? _%__stx2074520746%_)
                  (let ((_%e1735417420%_ (gx#syntax-e _%__stx2074520746%_)))
                    (let ((_%tl1735617427%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1735417420%_)))
                          (_%hd1735517424%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1735417420%_))))
                      (if (gx#stx-pair? _%tl1735617427%_)
                          (let ((_%e1735717430%_
                                 (gx#syntax-e _%tl1735617427%_)))
                            (let ((_%tl1735917437%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1735717430%_)))
                                  (_%hd1735817434%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1735717430%_))))
                              (if (gx#stx-null? _%tl1735917437%_)
                                  (_%__match2076620767%_
                                   _%e1735417420%_
                                   _%hd1735517424%_
                                   _%tl1735617427%_
                                   _%e1735717430%_
                                   _%hd1735817434%_
                                   _%tl1735917437%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g1735117372%_)))))
                          (let () (declare (not safe)) (_%g1735117372%_)))))
                  (let () (declare (not safe)) (_%g1735117372%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#cut|
      (lambda (_%stx17457%_)
        (letrec ((_%generate17460%_
                  (lambda (_%rest17579%_)
                    (let _%lp17582%_ ((_%rest17585%_ _%rest17579%_)
                                      (_%hd17587%_ '())
                                      (_%body17588%_ '()))
                      (let* ((_%__stx2080320804%_ _%rest17585%_)
                             (_%g1759117603%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx2080320804%_))))
                        (let ((_%__kont2080620807%_
                               (lambda (_%L17631%_ _%L17633%_)
                                 (let* ((_%__stx2078320784%_ _%L17633%_)
                                        (_%g1765017657%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx2078320784%_))))
                                   (let ((_%__kont2078620787%_
                                          (lambda ()
                                            (let ((_%arg17693%_ (gx#genident)))
                                              (_%lp17582%_
                                               _%L17631%_
                                               (cons _%arg17693%_ _%hd17587%_)
                                               (cons _%arg17693%_
                                                     _%body17588%_)))))
                                         (_%__kont2078820789%_
                                          (lambda ()
                                            (if (gx#stx-null? _%L17631%_)
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
                                                 _%L17633%_))))
                                         (_%__kont2079020791%_
                                          (lambda ()
                                            (_%lp17582%_
                                             _%L17631%_
                                             _%hd17587%_
                                             (cons _%L17633%_
                                                   _%body17588%_)))))
                                     (if (gx#identifier? _%__stx2078320784%_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core/sugar~Sugar-2[1]#_g21054_|
                                              _%__stx2078320784%_)
                                             (_%__kont2078620787%_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core/sugar~Sugar-2[1]#_g21055_|
                                                  _%__stx2078320784%_)
                                                 (_%__kont2078820789%_)
                                                 (_%__kont2079020791%_)))
                                         (_%__kont2079020791%_))))))
                              (_%__kont2080820809%_
                               (lambda ()
                                 (values (reverse _%hd17587%_)
                                         (reverse _%body17588%_)
                                         '#f))))
                          (if (gx#stx-pair? _%__stx2080320804%_)
                              (let ((_%e1759517621%_
                                     (gx#syntax-e _%__stx2080320804%_)))
                                (let ((_%tl1759717628%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1759517621%_)))
                                      (_%hd1759617625%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1759517621%_))))
                                  (_%__kont2080620807%_
                                   _%tl1759717628%_
                                   _%hd1759617625%_)))
                              (_%__kont2080820809%_))))))))
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
                            ((lambda (_%L17491%_)
                               (if (and (gx#stx-list? _%L17491%_)
                                        (not (gx#stx-null? _%L17491%_)))
                                   (let ((_g21056_
                                          (_%generate17460%_ _%L17491%_)))
                                     (begin
                                       (let ((_g21057_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21056_)
                                                    (##vector-length _g21056_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21057_ 3)))
                                             (error "Context expects 3 values"
                                                    _g21057_)))
                                       (let ((_%hd17504%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21056_ 0)))
                                             (_%body17506%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21056_ 1)))
                                             (_%tail?17507%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g21056_ 2))))
                                         (let* ((_%g1750917517%_
                                                 (lambda (_%g1751017513%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g1751017513%_)))
                                                (_%g1750817571%_
                                                 (lambda (_%g1751017521%_)
                                                   ((lambda (_%L17524%_)
                                                      (let* ((_%g1753717545%_
                                                              (lambda (_%g1753817541%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g1753817541%_)))
                     (_%g1753617567%_
                      (lambda (_%g1753817549%_)
                        ((lambda (_%L17552%_)
                           (if _%tail?17507%_
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%L17524%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'apply)
                                                       _%L17552%_)
                                                 '())))
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%L17524%_ (cons _%L17552%_ '())))))
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
